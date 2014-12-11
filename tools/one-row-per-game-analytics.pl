#!/usr/bin/perl
use warnings;
use strict;
use JSON 'decode_json';
use JSON::Parse 'parse_json';
use Data::Dumper;
use JSON::Parse 'valid_json';
use PerlIO::gzip;

## This script should be placed in the same folder with a bunch of .gz files downloaded from GameAnalytics
## for the WordSnack game. It will print out a .csv that some may find useful for analyzing things in
## the spreadsheet program of your choice. Enjoy.

#USER-SETTABLE VARIABLES
# For a full dump of the raw inputted JSON, unprocessed except by Dumper
my $RAW_DEBUG="no";
# For a full dump of each session we've imported and stored, in Dumper format
my $DEBUG="no";
#For a formatted print for import into a spreadsheet
my $FORMATTED_PRINT="yes";

#For matching Customer Names to Numbers
my %customerDict = (
	'1' => 'Fred',
	'2' => 'Kelvin',
	'3' => 'Spike',
	'4' => 'Stella',
	'5' => 'Meghan');

# Data structures to keep track of data

my @data; # Raw lines of data from the JSON files
my $dir = "."; # For now just the current dir. Probably this will be an argument in the future.
#Loop through the JSON files in the current dir and gather data
opendir(DIR, $dir) or die $!; #Open the directory
while (my $file = readdir(DIR)) {
  if ($file =~ /.json/) { #all JSON files, compressed or not
    if ($file =~ /\.gz/) {
      open ( FILE, "<:gzip", "$dir/$file") || die "Couldn't open gzipped $file: $!\n";
    }
    else {
      open ( FILE, "$dir/$file") || die "Couldn't open $file: $!\n";
    }
#    print "Reading from " . $file . "... \n";
    # Go through each line in the file...
    while (my $line = <FILE>) {
      if ( valid_json($line) ) { #Sanity-check for non-empty line and probably data we want
        my $tmpdata = parse_json($line);
        #print Dumper($tmpdata);
        push(@data, $tmpdata );
      }
    }
    close(FILE);
  }
}

# OK, now we have our data. Now let's walk through it and grab what we need
# First let's build up info about each user - more than we need, why not?
# Question: How to tell what a unique game is?
# Hypothesis: combination of session_id and timestamp
my %users; #This will store data about our users for lookup at printout time
my %sessions; #This will store data for our sessions - a hashtable of hashtables where the key is the session_id and the value is another hash (reference, internal)
my %games; # This will store unique games. In progress.
foreach my $event (@data) {
  #USER DATA GATHERING
  if (my $userID = $event->{'data'}{'user_id'}) { # This is just for safety - we should ALWAYS have a user_id
    if (my $desired_data = $event->{'user_meta'}{'platform'}) { $users{$userID}{'platform'} = $desired_data; }
    if (my $desired_data = $event->{'user_meta'}{'device'}) { $users{$userID}{'device'} = $desired_data; }
    if (my $desired_data = $event->{'user_meta'}{'os_major'}) { $users{$userID}{'osMajor'} = $desired_data; }
    if (my $desired_data = $event->{'user_meta'}{'os_minor'}) { $users{$userID}{'osMinor'} = $desired_data; }
    if ($event->{'data'}{'message'} ) { # Another way of getting platform
      if ( $event->{'data'}{'message'} =~ /os:(.*):/ ) { $users{$userID}{'platform'} = $1; }
    }
  }

  #SESSION INFO GATHERING - each session should be unique as long as it's from rc1 or rc2, so check
  if (my ($build) = $event->{'data'}{'build'} =~ /1\.0-rc\d/) {
    if (my $session_id = $event->{'data'}{'session_id'}) { # This is just for safety - we should ALWAYS have a session_id
        if (my $desired_data = $event->{'arrival_ts'}) {$sessions{$session_id}{'timestamp'} = $desired_data; } #Arrival time
        if (my $desired_data = $event->{'data'}{'user_id'}) { $sessions{$session_id}{'userID'} = $desired_data; } #How to tie a game to a user
        if ($event->{'data'}{'event_id'}) {
          if ($event->{'data'}{'event_id'} eq "mode") {
            if ($sessions{$session_id}{'mode'}) {print "Danger. Overwriting mode " . $sessions{$session_id}{'mode'} . " with " . $event->{'data'}{'value'} . " in session_id " . $session_id . "\n";}
            if ($event->{'data'}{'value'} eq "0") {$sessions{$session_id}{'mode'} = "Casual Lunch"; }
            if ($event->{'data'}{'value'} eq "1") {$sessions{$session_id}{'mode'} = "Dinner Rush"; }
          }
          if ($event->{'data'}{'event_id'} eq "score") { $sessions{$session_id}{'score'} = $event->{'data'}{'value'}; }
          if ($event->{'data'}{'event_id'} eq "character1") { $sessions{$session_id}{'customer1'} = $customerDict{$event->{'data'}{'value'}}; }
          if ($event->{'data'}{'event_id'} eq "character1Score") { $sessions{$session_id}{'customer1Score'} = $event->{'data'}{'value'}; }
          if ($event->{'data'}{'event_id'} eq "character2") { $sessions{$session_id}{'customer2'} = $customerDict{$event->{'data'}{'value'}}; }
          if ($event->{'data'}{'event_id'} eq "character2Score") { $sessions{$session_id}{'customer2Score'} = $event->{'data'}{'value'}; }
          if ($event->{'data'}{'event_id'} eq "trashed_letters") { $sessions{$session_id}{'trashedLetters'} = $event->{'data'}{'value'}; }
        }
        if ($event->{'data'}{'message'}) {
          if ($event->{'data'}{'message'} =~ /^1,([a-z]+ \d+ \d+ \d+ \d+.*) /) { 
            if ($sessions{$session_id}{'wordsFedToCustomer1'}) { print "Danger. Overwriting\n". $sessions{$session_id}{'wordsFedToCustomer1'} . "\nin session_id " . $session_id . " with\n" . $event->{'data'}{'message'} . "\n";}
            my $words = $1;
            $words =~ s/,/|/g;
            $sessions{$session_id}{'wordsFedToCustomer1'} = $words;
          }
          if ($event->{'data'}{'message'} =~ /^2,([a-z]+ \d+ \d+ \d+ \d+.*) /) {
            if ($sessions{$session_id}{'wordsFedToCustomer2'}) { print "Danger. Overwriting wordsFedToCustomer2 in session_id " . $session_id . "\n";}
            my $words = $1;
            $words =~ s/,/|/g;
            $sessions{$session_id}{'wordsFedToCustomer2'} = $words;
        }
      }
    }
  }
}


#print out the results if debugging is on
if ($DEBUG eq "yes") {
  foreach my $game (%sessions) {
    if ($sessions{$game}{'score'}) {
      print Dumper($sessions{$game});
    }
  }
}

if ($FORMATTED_PRINT eq "yes") {

  print "Timestamp,PlayerID,Platform,Mode,Total Score,Customer 1 Name, Customer 1 Score, Words Fed to Customer 1, Customer 2 Name, Customer 2 Score, Words Fed to Customer 2,Trashed Letter Count\n";

  foreach my $game (%sessions) {
    if ($sessions{$game}{'score'} &&  $sessions{$game}{'wordsFedToCustomer2'} &&  $sessions{$game}{'wordsFedToCustomer1'}) {
      if ($sessions{$game}{'timestamp'}) { print $sessions{$game}{'timestamp'} . ","; } else { print "Missing timestamp!\n"; }
      print $sessions{$game}{'userID'} . ",";
      print $users{$sessions{$game}{'userID'}}{'platform'} . ",";
      print $sessions{$game}{'mode'} . ",";
      print $sessions{$game}{'score'} . ",";
      print $sessions{$game}{'customer1'} . ",";
      print $sessions{$game}{'customer1Score'} . ",";
      print $sessions{$game}{'wordsFedToCustomer1'} . ",";
      print $sessions{$game}{'customer2'} . ",";
      print $sessions{$game}{'customer2Score'} . ",";
      print $sessions{$game}{'wordsFedToCustomer2'} . ",";
      print $sessions{$game}{'trashedLetters'};
      print "\n";
    }
  }
}

#This will print out all of the input JSON, unprocessed except by Dumper
if ($RAW_DEBUG eq "yes") {
  print "OK, dumping data...";
  print Dumper(@data);
}
