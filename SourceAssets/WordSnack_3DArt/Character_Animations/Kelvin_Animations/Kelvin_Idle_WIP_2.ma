//Maya ASCII 2015 scene
//Name: Kelvin_Idle_WIP_2.ma
//Last modified: Mon, Oct 20, 2014 02:50:35 PM
//Codeset: UTF-8
file -rdi 1 -ns "Kelvin_v1_RigFinal" -rfn "Kelvin_v1_RigFinalRN" -op "v=0;" "/Users/publicuser/Desktop/Kelvin Animation/Kelvin Project Folder/Kelvin_v1_RigFinal.ma";
file -rdi 2 -ns "Kelvin_v1_UVModelFinal" -rfn "Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN"
		 "/Users/publicuser/Desktop/Kelvin_Rig_v2//Kelvin_v1_UVModelFinal.ma";
file -rdi 2 -ns "Kelvin_v1_UVModelFinalHead" -rfn "Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalHeadRN"
		 "/Users/michaelbarrow/Desktop/Kelvin_V2/Kelvin_v1_UVModelFinalHead.ma";
file -r -ns "Kelvin_v1_RigFinal" -dr 1 -rfn "Kelvin_v1_RigFinalRN" -op "v=0;" "/Users/publicuser/Desktop/Kelvin Animation/Kelvin Project Folder/Kelvin_v1_RigFinal.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
requires -nodeType "RenderMan" "RenderMan_for_Maya" "5.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.024784492959369 5.7092128233898887 18.019222146649486 ;
	setAttr ".r" -type "double3" 0.86164727037718514 722.59999999999434 3.1092111469984692e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 16.035242475804154;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.925185970386736 4.139973851966273 2.6406514702497521 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  -0.54011101 0 -0.15912746 
		-0.43208891 0 -0.15912746 -0.32406667 0 -0.15912746 -0.21604443 0 -0.15912746 -0.10802221 
		0 -0.15912746 0 0 -0.15912746 0.10802224 0 -0.15912746 0.21604443 0 -0.15912746 0.32406667 
		0 -0.15912746 0.43208891 0 -0.15912746 0.54011101 0 -0.15912746 -0.54011101 0 -0.12730201 
		-0.43208891 0 -0.12730201 -0.32406667 0 -0.12730201 -0.21604443 0 -0.12730201 -0.10802221 
		0 -0.12730201 0 0 -0.12730201 0.10802224 0 -0.12730201 0.21604443 0 -0.12730201 0.32406667 
		0 -0.12730201 0.43208891 0 -0.12730201 0.54011101 0 -0.12730201 -0.54011101 0 -0.095476508 
		-0.43208891 0 -0.095476508 -0.32406667 0 -0.095476508 -0.21604443 0 -0.095476508 
		-0.10802221 0 -0.095476508 0 0 -0.095476508 0.10802224 0 -0.095476508 0.21604443 
		0 -0.095476508 0.32406667 0 -0.095476508 0.43208891 0 -0.095476508 0.54011101 0 -0.095476508 
		-0.54011101 0 -0.063650995 -0.43208891 0 -0.063650995 -0.32406667 0 -0.063650995 
		-0.21604443 0 -0.063650995 -0.10802221 0 -0.063650995 0 0 -0.063650995 0.10802224 
		0 -0.063650995 0.21604443 0 -0.063650995 0.32406667 0 -0.063650995 0.43208891 0 -0.063650995 
		0.54011101 0 -0.063650995 -0.54011101 0 -0.031825498 -0.43208891 0 -0.031825498 -0.32406667 
		0 -0.031825498 -0.21604443 0 -0.031825498 -0.10802221 0 -0.031825498 0 0 -0.031825498 
		0.10802224 0 -0.031825498 0.21604443 0 -0.031825498 0.32406667 0 -0.031825498 0.43208891 
		0 -0.031825498 0.54011101 0 -0.031825498 -0.54011101 0 0 -0.43208891 0 0 -0.32406667 
		0 0 -0.21604443 0 0 -0.10802221 0 0 0 0 0 0.10802224 0 0 0.21604443 0 0 0.32406667 
		0 0 0.43208891 0 0 0.54011101 0 0 -0.54011101 0 0.031825498 -0.43208891 0 0.031825498 
		-0.32406667 0 0.031825498 -0.21604443 0 0.031825498 -0.10802221 0 0.031825498 0 0 
		0.031825498 0.10802224 0 0.031825498 0.21604443 0 0.031825498 0.32406667 0 0.031825498 
		0.43208891 0 0.031825498 0.54011101 0 0.031825498 -0.54011101 0 0.063650995 -0.43208891 
		0 0.063650995 -0.32406667 0 0.063650995 -0.21604443 0 0.063650995 -0.10802221 0 0.063650995 
		0 0 0.063650995 0.10802224 0 0.063650995 0.21604443 0 0.063650995 0.32406667 0 0.063650995 
		0.43208891 0 0.063650995 0.54011101 0 0.063650995 -0.54011101 0 0.095476508 -0.43208891 
		0 0.095476508 -0.32406667 0 0.095476508 -0.21604443 0 0.095476508 -0.10802221 0 0.095476508 
		0 0 0.095476508 0.10802224 0 0.095476508 0.21604443 0 0.095476508 0.32406667 0 0.095476508 
		0.43208891 0 0.095476508 0.54011101 0 0.095476508 -0.54011101 0 0.12730198 -0.43208891 
		0 0.12730198 -0.32406667 0 0.12730198 -0.21604443 0 0.12730198 -0.10802221 0 0.12730198 
		0 0 0.12730198 0.10802224 0 0.12730198 0.21604443 0 0.12730198 0.32406667 0 0.12730198 
		0.43208891 0 0.12730198 0.54011101 0 0.12730198 -0.54011101 0 0.15912746 -0.43208891 
		0 0.15912746 -0.32406667 0 0.15912746 -0.21604443 0 0.15912746 -0.10802221 0 0.15912746 
		0 0 0.15912746 0.10802224 0 0.15912746 0.21604443 0 0.15912746 0.32406667 0 0.15912746 
		0.43208891 0 0.15912746 0.54011101 0 0.15912746;
createNode transform -n "camera1";
	setAttr ".t" -type "double3" -0.22877600296581535 8.4124412766486643 14.626838009962318 ;
	setAttr ".r" -type "double3" -7.2000000000001902 4.5413675692404819e-14 1.8441738448134078e-17 ;
createNode camera -n "cameraShape1" -p "camera1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 19.64482740109349;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 2 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 140 ".lnk";
	setAttr -s 138 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Kelvin_v1_RigFinalRN";
	setAttr -s 220 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Kelvin_v1_RigFinalRN"
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalHeadRN" 0
		"Kelvin_v1_RigFinalRN" 0
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN" 0
		"Kelvin_v1_RigFinalRN" 319
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" "rotateZ" 
		" -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_ikHandle1" 
		"translate" " -type \"double3\" -0.46971445270877266 3.48252437008279969 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_ikHandle1" 
		"rotate" " -type \"double3\" 89.99999999999998579 0 102.06864466127115065"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translate" " -type \"double3\" 0 -0.00017458037365170043 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"visibility" " -av 1"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translate" " -type \"double3\" -4.01340932269948247 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotate" " -type \"double3\" -26.4254243949533496 0.30581319857580896 91.68993955523652062"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_ikHandle1" 
		"translate" " -type \"double3\" -4.04346001697801682 4.09185489816637293 -2.72720189785559164"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_ikHandle1" 
		"rotate" " -type \"double3\" 147.51915851378410593 30.89780385770143667 161.89745415667539419"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translate" " -type \"double3\" 2.80829121101461077 -0.25433482088008807 -0.32356150590828658"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotate" " -type \"double3\" -18.53552689515436924 -4.5220972688098815 -93.09554624212459828"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_ikHandle1" 
		"translate" " -type \"double3\" 2.82823546696163808 3.54919522851454428 -2.45250607548898181"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_ikHandle1" 
		"rotate" " -type \"double3\" 34.47226314336219133 33.15734783167977184 20.58175217018718683"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_splineIKhandle" 
		"translate" " -type \"double3\" 0 7.10259359108637423 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_splineIKhandle" 
		"rotate" " -type \"double3\" 0 0 89.99999999999998579"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_ikHandle1" 
		"translate" " -type \"double3\" 0.092494648492653653 3.6017138379866509 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_ikHandle1" 
		"rotate" " -type \"double3\" 89.99999999999998579 0 89.15032463198002688"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translate" " -type \"double3\" 0.3559602132290059 0.16783716945083949 -0.21177292106665338"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotate" " -type \"double3\" 0 -3.88443028902767207 14.05459296667615732"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist" 
		"rotate" " -type \"double3\" 0 33.60081403124312516 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control" 
		"rotate" " -type \"double3\" -6.93694007259075196 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_ikHandle1" 
		"translate" " -type \"double3\" 0.35460732574783282 3.66671227181504111 -0.68707801966340121"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_ikHandle1" 
		"rotate" " -type \"double3\" 92.01362597275077349 13.04220041061560487 98.8554153191966094"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translate" " -type \"double3\" -0.49318826623167639 0.16528891191006254 -0.2853034592588361"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotate" " -type \"double3\" -12.54628236582726863 -41.19713425135105211 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist" 
		"rotate" " -type \"double3\" 0 1.76983529081648228 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control" 
		"rotate" " -type \"double3\" -7.62296067968772473 0 0"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_ikHandle1" 
		"translate" " -type \"double3\" -0.70259383144127607 3.93038472793886395 -0.76085900836289255"
		
		2 "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_ikHandle1" 
		"rotate" " -type \"double3\" 90.03253120327276804 20.06769684347910498 90.0948070988267915"
		
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[1]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[2]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[3]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[4]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.rotateX" "Kelvin_v1_RigFinalRN.placeHolderList[5]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.rotateY" "Kelvin_v1_RigFinalRN.placeHolderList[6]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.rotateZ" "Kelvin_v1_RigFinalRN.placeHolderList[7]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[8]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.scaleX" "Kelvin_v1_RigFinalRN.placeHolderList[9]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.scaleY" "Kelvin_v1_RigFinalRN.placeHolderList[10]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character.scaleZ" "Kelvin_v1_RigFinalRN.placeHolderList[11]" 
		""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Display" 
		"Kelvin_v1_RigFinalRN.placeHolderList[12]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Spine_FKIK" 
		"Kelvin_v1_RigFinalRN.placeHolderList[13]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Head_FKIK" 
		"Kelvin_v1_RigFinalRN.placeHolderList[14]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Head_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[15]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail3_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[16]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail2_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[17]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[18]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[19]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[20]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[21]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[22]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[23]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[24]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[25]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[26]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[27]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[28]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[29]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[30]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[31]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[32]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[33]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[34]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[35]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[36]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[37]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[38]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[39]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[40]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[41]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[42]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[43]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[44]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[45]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[46]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[47]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[48]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[49]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[50]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[51]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[52]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[53]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[54]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[55]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[56]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[57]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[58]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[59]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[60]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[61]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[62]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[63]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[64]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[65]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[66]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[67]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[68]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[69]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[70]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[71]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[72]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[73]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[74]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[75]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[76]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[77]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[78]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[79]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[80]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[81]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[82]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[83]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[84]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[85]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[86]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[87]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[88]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[89]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[90]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[91]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[92]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[93]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[94]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[95]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[96]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[97]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[98]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[99]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[100]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[101]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[102]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[103]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[104]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[105]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[106]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[107]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[108]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[109]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[110]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[111]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[112]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[113]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[114]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[115]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[116]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[117]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[118]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[119]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[120]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[121]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[122]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[123]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[124]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[125]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[126]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[127]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[128]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[129]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[130]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[131]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[132]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[133]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[134]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[135]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[136]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[137]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[138]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[139]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[140]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[141]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[142]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[143]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[144]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[145]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[146]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[147]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[148]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[149]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[150]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[151]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[152]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[153]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[154]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[155]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[156]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[157]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[158]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[159]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[160]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[161]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[162]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[163]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[164]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[165]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[166]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[167]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[168]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[169]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[170]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[171]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[172]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[173]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[174]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[175]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[176]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[177]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[178]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[179]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[180]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[181]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[182]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[183]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[184]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[185]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[186]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[187]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[188]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[189]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[190]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[191]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[192]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[193]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[194]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[195]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[196]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[197]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[198]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[199]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[200]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[201]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[202]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[203]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[204]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[205]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[206]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[207]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[208]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[209]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[210]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[211]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[212]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[213]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[214]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[215]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[216]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[217]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[218]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[219]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[220]" ""
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN" 4
		2 "|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scaleZ" " -av";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode RenderMan -s -n "renderManGlobals";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__toropt___renderDataCleanupJob" -ln "rman__toropt___renderDataCleanupJob" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___shaderCleanupJob" -ln "rman__toropt___shaderCleanupJob" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___textureCleanupJob" -ln "rman__toropt___textureCleanupJob" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___ribCleanupJob" -ln "rman__toropt___ribCleanupJob" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___ribFlatten" -ln "rman__toropt___ribFlatten" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___renderDataCleanupFrame" -ln "rman__toropt___renderDataCleanupFrame" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___textureCleanupFrame" -ln "rman__toropt___textureCleanupFrame" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___ribCleanupFrame" -ln "rman__toropt___ribCleanupFrame" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__toropt___primaryCamera" -ln "rman__toropt___primaryCamera" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__toropt___enableRenderLayers" -ln "rman__toropt___enableRenderLayers" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__toropt___renderLayer" -ln "rman__toropt___renderLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__toropt___motionBlurType" -ln "rman__toropt___motionBlurType" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionSamples" -ln "rman__torattr___motionSamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___shutterAngle" -ln "rman__toropt___shutterAngle" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__toropt___shutterTiming" -ln "rman__toropt___shutterTiming" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__toropt___cacheCrew" -ln "rman__toropt___cacheCrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__toropt___renumber" -ln "rman__toropt___renumber" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___referenceFrame" -ln "rman__torattr___referenceFrame" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___referenceCamera" -ln "rman__torattr___referenceCamera" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__toropt___renumberStart" -ln "rman__toropt___renumberStart" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___renumberBy" -ln "rman__toropt___renumberBy" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___lazyRibGen" -ln "rman__toropt___lazyRibGen" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___lazyRender" -ln "rman__toropt___lazyRender" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___bakeMode" -ln "rman__toropt___bakeMode" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__toropt___furChunkSize" -ln "rman__toropt___furChunkSize" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___enableRifs" -ln "rman__torattr___enableRifs" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___mapResolution" -ln "rman__torattr___mapResolution" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__torattr___mapResolution0" -ln "rman__torattr___mapResolution0" 
		-dv -1 -at "long" -p "rman__torattr___mapResolution";
	addAttr -ci true -k true -sn "rman__torattr___mapResolution1" -ln "rman__torattr___mapResolution1" 
		-dv -1 -at "long" -p "rman__torattr___mapResolution";
	addAttr -ci true -k true -sn "rman__torattr___depthOfField" -ln "rman__torattr___depthOfField" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___cameraBlur" -ln "rman__torattr___cameraBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___frontPlane" -ln "rman__torattr___frontPlane" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___backPlane" -ln "rman__torattr___backPlane" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___crop" -ln "rman__torattr___crop" -dv 
		-1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passExtFormat" -ln "rman__torattr___passExtFormat" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passNameFormat" -ln "rman__torattr___passNameFormat" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___previewPass" -ln "rman__torattr___previewPass" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___defaultSurfaceShader" -ln "rman__torattr___defaultSurfaceShader" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___defaultDisplacementShader" -ln "rman__torattr___defaultDisplacementShader" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___defaultAtmosphereShader" -ln "rman__torattr___defaultAtmosphereShader" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___defaultInteriorShader" -ln "rman__torattr___defaultInteriorShader" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___outputSurfaceShaders" -ln "rman__torattr___outputSurfaceShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputDisplacementShaders" -ln "rman__torattr___outputDisplacementShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputLightShaders" -ln "rman__torattr___outputLightShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputVolumeShaders" -ln "rman__torattr___outputVolumeShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputImagerShaders" -ln "rman__torattr___outputImagerShaders" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__toropt___preFrameScript" -ln "rman__toropt___preFrameScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__toropt___postFrameScript" -ln "rman__toropt___postFrameScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___preRenderScript" -ln "rman__torattr___preRenderScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___postRenderScript" -ln "rman__torattr___postRenderScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___defaultRiOptionsScript" -ln "rman__torattr___defaultRiOptionsScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___defaultRiAttributesScript" -ln "rman__torattr___defaultRiAttributesScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___renderBeginScript" -ln "rman__torattr___renderBeginScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___transformBeginScript" -ln "rman__torattr___transformBeginScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___transformEndScript" -ln "rman__torattr___transformEndScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___postTransformScript" -ln "rman__torattr___postTransformScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___preShapeScript" -ln "rman__torattr___preShapeScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___postShapeScript" -ln "rman__torattr___postShapeScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cacheShapeScript" -ln "rman__torattr___cacheShapeScript" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___bakeChannels" -ln "rman__torattr___bakeChannels" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___bakeCrew" -ln "rman__torattr___bakeCrew" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___bakeOutputFile" -ln "rman__torattr___bakeOutputFile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___customShadingGroup" -ln "rman__torattr___customShadingGroup" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___shaderBindingStrength" -ln "rman__torattr___shaderBindingStrength" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___enableObjectInstancing" -ln "rman__torattr___enableObjectInstancing" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___impliedSSBakeMode" -ln "rman__torattr___impliedSSBakeMode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__toropt___JOBSTYLE" -ln "rman__toropt___JOBSTYLE" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__toropt___nativeShadingSupport" -ln "rman__toropt___nativeShadingSupport" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___deformationBlurStyle" -ln "rman__torattr___deformationBlurStyle" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___deformationBlurScale" -ln "rman__torattr___deformationBlurScale" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__torattr___enableMfcProcPrim" -ln "rman__torattr___enableMfcProcPrim" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___linearizeColors" -ln "rman__torattr___linearizeColors" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Camera_shutteropening" -ln "rman__riopt__Camera_shutteropening" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Camera_shutteropening0" -ln "rman__riopt__Camera_shutteropening0" 
		-dv -1 -at "float" -p "rman__riopt__Camera_shutteropening";
	addAttr -ci true -k true -sn "rman__riopt__Camera_shutteropening1" -ln "rman__riopt__Camera_shutteropening1" 
		-dv -1 -at "float" -p "rman__riopt__Camera_shutteropening";
	addAttr -ci true -k true -sn "rman__riopt__shading_directlightingsamples" -ln "rman__riopt__shading_directlightingsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__trace_maxdepth" -ln "rman__riopt__trace_maxdepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__trace_decimationrate" -ln "rman__riopt__trace_decimationrate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelVariance" -ln "rman__riopt___PixelVariance" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__bucket_order" -ln "rman__riopt__bucket_order" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize" -ln "rman__riopt__limits_bucketsize" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize0" -ln "rman__riopt__limits_bucketsize0" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize1" -ln "rman__riopt__limits_bucketsize1" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt__limits_gridsize" -ln "rman__riopt__limits_gridsize" 
		-dv -1 -at "long";
	addAttr -ci true -uac -k true -sn "rman__riopt__limits_zthreshold" -ln "rman__riopt__limits_zthreshold" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdr" -ln "rman__riopt__limits_zthresholdR" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdg" -ln "rman__riopt__limits_zthresholdG" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdb" -ln "rman__riopt__limits_zthresholdB" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -uac -k true -sn "rman__riopt__limits_othreshold" -ln "rman__riopt__limits_othreshold" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdr" -ln "rman__riopt__limits_othresholdR" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdg" -ln "rman__riopt__limits_othresholdG" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdb" -ln "rman__riopt__limits_othresholdB" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_vprelativeshadingrate" -ln "rman__riopt__limits_vprelativeshadingrate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__limits_threads" -ln "rman__riopt__limits_threads" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_texturememory" -ln "rman__riopt__limits_texturememory" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowtiles" -ln "rman__riopt__limits_deepshadowtiles" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowmemory" -ln "rman__riopt__limits_deepshadowmemory" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_geocachememory" -ln "rman__riopt__limits_geocachememory" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_radiositycachememory" -ln "rman__riopt__limits_radiositycachememory" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_proceduralmemory" -ln "rman__riopt__limits_proceduralmemory" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__limits_brickmemory" -ln "rman__riopt__limits_brickmemory" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Hider_name" -ln "rman__riopt__Hider_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution" -ln "rman__riopt__Format_resolution" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution0" -ln "rman__riopt__Format_resolution0" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution1" -ln "rman__riopt__Format_resolution1" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt__Format_pixelaspectratio" -ln "rman__riopt__Format_pixelaspectratio" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__hair_minwidth" -ln "rman__riopt__hair_minwidth" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__rib_compression" -ln "rman__riopt__rib_compression" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__rib_format" -ln "rman__riopt__rib_format" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__rib_precision" -ln "rman__riopt__rib_precision" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__statistics_endofframe" -ln "rman__riopt__statistics_endofframe" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__statistics_filename" -ln "rman__riopt__statistics_filename" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__statistics_xmlfilename" -ln "rman__riopt__statistics_xmlfilename" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riattr__dice_referencecamera" -ln "rman__riattr__dice_referencecamera" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riattr__dice_minlength" -ln "rman__riattr__dice_minlength" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_samplemotion" -ln "rman__riattr__trace_samplemotion" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__volume_depthrelativeshadingrate" -ln "rman__riattr__volume_depthrelativeshadingrate" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riattr__volume_depthinterpolation" -ln "rman__riattr__volume_depthinterpolation" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riattr___MotionFactor" -ln "rman__riattr___MotionFactor" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr___FocusFactor" -ln "rman__riattr___FocusFactor" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxdiffusedepth" -ln "rman__riattr__trace_maxdiffusedepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxspeculardepth" -ln "rman__riattr__trace_maxspeculardepth" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riattr__displacementbound_coordinatesystem" 
		-ln "rman__riattr__displacementbound_coordinatesystem" -dt "string";
	addAttr -ci true -k true -sn "rman__riattr__displacementbound_sphere" -ln "rman__riattr__displacementbound_sphere" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_bias" -ln "rman__riattr__trace_bias" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__stochastic_sigma" -ln "rman__riattr__stochastic_sigma" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Hider_jitter" -ln "rman__riopt__Hider_jitter" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Hider_sigma" -ln "rman__riopt__Hider_sigma" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Hider_sigmablur" -ln "rman__riopt__Hider_sigmablur" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__Hider_samplemode" -ln "rman__riopt__Hider_samplemode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Hider_integrationmode" -ln "rman__riopt__Hider_integrationmode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Hider_minsamples" -ln "rman__riopt__Hider_minsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Hider_maxsamples" -ln "rman__riopt__Hider_maxsamples" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__EnvLight" -ln "rman__EnvLight" -dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:job";
	setAttr ".rman__torattr___class" -type "string" "Job";
	setAttr ".rman__torattr___task" -type "string" "job";
	setAttr -k on ".rman__toropt___renderDataCleanupJob" 0;
	setAttr -k on ".rman__toropt___shaderCleanupJob" 0;
	setAttr -k on ".rman__toropt___textureCleanupJob" 0;
	setAttr -k on ".rman__toropt___ribCleanupJob" 0;
	setAttr -k on ".rman__toropt___ribFlatten" 0;
	setAttr -k on ".rman__toropt___renderDataCleanupFrame" 0;
	setAttr -k on ".rman__toropt___textureCleanupFrame" 0;
	setAttr -k on ".rman__toropt___ribCleanupFrame" 0;
	setAttr ".rman__toropt___primaryCamera" -type "string" "";
	setAttr -k on ".rman__toropt___enableRenderLayers" 0;
	setAttr ".rman__toropt___renderLayer" -type "string" "";
	setAttr ".rman__toropt___motionBlurType" -type "string" "frame";
	setAttr -k on ".rman__torattr___motionSamples" 2;
	setAttr -k on ".rman__toropt___shutterAngle" 80;
	setAttr ".rman__toropt___shutterTiming" -type "string" "frameOpen";
	setAttr ".rman__toropt___cacheCrew" -type "string" "";
	setAttr -k on ".rman__toropt___renumber" 0;
	setAttr -k on ".rman__torattr___referenceFrame" 0;
	setAttr ".rman__torattr___referenceCamera" -type "string" "";
	setAttr -k on ".rman__toropt___renumberStart" 1;
	setAttr -k on ".rman__toropt___renumberBy" 1;
	setAttr -k on ".rman__toropt___lazyRibGen" 0;
	setAttr -k on ".rman__toropt___lazyRender" 0;
	setAttr -k on ".rman__toropt___bakeMode" 0;
	setAttr -k on ".rman__toropt___furChunkSize" 10000;
	setAttr -k on ".rman__torattr___enableRifs" 1;
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___rayTracing" 1;
	setAttr -k on ".rman__torattr___mapResolution" -type "long2" 0 0 ;
	setAttr -k on ".rman__torattr___depthOfField" 0;
	setAttr -k on ".rman__torattr___cameraBlur" 0;
	setAttr -k on ".rman__torattr___frontPlane" 0;
	setAttr -k on ".rman__torattr___backPlane" 0;
	setAttr ".rman__torattr___passCommand" -type "string" "";
	setAttr -k on ".rman__torattr___crop" 0;
	setAttr ".rman__torattr___passExtFormat" -type "string" "";
	setAttr ".rman__torattr___passNameFormat" -type "string" "";
	setAttr -k on ".rman__torattr___previewPass" 0;
	setAttr ".rman__torattr___defaultSurfaceShader" -type "string" "defaultsurface";
	setAttr ".rman__torattr___defaultDisplacementShader" -type "string" "";
	setAttr ".rman__torattr___defaultAtmosphereShader" -type "string" "";
	setAttr ".rman__torattr___defaultInteriorShader" -type "string" "";
	setAttr -k on ".rman__torattr___outputSurfaceShaders" 1;
	setAttr -k on ".rman__torattr___outputDisplacementShaders" 1;
	setAttr -k on ".rman__torattr___outputLightShaders" 1;
	setAttr -k on ".rman__torattr___outputVolumeShaders" 1;
	setAttr -k on ".rman__torattr___outputImagerShaders" 1;
	setAttr ".rman__toropt___preFrameScript" -type "string" "";
	setAttr ".rman__toropt___postFrameScript" -type "string" "";
	setAttr ".rman__torattr___preRenderScript" -type "string" "";
	setAttr ".rman__torattr___postRenderScript" -type "string" "";
	setAttr ".rman__torattr___defaultRiOptionsScript" -type "string" "";
	setAttr ".rman__torattr___defaultRiAttributesScript" -type "string" "";
	setAttr ".rman__torattr___renderBeginScript" -type "string" "rmanTimeStampScript";
	setAttr ".rman__torattr___transformBeginScript" -type "string" "";
	setAttr ".rman__torattr___transformEndScript" -type "string" "";
	setAttr ".rman__torattr___postTransformScript" -type "string" "";
	setAttr ".rman__torattr___preShapeScript" -type "string" "";
	setAttr ".rman__torattr___postShapeScript" -type "string" "";
	setAttr ".rman__torattr___cacheShapeScript" -type "string" "";
	setAttr ".rman__torattr___bakeChannels" -type "string" "";
	setAttr ".rman__torattr___bakeCrew" -type "string" "";
	setAttr ".rman__torattr___bakeOutputFile" -type "string" "";
	setAttr ".rman__torattr___customShadingGroup" -type "string" "";
	setAttr -k on ".rman__torattr___shaderBindingStrength" 1;
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___enableObjectInstancing" 1;
	setAttr ".rman__torattr___impliedSSBakeMode" -type "string" "SSDiffuse";
	setAttr ".rman__toropt___JOBSTYLE" -type "string" "";
	setAttr -k on ".rman__toropt___nativeShadingSupport" 0;
	setAttr ".rman__torattr___deformationBlurStyle" -type "string" "none";
	setAttr -k on ".rman__torattr___deformationBlurScale" 1;
	setAttr -k on ".rman__torattr___enableMfcProcPrim" 0;
	setAttr -k on ".rman__torattr___linearizeColors" 1;
	setAttr -k on ".rman__riopt__Camera_shutteropening" -type "float2" 0 1 ;
	setAttr -k on ".rman__riopt__shading_directlightingsamples" 100;
	setAttr -k on ".rman__riopt__trace_maxdepth" 10;
	setAttr -k on ".rman__riopt__trace_decimationrate" 1;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 3 3 ;
	setAttr -k on ".rman__riopt___PixelVariance" 9.9999997473787516e-05;
	setAttr ".rman__riopt__bucket_order" -type "string" "horizontal";
	setAttr -k on ".rman__riopt__limits_bucketsize" -type "long2" 16 16 ;
	setAttr -k on ".rman__riopt__limits_gridsize" 256;
	setAttr -k on ".rman__riopt__limits_zthreshold" -type "float3" 0.99599999 0.99599999 
		0.99599999 ;
	setAttr -k on ".rman__riopt__limits_othreshold" -type "float3" 0.99599999 0.99599999 
		0.99599999 ;
	setAttr -k on ".rman__riopt__limits_vprelativeshadingrate" 1;
	setAttr -k on ".rman__riopt__limits_threads" 0;
	setAttr -k on ".rman__riopt__limits_texturememory" 102400;
	setAttr -k on ".rman__riopt__limits_deepshadowtiles" 1000;
	setAttr -k on ".rman__riopt__limits_deepshadowmemory" 102400;
	setAttr -k on ".rman__riopt__limits_geocachememory" 204800;
	setAttr -k on ".rman__riopt__limits_radiositycachememory" 102400;
	setAttr -k on ".rman__riopt__limits_proceduralmemory" 0;
	setAttr -k on ".rman__riopt__limits_brickmemory" 10240;
	setAttr ".rman__riopt__Hider_name" -type "string" "hidden";
	setAttr -k on ".rman__riopt__Format_resolution" -type "long2" 960 540 ;
	setAttr -k on ".rman__riopt__Format_pixelaspectratio" 1;
	setAttr -k on ".rman__riopt__hair_minwidth" 0.5;
	setAttr ".rman__riopt__rib_compression" -type "string" "none";
	setAttr ".rman__riopt__rib_format" -type "string" "ascii";
	setAttr ".rman__riopt__rib_precision" -type "string" "6";
	setAttr -k on ".rman__riopt__statistics_endofframe" 0;
	setAttr ".rman__riopt__statistics_filename" -type "string" "stdout";
	setAttr ".rman__riopt__statistics_xmlfilename" -type "string" "[AssetRef -cls rmanstat]";
	setAttr ".rman__riattr__dice_referencecamera" -type "string" "worldcamera";
	setAttr -k on ".rman__riattr__trace_samplemotion" 1;
	setAttr -k on ".rman__riattr___ShadingRate" 1;
	setAttr -k on ".rman__riattr__volume_depthrelativeshadingrate" 3;
	setAttr ".rman__riattr__volume_depthinterpolation" -type "string" "constant";
	setAttr -k on ".rman__riattr___MotionFactor" 3;
	setAttr -k on ".rman__riattr___FocusFactor" 3;
	setAttr -k on ".rman__riattr__trace_maxdiffusedepth" 1;
	setAttr -k on ".rman__riattr__trace_maxspeculardepth" 2;
	setAttr ".rman__riattr__displacementbound_coordinatesystem" -type "string" "shader";
	setAttr -k on ".rman__riattr__displacementbound_sphere" 0;
	setAttr -k on ".rman__riattr__trace_bias" 0.0010000000474974513;
	setAttr -k on ".rman__riattr__stochastic_sigma" 1;
	setAttr -k on ".rman__riopt__Hider_jitter" 1;
	setAttr -k on ".rman__riopt__Hider_sigma" 0;
	setAttr -k on ".rman__riopt__Hider_sigmablur" 1;
	setAttr ".rman__riopt__Hider_samplemode" -type "string" "adaptive";
	setAttr ".rman__riopt__Hider_integrationmode" -type "string" "distribution";
	setAttr -k on ".rman__riopt__Hider_minsamples" 2;
	setAttr -k on ".rman__riopt__Hider_maxsamples" 0;
	setAttr ".rman__EnvLight" -type "string" "";
	setAttr -s 18 ".p";
createNode RenderMan -s -n "rmanFinalGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___depthOfField" -ln "rman__torattr___depthOfField" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___CropWindow" -ln "rman__riopt___CropWindow" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX" -ln "rman__riopt___CropWindowX" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX0" -ln "rman__riopt___CropWindowX0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX1" -ln "rman__riopt___CropWindowX1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY" -ln "rman__riopt___CropWindowY" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY0" -ln "rman__riopt___CropWindowY0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY1" -ln "rman__riopt___CropWindowY1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -h true -sn "rman__riopt__photon_lifetime" -ln "rman__riopt__photon_lifetime" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__photon_emit" -ln "rman__riopt__photon_emit" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riattr__photon_causticmap" -ln "rman__riattr__photon_causticmap" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riattr__photon_globalmap" -ln "rman__riattr__photon_globalmap" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Final";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___depthOfField" 1;
	setAttr -k on ".rman__riopt___CropWindowX" -type "float2" 0 1 ;
	setAttr -k on ".rman__riopt___CropWindowY" -type "float2" 0 1 ;
	setAttr ".rman__riopt__photon_lifetime" -type "string" "transient";
	setAttr -k on ".rman__riopt__photon_emit" 0;
	setAttr ".rman__riattr__photon_causticmap" -type "string" "";
	setAttr ".rman__riattr__photon_globalmap" -type "string" "";
createNode RenderMan -s -n "rmanFinalOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___dspyGetChannelsFromCamera" -ln "rman__torattr___dspyGetChannelsFromCamera" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Primary";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___dspyGetChannelsFromCamera" 1;
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "tiff";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr ".rman__riopt__Display_filter" -type "string" "separable-catmull-rom";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_dither" 0.5;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanPreviewGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___previewPass" -ln "rman__torattr___previewPass" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___depthOfField" -ln "rman__torattr___depthOfField" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passNameFormat" -ln "rman__torattr___passNameFormat" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__trace_maxdepth" -ln "rman__riopt__trace_maxdepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__shading_directlightingsamples" -ln "rman__riopt__shading_directlightingsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___CropWindow" -ln "rman__riopt___CropWindow" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX" -ln "rman__riopt___CropWindowX" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX0" -ln "rman__riopt___CropWindowX0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX1" -ln "rman__riopt___CropWindowX1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY" -ln "rman__riopt___CropWindowY" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY0" -ln "rman__riopt___CropWindowY0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY1" -ln "rman__riopt___CropWindowY1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -h true -sn "rman__riopt__photon_lifetime" -ln "rman__riopt__photon_lifetime" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__photon_emit" -ln "rman__riopt__photon_emit" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxspeculardepth" -ln "rman__riattr__trace_maxspeculardepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxdiffusedepth" -ln "rman__riattr__trace_maxdiffusedepth" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riattr__photon_causticmap" -ln "rman__riattr__photon_causticmap" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riattr__photon_globalmap" -ln "rman__riattr__photon_globalmap" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Preview";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr -k on ".rman__torattr___previewPass" 1;
	setAttr -k on ".rman__torattr___rayTracing" 1;
	setAttr -k on ".rman__torattr___motionBlur" 1;
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___depthOfField" 1;
	setAttr ".rman__torattr___passNameFormat" -type "string" "";
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 3 3 ;
	setAttr -k on ".rman__riopt__trace_maxdepth" 4;
	setAttr -k on ".rman__riopt__shading_directlightingsamples" 50;
	setAttr -k on ".rman__riopt___CropWindowX" -type "float2" 0 1 ;
	setAttr -k on ".rman__riopt___CropWindowY" -type "float2" 0 1 ;
	setAttr ".rman__riopt__photon_lifetime" -type "string" "transient";
	setAttr -k on ".rman__riopt__photon_emit" 0;
	setAttr -k on ".rman__riattr___ShadingRate" 5;
	setAttr -k on ".rman__riattr__trace_maxspeculardepth" 2;
	setAttr -k on ".rman__riattr__trace_maxdiffusedepth" 1;
	setAttr ".rman__riattr__photon_causticmap" -type "string" "";
	setAttr ".rman__riattr__photon_globalmap" -type "string" "";
createNode RenderMan -s -n "rmanPreviewOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___dspyGetChannelsFromCamera" -ln "rman__torattr___dspyGetChannelsFromCamera" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Primary";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___dspyGetChannelsFromCamera" 1;
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "tiff";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr ".rman__riopt__Display_filter" -type "string" "separable-catmull-rom";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_dither" 0.5;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanRerenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___previewPass" -ln "rman__torattr___previewPass" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___depthOfField" -ln "rman__torattr___depthOfField" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passNameFormat" -ln "rman__torattr___passNameFormat" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__shading_directlightingsamples" -ln "rman__riopt__shading_directlightingsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__trace_maxdepth" -ln "rman__riopt__trace_maxdepth" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__bucket_order" -ln "rman__riopt__bucket_order" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize" -ln "rman__riopt__limits_bucketsize" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize0" -ln "rman__riopt__limits_bucketsize0" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize1" -ln "rman__riopt__limits_bucketsize1" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt___PixelVariance" -ln "rman__riopt___PixelVariance" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__Hider_name" -ln "rman__riopt__Hider_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt___CropWindow" -ln "rman__riopt___CropWindow" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX" -ln "rman__riopt___CropWindowX" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX0" -ln "rman__riopt___CropWindowX0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX1" -ln "rman__riopt___CropWindowX1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY" -ln "rman__riopt___CropWindowY" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY0" -ln "rman__riopt___CropWindowY0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY1" -ln "rman__riopt___CropWindowY1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -h true -sn "rman__riopt__photon_lifetime" -ln "rman__riopt__photon_lifetime" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__photon_emit" -ln "rman__riopt__photon_emit" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxspeculardepth" -ln "rman__riattr__trace_maxspeculardepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxdiffusedepth" -ln "rman__riattr__trace_maxdiffusedepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__trace_displacements" -ln "rman__riattr__trace_displacements" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riattr__photon_causticmap" -ln "rman__riattr__photon_causticmap" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riattr__photon_globalmap" -ln "rman__riattr__photon_globalmap" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Hider_samplemode" -ln "rman__riopt__Hider_samplemode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Hider_integrationmode" -ln "rman__riopt__Hider_integrationmode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Hider_minsamples" -ln "rman__riopt__Hider_minsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Hider_maxsamples" -ln "rman__riopt__Hider_maxsamples" 
		-dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Rerender";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr -k on ".rman__torattr___previewPass" 1;
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___depthOfField" 1;
	setAttr ".rman__torattr___passNameFormat" -type "string" "";
	setAttr -k on ".rman__riopt__shading_directlightingsamples" 4;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__trace_maxdepth" 4;
	setAttr ".rman__riopt__bucket_order" -type "string" "spiral";
	setAttr -k on ".rman__riopt__limits_bucketsize" -type "long2" 8 8 ;
	setAttr -k on ".rman__riopt___PixelVariance" 0.0099999997764825821;
	setAttr ".rman__riopt__Hider_name" -type "string" "raytrace";
	setAttr -k on ".rman__riopt___CropWindowX" -type "float2" 0 1 ;
	setAttr -k on ".rman__riopt___CropWindowY" -type "float2" 0 1 ;
	setAttr ".rman__riopt__photon_lifetime" -type "string" "transient";
	setAttr -k on ".rman__riopt__photon_emit" 0;
	setAttr -k on ".rman__riattr___ShadingRate" 5;
	setAttr -k on ".rman__riattr__trace_maxspeculardepth" 2;
	setAttr -k on ".rman__riattr__trace_maxdiffusedepth" 1;
	setAttr -k on ".rman__riattr__trace_displacements" 1;
	setAttr ".rman__riattr__photon_causticmap" -type "string" "";
	setAttr ".rman__riattr__photon_globalmap" -type "string" "";
	setAttr ".rman__riopt__Hider_samplemode" -type "string" "adaptive";
	setAttr ".rman__riopt__Hider_integrationmode" -type "string" "path";
	setAttr -k on ".rman__riopt__Hider_minsamples" 2;
	setAttr -k on ".rman__riopt__Hider_maxsamples" 256;
createNode RenderMan -s -n "rmanRerenderOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___dspyGetChannelsFromCamera" -ln "rman__torattr___dspyGetChannelsFromCamera" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "PrimaryRerender";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___dspyGetChannelsFromCamera" 1;
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "tiff";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr ".rman__riopt__Display_filter" -type "string" "gaussian";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_dither" 0.5;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode mentalrayOptions -s -n "miContourPreset";
createNode RenderMan -s -n "rmanReyesRerenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___previewPass" -ln "rman__torattr___previewPass" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___depthOfField" -ln "rman__torattr___depthOfField" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passNameFormat" -ln "rman__torattr___passNameFormat" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__shading_directlightingsamples" -ln "rman__riopt__shading_directlightingsamples" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__trace_maxdepth" -ln "rman__riopt__trace_maxdepth" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__bucket_order" -ln "rman__riopt__bucket_order" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize" -ln "rman__riopt__limits_bucketsize" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize0" -ln "rman__riopt__limits_bucketsize0" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt__limits_bucketsize1" -ln "rman__riopt__limits_bucketsize1" 
		-dv -1 -at "long" -p "rman__riopt__limits_bucketsize";
	addAttr -ci true -k true -sn "rman__riopt___PixelVariance" -ln "rman__riopt___PixelVariance" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__render_rerenderbake" -ln "rman__riopt__render_rerenderbake" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__render_rerenderbakedbdir" -ln "rman__riopt__render_rerenderbakedbdir" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt___CropWindow" -ln "rman__riopt___CropWindow" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX" -ln "rman__riopt___CropWindowX" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX0" -ln "rman__riopt___CropWindowX0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowX1" -ln "rman__riopt___CropWindowX1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowX";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY" -ln "rman__riopt___CropWindowY" 
		-at "float2" -p "rman__riopt___CropWindow" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY0" -ln "rman__riopt___CropWindowY0" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -k true -sn "rman__riopt___CropWindowY1" -ln "rman__riopt___CropWindowY1" 
		-dv -1 -at "float" -p "rman__riopt___CropWindowY";
	addAttr -ci true -h true -sn "rman__riopt__photon_lifetime" -ln "rman__riopt__photon_lifetime" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__photon_emit" -ln "rman__riopt__photon_emit" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxspeculardepth" -ln "rman__riattr__trace_maxspeculardepth" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__trace_maxdiffusedepth" -ln "rman__riattr__trace_maxdiffusedepth" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riattr__photon_causticmap" -ln "rman__riattr__photon_causticmap" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riattr__photon_globalmap" -ln "rman__riattr__photon_globalmap" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "ReyesRerender";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr -k on ".rman__torattr___previewPass" 1;
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___depthOfField" 1;
	setAttr ".rman__torattr___passNameFormat" -type "string" "";
	setAttr -k on ".rman__riopt__shading_directlightingsamples" 50;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__trace_maxdepth" 4;
	setAttr ".rman__riopt__bucket_order" -type "string" "spiral";
	setAttr -k on ".rman__riopt__limits_bucketsize" -type "long2" 8 8 ;
	setAttr -k on ".rman__riopt___PixelVariance" 0.0099999997764825821;
	setAttr -k on ".rman__riopt__render_rerenderbake" 1;
	setAttr ".rman__riopt__render_rerenderbakedbdir" -type "string" "";
	setAttr -k on ".rman__riopt___CropWindowX" -type "float2" 0 1 ;
	setAttr -k on ".rman__riopt___CropWindowY" -type "float2" 0 1 ;
	setAttr ".rman__riopt__photon_lifetime" -type "string" "transient";
	setAttr -k on ".rman__riopt__photon_emit" 0;
	setAttr -k on ".rman__riattr___ShadingRate" 5;
	setAttr -k on ".rman__riattr__trace_maxspeculardepth" 2;
	setAttr -k on ".rman__riattr__trace_maxdiffusedepth" 1;
	setAttr ".rman__riattr__photon_causticmap" -type "string" "";
	setAttr ".rman__riattr__photon_globalmap" -type "string" "";
createNode RenderMan -s -n "rmanReyesRerenderOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___dspyGetChannelsFromCamera" -ln "rman__torattr___dspyGetChannelsFromCamera" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Primary";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___dspyGetChannelsFromCamera" 1;
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "tiff";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr ".rman__riopt__Display_filter" -type "string" "separable-catmull-rom";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 2 2 ;
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 255 ;
	setAttr -k on ".rman__riopt__Display_dither" 0.5;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanDeepShadowGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___defaultSurfaceShader" -ln "rman__torattr___defaultSurfaceShader" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___outputSurfaceShaders" -ln "rman__torattr___outputSurfaceShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputDisplacementShaders" -ln "rman__torattr___outputDisplacementShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputLightShaders" -ln "rman__torattr___outputLightShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputVolumeShaders" -ln "rman__torattr___outputVolumeShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputImagerShaders" -ln "rman__torattr___outputImagerShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution" -ln "rman__riopt__Format_resolution" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution0" -ln "rman__riopt__Format_resolution0" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution1" -ln "rman__riopt__Format_resolution1" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__Format_pixelaspectratio" -ln "rman__riopt__Format_pixelaspectratio" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__Hider_name" -ln "rman__riopt__Hider_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowerror" -ln "rman__riopt__limits_deepshadowerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowsimplifyerror" -ln "rman__riopt__limits_deepshadowsimplifyerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DeepShadow";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Shadow";
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___rayTracing" 0;
	setAttr ".rman__torattr___defaultSurfaceShader" -type "string" "null";
	setAttr -k on ".rman__torattr___outputSurfaceShaders" 1;
	setAttr -k on ".rman__torattr___outputDisplacementShaders" 1;
	setAttr -k on ".rman__torattr___outputLightShaders" 0;
	setAttr -k on ".rman__torattr___outputVolumeShaders" 0;
	setAttr -k on ".rman__torattr___outputImagerShaders" 0;
	setAttr -k on ".rman__riopt__Format_resolution" -type "long2" 512 512 ;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 3 3 ;
	setAttr -k on ".rman__riopt__Format_pixelaspectratio" 1;
	setAttr ".rman__riopt__Hider_name" -type "string" "hidden";
	setAttr -k on ".rman__riopt__limits_deepshadowerror" 0.0099999997764825821;
	setAttr -k on ".rman__riopt__limits_deepshadowsimplifyerror" 0.0099999997764825821;
	setAttr -k on ".rman__riattr___ShadingRate" 1;
createNode RenderMan -s -n "rmanDeepShadowOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Null";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "null";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
createNode RenderMan -s -n "rmanDeepShadowOutputGlobals1";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_volumeinterpretation" -ln "rman__riopt__Display_volumeinterpretation" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DeepShadow";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___primaryDisplay" 0;
	setAttr ".rman__riopt__Display_name" -type "string" "+[passinfo this filename -channel $DSPYCHAN]";
	setAttr ".rman__riopt__Display_type" -type "string" "deepshad";
	setAttr ".rman__riopt__Display_filter" -type "string" "box";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 1 1 ;
	setAttr ".rman__riopt__Display_mode" -type "string" "deepopacity";
	setAttr ".rman__riopt__Display_volumeinterpretation" -type "string" "discrete";
createNode RenderMan -s -n "rmanAreaShadowGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___defaultSurfaceShader" -ln "rman__torattr___defaultSurfaceShader" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___outputSurfaceShaders" -ln "rman__torattr___outputSurfaceShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputDisplacementShaders" -ln "rman__torattr___outputDisplacementShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputLightShaders" -ln "rman__torattr___outputLightShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputVolumeShaders" -ln "rman__torattr___outputVolumeShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputImagerShaders" -ln "rman__torattr___outputImagerShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution" -ln "rman__riopt__Format_resolution" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution0" -ln "rman__riopt__Format_resolution0" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution1" -ln "rman__riopt__Format_resolution1" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__Format_pixelaspectratio" -ln "rman__riopt__Format_pixelaspectratio" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__Hider_name" -ln "rman__riopt__Hider_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowerror" -ln "rman__riopt__limits_deepshadowerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowsimplifyerror" -ln "rman__riopt__limits_deepshadowsimplifyerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riattr__cull_backfacing" -ln "rman__riattr__cull_backfacing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__cull_hidden" -ln "rman__riattr__cull_hidden" 
		-dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "AreaShadow";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Shadow";
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___rayTracing" 0;
	setAttr ".rman__torattr___defaultSurfaceShader" -type "string" "null";
	setAttr -k on ".rman__torattr___outputSurfaceShaders" 1;
	setAttr -k on ".rman__torattr___outputDisplacementShaders" 1;
	setAttr -k on ".rman__torattr___outputLightShaders" 0;
	setAttr -k on ".rman__torattr___outputVolumeShaders" 0;
	setAttr -k on ".rman__torattr___outputImagerShaders" 0;
	setAttr -k on ".rman__riopt__Format_resolution" -type "long2" 512 512 ;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 3 3 ;
	setAttr -k on ".rman__riopt__Format_pixelaspectratio" 1;
	setAttr ".rman__riopt__Hider_name" -type "string" "hidden";
	setAttr -k on ".rman__riopt__limits_deepshadowerror" 0.0099999997764825821;
	setAttr -k on ".rman__riopt__limits_deepshadowsimplifyerror" 0.0099999997764825821;
	setAttr -k on ".rman__riattr___ShadingRate" 1;
	setAttr -k on ".rman__riattr__cull_backfacing" 0;
	setAttr -k on ".rman__riattr__cull_hidden" 0;
createNode RenderMan -s -n "rmanAreaShadowOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Null";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "null";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
createNode RenderMan -s -n "rmanAreaShadowOutputGlobals1";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_filter" -ln "rman__riopt__Display_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth" -ln "rman__riopt__Display_filterwidth" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth0" -ln "rman__riopt__Display_filterwidth0" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -k true -sn "rman__riopt__Display_filterwidth1" -ln "rman__riopt__Display_filterwidth1" 
		-dv -1 -at "float" -p "rman__riopt__Display_filterwidth";
	addAttr -ci true -uac -k true -sn "rman__riopt__limits_othreshold" -ln "rman__riopt__limits_othreshold" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdr" -ln "rman__riopt__limits_othresholdR" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdg" -ln "rman__riopt__limits_othresholdG" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_othresholdb" -ln "rman__riopt__limits_othresholdB" 
		-dv -1 -at "float" -p "rman__riopt__limits_othreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_deepshadowerror" -ln "rman__riopt__limits_deepshadowerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__hair_minwidth" -ln "rman__riopt__hair_minwidth" 
		-dv -1 -at "float";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Hider_sigma" -ln "rman__riopt__Hider_sigma" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Display_volumeinterpretation" -ln "rman__riopt__Display_volumeinterpretation" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "AreaShadow";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr -k on ".rman__torattr___primaryDisplay" 0;
	setAttr ".rman__riopt__Display_name" -type "string" "+[passinfo this filename -channel $DSPYCHAN]";
	setAttr ".rman__riopt__Display_type" -type "string" "deepshad";
	setAttr ".rman__riopt__Display_filter" -type "string" "box";
	setAttr -k on ".rman__riopt__Display_filterwidth" -type "float2" 1 1 ;
	setAttr -k on ".rman__riopt__limits_othreshold" -type "float3" 9 9 9 ;
	setAttr -k on ".rman__riopt__limits_deepshadowerror" 0.0099999997764825821;
	setAttr -k on ".rman__riopt__hair_minwidth" 1;
	setAttr ".rman__riopt__Display_mode" -type "string" "areashadow";
	setAttr -k on ".rman__riopt__Hider_sigma" 0;
	setAttr ".rman__riopt__Display_volumeinterpretation" -type "string" "discrete";
createNode RenderMan -s -n "rmanShadowGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___defaultSurfaceShader" -ln "rman__torattr___defaultSurfaceShader" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___outputSurfaceShaders" -ln "rman__torattr___outputSurfaceShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputDisplacementShaders" -ln "rman__torattr___outputDisplacementShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputLightShaders" -ln "rman__torattr___outputLightShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputVolumeShaders" -ln "rman__torattr___outputVolumeShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___outputImagerShaders" -ln "rman__torattr___outputImagerShaders" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution" -ln "rman__riopt__Format_resolution" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution0" -ln "rman__riopt__Format_resolution0" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt__Format_resolution1" -ln "rman__riopt__Format_resolution1" 
		-dv -1 -at "long" -p "rman__riopt__Format_resolution";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt__Format_pixelaspectratio" -ln "rman__riopt__Format_pixelaspectratio" 
		-dv -1 -at "float";
	addAttr -ci true -uac -k true -sn "rman__riopt__limits_zthreshold" -ln "rman__riopt__limits_zthreshold" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdr" -ln "rman__riopt__limits_zthresholdR" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdg" -ln "rman__riopt__limits_zthresholdG" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -k true -sn "rman__riopt__limits_zthresholdb" -ln "rman__riopt__limits_zthresholdB" 
		-dv -1 -at "float" -p "rman__riopt__limits_zthreshold";
	addAttr -ci true -h true -sn "rman__riopt__Hider_name" -ln "rman__riopt__Hider_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Hider_jitter" -ln "rman__riopt__Hider_jitter" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__riopt__Hider_depthfilter" -ln "rman__riopt__Hider_depthfilter" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Shadow";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Shadow";
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___rayTracing" 0;
	setAttr ".rman__torattr___defaultSurfaceShader" -type "string" "null";
	setAttr -k on ".rman__torattr___outputSurfaceShaders" 0;
	setAttr -k on ".rman__torattr___outputDisplacementShaders" 1;
	setAttr -k on ".rman__torattr___outputLightShaders" 0;
	setAttr -k on ".rman__torattr___outputVolumeShaders" 0;
	setAttr -k on ".rman__torattr___outputImagerShaders" 0;
	setAttr -k on ".rman__riopt__Format_resolution" -type "long2" 512 512 ;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 1 1 ;
	setAttr -k on ".rman__riopt__Format_pixelaspectratio" 1;
	setAttr -k on ".rman__riopt__limits_zthreshold" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".rman__riopt__Hider_name" -type "string" "hidden";
	setAttr -k on ".rman__riattr___ShadingRate" 1;
	setAttr -k on ".rman__riopt__Hider_jitter" 0;
	setAttr ".rman__riopt__Hider_depthfilter" -type "string" "midpoint";
createNode RenderMan -s -n "rmanShadowOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "ShadowZ";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "shadow";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
createNode RenderMan -s -n "rmanBakeGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender_dspy" -ln "rman__param__ptrender_dspy" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender_depth" -ln "rman__param__ptrender_depth" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptrender_size" -ln "rman__param__ptrender_size" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__param__ptrender_size0" -ln "rman__param__ptrender_size0" 
		-dv -1 -at "long" -p "rman__param__ptrender_size";
	addAttr -ci true -k true -sn "rman__param__ptrender_size1" -ln "rman__param__ptrender_size1" 
		-dv -1 -at "long" -p "rman__param__ptrender_size";
	addAttr -ci true -h true -sn "rman__param__ptrender___inputfile" -ln "rman__param__ptrender___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender___channel" -ln "rman__param__ptrender___channel" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender___outputfile" -ln "rman__param__ptrender___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Bake";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptrender\"];[mel rmanBakeAssignNewShadingNetworks]";
	setAttr ".rman__param__ptrender_dspy" -type "string" "tiff";
	setAttr ".rman__param__ptrender_depth" -type "string" "short";
	setAttr -k on ".rman__param__ptrender_size" -type "long2" 512 512 ;
	setAttr ".rman__param__ptrender___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptrender___channel" -type "string" "$BAKECHAN";
	setAttr ".rman__param__ptrender___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanBakeRenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___bakeChannels" -ln "rman__torattr___bakeChannels" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__user_shading_normalmode" -ln "rman__riopt__user_shading_normalmode" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__cull_backfacing" -ln "rman__riattr__cull_backfacing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__cull_hidden" -ln "rman__riattr__cull_hidden" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__dice_rasterorient" -ln "rman__riattr__dice_rasterorient" 
		-dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "BakeRender";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Images";
	setAttr ".rman__torattr___bakeChannels" -type "string" "Ci,";
	setAttr -k on ".rman__riopt__user_shading_normalmode" 1;
	setAttr -k on ".rman__riattr__cull_backfacing" 0;
	setAttr -k on ".rman__riattr__cull_hidden" 0;
	setAttr -k on ".rman__riattr__dice_rasterorient" 0;
createNode RenderMan -s -n "rmanBakeRenderOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "PreviewNull";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "_preview";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_dither" 0;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Rim";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Rim";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals1";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularEnvironment";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularEnvironment";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals2";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Translucence";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Translucence";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals3";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Z";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float Z";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals4";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseShadow";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals5";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Diffuse";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Diffuse";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals6";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseEnvironment";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseEnvironment";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals7";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseDirect";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals8";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantize" -ln "rman__riopt__DisplayChannel_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeX" -ln "rman__riopt__DisplayChannel_quantizeX" 
		-at "long2" -p "rman__riopt__DisplayChannel_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeX0" -ln "rman__riopt__DisplayChannel_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__DisplayChannel_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeX1" -ln "rman__riopt__DisplayChannel_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__DisplayChannel_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeY" -ln "rman__riopt__DisplayChannel_quantizeY" 
		-at "long2" -p "rman__riopt__DisplayChannel_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeY0" -ln "rman__riopt__DisplayChannel_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__DisplayChannel_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_quantizeY1" -ln "rman__riopt__DisplayChannel_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__DisplayChannel_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "id";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float id";
	setAttr -k on ".rman__riopt__DisplayChannel_quantizeX" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__DisplayChannel_quantizeY" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_dither" 0;
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals9";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Ci";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Ci";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals10";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "wP";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "point wP";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals11";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularDirectShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularDirectShadow";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals12";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseColor";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals13";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Occlusion";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float Occlusion";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals14";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularShadow";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals15";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "N";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "normal N";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals16";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Incandescence";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Incandescence";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals17";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularDirect";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals18";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularColor";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals19";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Oi";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Oi";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals20";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "OcclusionDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color OcclusionDirect";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals21";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "GlowColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color GlowColor";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals22";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseDirectShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseDirectShadow";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals23";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Subsurface";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Subsurface";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals24";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Specular";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Specular";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals25";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Refraction";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Refraction";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals26";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseIndirect";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals27";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Backscattering";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Backscattering";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals28";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularIndirect";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals29";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Ambient";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Ambient";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals30";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "wN";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "normal wN";
createNode RenderMan -s -n "rmanBakeRenderChannelGlobals31";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "OcclusionIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color OcclusionIndirect";
createNode RenderMan -s -n "rmanSSMakeBrickmapGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__brickmake_maxerror" -ln "rman__param__brickmake_maxerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__brickmake_progress" -ln "rman__param__brickmake_progress" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__param__brickmake_omitgeometry" -ln "rman__param__brickmake_omitgeometry" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__brickmake___inputfile" -ln "rman__param__brickmake___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__brickmake___outputfile" -ln "rman__param__brickmake___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SSMakeBrickmap";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Subsurface";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/brickmake\"]";
	setAttr -k on ".rman__param__brickmake_maxerror" 0.0020000000949949026;
	setAttr -k on ".rman__param__brickmake_progress" 2;
	setAttr -k on ".rman__param__brickmake_omitgeometry" 1;
	setAttr ".rman__param__brickmake___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__brickmake___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSSDiffuseGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter_filter" -ln "rman__param__ptfilter_filter" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter_albedo" -ln "rman__param__ptfilter_albedo" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter_diffusemeanfreepath" -ln "rman__param__ptfilter_diffusemeanfreepath" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_smooth" -ln "rman__param__ptfilter_smooth" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__ptfilter_ior" -ln "rman__param__ptfilter_ior" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__ptfilter_maxsolidangle" -ln "rman__param__ptfilter_maxsolidangle" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__ptfilter_unitlength" -ln "rman__param__ptfilter_unitlength" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__ptfilter_followtopology" -ln "rman__param__ptfilter_followtopology" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__ptfilter_progress" -ln "rman__param__ptfilter_progress" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter_Progress" -ln "rman__param__ptfilter_Progress" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_threads" -ln "rman__param__ptfilter_threads" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter___inputfile" -ln "rman__param__ptfilter___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter___outputfile" -ln "rman__param__ptfilter___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SSDiffuse";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Subsurface";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptfilter\"]";
	setAttr ".rman__param__ptfilter_filter" -type "string" "ssdiffusion";
	setAttr ".rman__param__ptfilter_albedo" -type "string" "fromfile";
	setAttr ".rman__param__ptfilter_diffusemeanfreepath" -type "string" "fromfile";
	setAttr -k on ".rman__param__ptfilter_smooth" 1;
	setAttr -k on ".rman__param__ptfilter_ior" 1.2999999523162842;
	setAttr -k on ".rman__param__ptfilter_maxsolidangle" 1;
	setAttr -k on ".rman__param__ptfilter_unitlength" 1;
	setAttr -k on ".rman__param__ptfilter_followtopology" 1;
	setAttr -k on ".rman__param__ptfilter_progress" 2;
	setAttr ".rman__param__ptfilter_Progress" -type "string" "_on";
	setAttr -k on ".rman__param__ptfilter_threads" 0;
	setAttr ".rman__param__ptfilter___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptfilter___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSSRenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___rayTracing" -ln "rman__torattr___rayTracing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__user_shading_normalmode" -ln "rman__riopt__user_shading_normalmode" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riattr__cull_backfacing" -ln "rman__riattr__cull_backfacing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__cull_hidden" -ln "rman__riattr__cull_hidden" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__dice_rasterorient" -ln "rman__riattr__dice_rasterorient" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SSRender";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Subsurface";
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__torattr___rayTracing" 1;
	setAttr -k on ".rman__riopt__user_shading_normalmode" 1;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 1 1 ;
	setAttr -k on ".rman__riattr__cull_backfacing" 0;
	setAttr -k on ".rman__riattr__cull_hidden" 0;
	setAttr -k on ".rman__riattr__dice_rasterorient" 0;
	setAttr -k on ".rman__riattr___ShadingRate" 5;
createNode RenderMan -s -n "rmanSSRenderOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "PreviewNull";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "_preview";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_dither" 0;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanSSRenderChannelGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "diffusemeanfreepath";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _diffusemeanfreepath";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSSRenderChannelGlobals1";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "area";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _area";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSSRenderChannelGlobals2";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "albedo";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _albedo";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSSRenderChannelGlobals3";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "radiance_t";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _radiance_t";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSSOrganizeGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter_filter" -ln "rman__param__ptfilter_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_partial" -ln "rman__param__ptfilter_partial" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__param__ptfilter_progress" -ln "rman__param__ptfilter_progress" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter_Progress" -ln "rman__param__ptfilter_Progress" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_threads" -ln "rman__param__ptfilter_threads" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter___inputfile" -ln "rman__param__ptfilter___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter___outputfile" -ln "rman__param__ptfilter___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SSOrganize";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/Subsurface";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptfilter\"]";
	setAttr ".rman__param__ptfilter_filter" -type "string" "ssdiffusion";
	setAttr -k on ".rman__param__ptfilter_partial" 1;
	setAttr -k on ".rman__param__ptfilter_progress" 2;
	setAttr ".rman__param__ptfilter_Progress" -type "string" "_on";
	setAttr -k on ".rman__param__ptfilter_threads" 0;
	setAttr ".rman__param__ptfilter___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptfilter___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSBMakeBrickmapGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__brickmake_maxerror" -ln "rman__param__brickmake_maxerror" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__param__brickmake_progress" -ln "rman__param__brickmake_progress" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__brickmake___inputfile" -ln "rman__param__brickmake___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__brickmake___outputfile" -ln "rman__param__brickmake___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SBMakeBrickmap";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/SlimBake";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/brickmake\"]";
	setAttr -k on ".rman__param__brickmake_maxerror" 0.0040000001899898052;
	setAttr -k on ".rman__param__brickmake_progress" 2;
	setAttr ".rman__param__brickmake___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__brickmake___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSBRenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___camera" -ln "rman__torattr___camera" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___crew" -ln "rman__torattr___crew" -dt "string";
	addAttr -ci true -h true -sn "rman__torattr___flavor" -ln "rman__torattr___flavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___cameraFlavor" -ln "rman__torattr___cameraFlavor" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___lightcrew" -ln "rman__torattr___lightcrew" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__torattr___motionBlur" -ln "rman__torattr___motionBlur" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt__user_shading_normalmode" -ln "rman__riopt__user_shading_normalmode" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples" -ln "rman__riopt___PixelSamples" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples0" -ln "rman__riopt___PixelSamples0" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riopt___PixelSamples1" -ln "rman__riopt___PixelSamples1" 
		-dv -1 -at "float" -p "rman__riopt___PixelSamples";
	addAttr -ci true -k true -sn "rman__riattr__cull_backfacing" -ln "rman__riattr__cull_backfacing" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__cull_hidden" -ln "rman__riattr__cull_hidden" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr__dice_rasterorient" -ln "rman__riattr__dice_rasterorient" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__riattr___ShadingRate" -ln "rman__riattr___ShadingRate" 
		-dv -1 -at "float";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:render";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SBRender";
	setAttr ".rman__torattr___task" -type "string" "render";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___camera" -type "string" "";
	setAttr ".rman__torattr___crew" -type "string" "";
	setAttr ".rman__torattr___flavor" -type "string" "";
	setAttr ".rman__torattr___cameraFlavor" -type "string" "";
	setAttr ".rman__torattr___lightcrew" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/SlimBake";
	setAttr -k on ".rman__torattr___motionBlur" 0;
	setAttr -k on ".rman__riopt__user_shading_normalmode" 1;
	setAttr -k on ".rman__riopt___PixelSamples" -type "float2" 1 1 ;
	setAttr -k on ".rman__riattr__cull_backfacing" 0;
	setAttr -k on ".rman__riattr__cull_hidden" 0;
	setAttr -k on ".rman__riattr__dice_rasterorient" 0;
	setAttr -k on ".rman__riattr___ShadingRate" 1;
createNode RenderMan -s -n "rmanSBRenderOutputGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -k true -sn "rman__torattr___primaryDisplay" -ln "rman__torattr___primaryDisplay" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___dspyID" -ln "rman__torattr___dspyID" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_name" -ln "rman__riopt__Display_name" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_type" -ln "rman__riopt__Display_type" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__riopt__Display_mode" -ln "rman__riopt__Display_mode" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantize" -ln "rman__riopt__Display_quantize" 
		-at "compound" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX" -ln "rman__riopt__Display_quantizeX" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX0" -ln "rman__riopt__Display_quantizeX0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeX1" -ln "rman__riopt__Display_quantizeX1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeX";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY" -ln "rman__riopt__Display_quantizeY" 
		-at "long2" -p "rman__riopt__Display_quantize" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY0" -ln "rman__riopt__Display_quantizeY0" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_quantizeY1" -ln "rman__riopt__Display_quantizeY1" 
		-dv -1 -at "long" -p "rman__riopt__Display_quantizeY";
	addAttr -ci true -k true -sn "rman__riopt__Display_dither" -ln "rman__riopt__Display_dither" 
		-dv -1 -at "float";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure" -ln "rman__riopt__Display_exposure" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure0" -ln "rman__riopt__Display_exposure0" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -ci true -k true -sn "rman__riopt__Display_exposure1" -ln "rman__riopt__Display_exposure1" 
		-dv -1 -at "float" -p "rman__riopt__Display_exposure";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:display";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "PreviewNull";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "_preview";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "rgba";
	setAttr -k on ".rman__riopt__Display_quantizeX" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_quantizeY" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_dither" 0;
	setAttr -k on ".rman__riopt__Display_exposure" -type "float2" 1 1 ;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals0";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "color";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _color";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals1";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "diffusemeanfreepath";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _diffusemeanfreepath";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals2";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "area";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _area";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals3";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "float";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _float";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals4";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "albedo";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _albedo";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBRenderChannelGlobals5";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -h true -sn "rman__riopt__DisplayChannel_name" -ln "rman__riopt__DisplayChannel_name" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__riopt__DisplayChannel_EliminateDuplicateGrids" 
		-ln "rman__riopt__DisplayChannel_EliminateDuplicateGrids" -dv -1 -at "long";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "settings:displaychannel";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "radiance_t";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _radiance_t";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
createNode RenderMan -s -n "rmanSBMakePtCloudGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter_filter" -ln "rman__param__ptfilter_filter" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_progress" -ln "rman__param__ptfilter_progress" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter_Progress" -ln "rman__param__ptfilter_Progress" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptfilter_threads" -ln "rman__param__ptfilter_threads" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__param__ptfilter___inputfile" -ln "rman__param__ptfilter___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptfilter___outputfile" -ln "rman__param__ptfilter___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SBMakePtCloud";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/SlimBake";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptfilter\"]";
	setAttr ".rman__param__ptfilter_filter" -type "string" "none";
	setAttr -k on ".rman__param__ptfilter_progress" 2;
	setAttr ".rman__param__ptfilter_Progress" -type "string" "_on";
	setAttr -k on ".rman__param__ptfilter_threads" 0;
	setAttr ".rman__param__ptfilter___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptfilter___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSBPtRenderGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender_dspy" -ln "rman__param__ptrender_dspy" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender_depth" -ln "rman__param__ptrender_depth" 
		-dt "string";
	addAttr -ci true -k true -sn "rman__param__ptrender_size" -ln "rman__param__ptrender_size" 
		-at "long2" -nc 2;
	addAttr -ci true -k true -sn "rman__param__ptrender_size0" -ln "rman__param__ptrender_size0" 
		-dv -1 -at "long" -p "rman__param__ptrender_size";
	addAttr -ci true -k true -sn "rman__param__ptrender_size1" -ln "rman__param__ptrender_size1" 
		-dv -1 -at "long" -p "rman__param__ptrender_size";
	addAttr -ci true -h true -sn "rman__param__ptrender___inputfile" -ln "rman__param__ptrender___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender___channel" -ln "rman__param__ptrender___channel" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptrender___outputfile" -ln "rman__param__ptrender___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SBPtRender";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/SlimBake";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptrender\"]";
	setAttr ".rman__param__ptrender_dspy" -type "string" "texture";
	setAttr ".rman__param__ptrender_depth" -type "string" "float";
	setAttr -k on ".rman__param__ptrender_size" -type "long2" 512 512 ;
	setAttr ".rman__param__ptrender___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptrender___channel" -type "string" "$BAKECHAN";
	setAttr ".rman__param__ptrender___outputfile" -type "string" "[passinfo this filename]";
createNode RenderMan -s -n "rmanSBMakePtexGlobals";
	addAttr -ci true -h true -sn "t" -ln "isTemplate" -at "long";
	addAttr -ci true -h true -sn "rman__torattr___class" -ln "rman__torattr___class" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___task" -ln "rman__torattr___task" -dt "string";
	addAttr -ci true -k true -sn "rman__torattr___computeBehavior" -ln "rman__torattr___computeBehavior" 
		-dv -1 -at "long";
	addAttr -ci true -h true -sn "rman__torattr___passLayer" -ln "rman__torattr___passLayer" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___phase" -ln "rman__torattr___phase" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__torattr___passCommand" -ln "rman__torattr___passCommand" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake_depth" -ln "rman__param__ptxmake_depth" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake_splat" -ln "rman__param__ptxmake_splat" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake_geom" -ln "rman__param__ptxmake_geom" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake___inputfile" -ln "rman__param__ptxmake___inputfile" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake___channel" -ln "rman__param__ptxmake___channel" 
		-dt "string";
	addAttr -ci true -h true -sn "rman__param__ptxmake___outputfile" -ln "rman__param__ptxmake___outputfile" 
		-dt "string";
	addAttr -r false -s false -ci true -h true -m -im false -sn "d" -ln "display" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "c" -ln "channel" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "rif" -ln "rif" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "p" -ln "passes" -at "message";
	addAttr -r false -s false -ci true -h true -m -im false -sn "sh" -ln "shared" -at "message";
	setAttr ".nt" -type "string" "pass:command";
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SBMakePtex";
	setAttr ".rman__torattr___task" -type "string" "command";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr ".rman__torattr___passLayer" -type "string" "";
	setAttr ".rman__torattr___phase" -type "string" "/Job/Frames/Maps/SlimBake";
	setAttr ".rman__torattr___passCommand" -type "string" "[GetCmdPassCmdList \"\\${RMANTREE}/bin/ptxmake\"]";
	setAttr ".rman__param__ptxmake_depth" -type "string" "half";
	setAttr ".rman__param__ptxmake_splat" -type "string" "diffusion";
	setAttr ".rman__param__ptxmake_geom" -type "string" "quad";
	setAttr ".rman__param__ptxmake___inputfile" -type "string" "[passinfo this/0 filename]";
	setAttr ".rman__param__ptxmake___channel" -type "string" "$BAKECHAN";
	setAttr ".rman__param__ptxmake___outputfile" -type "string" "[passinfo this filename]";
createNode partition -n "mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	setAttr ".cuv" 2;
createNode animCurveTA -n "pPlane1_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.81803756120435;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pPlane1_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pPlane1_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "pPlane1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane1_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane1_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.4760354144319008;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane1_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.5222603624376516;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "pPlane1_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.5256061388793016;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "pPlane1_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.5256061388793016;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "pPlane1_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.5256061388793016;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Tail2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 -4.0134093226994825 29.996 -4.0134093226994825;
createNode animCurveTL -n "Tail2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9 0.17387539689404402 23 -0.13923662934354195
		 29.996 0;
createNode animCurveTL -n "Tail2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9 -0.1557271885350679 23 0.067415417102679356
		 29.996 0;
createNode animCurveTA -n "Tail2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 -26.42542439495335 29.996 -26.42542439495335;
createNode animCurveTA -n "Tail2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0.30581319857580896 29.996 0.30581319857580896;
createNode animCurveTA -n "Tail2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 91.689939555236521 29.996 91.689939555236521;
createNode animCurveTU -n "Tail2_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail2_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail2_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail2_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Tail2_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Character_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Character_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Character_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Upper_Body_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Upper_Body_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Upper_Body_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9 -2 23 2 29.996 0;
createNode animCurveTA -n "Tail3_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0 9.8 0 20.46 0 23.94 0 29.996 0;
createNode animCurveTA -n "Tail3_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0 9.8 0 20.46 0 23.94 0 29.996 0;
createNode animCurveTA -n "Tail3_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 -19.308554849944144 9.8 -59.78405669703929
		 20.46 -23.50747618726113 23.94 29.511618400099639 29.996 0;
createNode animCurveTA -n "Head_Neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Head_Neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Head_Neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Head_FK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Head_FK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9 -3.0000000000000004 23 3.0000000000000004
		 29.996 0;
createNode animCurveTA -n "Head_FK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Face_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Face_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Face_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail2_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail2_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail2_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 -18.535526895154369 29.996 -18.535526895154369;
createNode animCurveTA -n "Tail_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 -4.5220972688098815 29.996 -4.5220972688098815;
createNode animCurveTA -n "Tail_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 -93.095546242124598 29.996 -93.095546242124598;
createNode animCurveTA -n "Spine_Middle_IK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Middle_IK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Middle_IK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Torso_IK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Torso_IK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Torso_IK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail2Seg2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail2Seg2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -3.8844302890276721 9.8 -3.8844302890276721
		 23.2 -3.8844302890276721 29.996 -3.8844302890276721;
createNode animCurveTA -n "Tail2Seg2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 14.054592966676157 9.8 14.054592966676157
		 23.2 14.054592966676157 29.996 14.054592966676157;
createNode animCurveTA -n "R_Hand_Twist_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "R_Hand_Twist_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 33.600814031243125 9.8 33.600814031243125
		 23.2 33.600814031243125 29.996 33.600814031243125;
createNode animCurveTA -n "R_Hand_Twist_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Rr_Claw_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -6.936940072590752 9.8 -6.936940072590752
		 23.2 -6.936940072590752 29.996 -6.936940072590752;
createNode animCurveTA -n "Rr_Claw_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Rr_Claw_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3Seg2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3Seg2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Tail3Seg2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "TailSeg2_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -12.546282365827269 9.8 -12.546282365827269
		 23 -12.546282365827269 29.996 -12.546282365827269;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTA -n "TailSeg2_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -41.197134251351052 9.8 -41.197134251351052
		 23 -41.197134251351052 29.996 -41.197134251351052;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTA -n "TailSeg2_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23 0 29.996 0;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTA -n "L_Hand_Twist_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "L_Hand_Twist_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1.7698352908164823 9.8 1.7698352908164823
		 23.2 1.7698352908164823 29.996 1.7698352908164823;
createNode animCurveTA -n "L_Hand_Twist_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Ll_Claw_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 -7.6229606796877247 9.8 -7.6229606796877247
		 29.996 -7.6229606796877247;
createNode animCurveTA -n "Ll_Claw_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 0 9.8 0 29.996 0;
createNode animCurveTA -n "Ll_Claw_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 0 9.8 0 29.996 0;
createNode animCurveTU -n "Character_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Character_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Character_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Character_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Character_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Character_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Character_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Upper_Body_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTL -n "Upper_Body_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTL -n "Upper_Body_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Upper_Body_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_Display";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Upper_Body_Spine_FKIK";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_Head_FKIK";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Upper_Body_Head_Isolation";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_Tail3_Isolation";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_Tail2_Isolation";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Upper_Body_Tail_Isolation";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTL -n "Tail3_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0.49016225408741998 9.8 1.2793090739873376
		 20.46 0.35011005558060482 23.94 -0.56805295738325934 29.996 0;
createNode animCurveTL -n "Tail3_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 -0.12226158419593729 9.8 -0.33359757487339747
		 20.46 0.0063955591578357465 23.94 0.32094100489959504 29.996 0;
createNode animCurveTL -n "Tail3_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0 9.8 0 20.46 0 23.94 0 29.996 0;
createNode animCurveTU -n "Tail3_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 1 8.06 1 9.8 1 20.46 1 23.94 1 29.996 1;
createNode animCurveTU -n "Tail3_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 1 8.06 1 9.8 1 20.46 1 23.94 1 29.996 1;
createNode animCurveTU -n "Tail3_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 1 8.06 1 9.8 1 20.46 1 23.94 1 29.996 1;
createNode animCurveTU -n "Tail3_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0 9.8 0 20.46 0 23.94 0 29.996 0;
createNode animCurveTU -n "Tail3_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1.288 0 8.06 0 9.8 0 20.46 0 23.94 0 29.996 0;
createNode animCurveTL -n "Head_Neck_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Head_Neck_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.00017458037365170043 9.8 -0.00017458037365170043
		 23.2 -0.00017458037365170043 29.996 -0.00017458037365170043;
createNode animCurveTL -n "Head_Neck_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Head_FK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1.0000000000000002 29.996 1.0000000000000002;
createNode animCurveTU -n "Head_FK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1.0000000000000002 29.996 1.0000000000000002;
createNode animCurveTU -n "Head_FK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTA -n "Head_FK_rotateAxisX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Head_FK_rotateAxisY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTA -n "Head_FK_rotateAxisZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Face_Control_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Face_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Face_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Face_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Face_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Face_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Face_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Tail_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 2.8082912110146108 29.996 2.8082912110146108;
createNode animCurveTL -n "Tail_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.25433482088008807 9 -0.237085134081403
		 23 -0.021874262113912878 29.996 -0.25433482088008807;
createNode animCurveTL -n "Tail_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.32356150590828658 9 -0.34881466115153387
		 23 -0.53048270818556786 29.996 -0.32356150590828658;
createNode animCurveTU -n "Tail_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 1 29.996 1;
createNode animCurveTU -n "Tail_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTU -n "Tail_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1.288 0 29.996 0;
createNode animCurveTL -n "Spine_Torso_IK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Torso_IK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.032756867151112125 9.8 -0.032756867151112125
		 23.2 -0.032756867151112125 29.996 -0.032756867151112125;
createNode animCurveTL -n "Spine_Torso_IK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Spine_Torso_IK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Torso_IK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Torso_IK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Middle_IK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Middle_IK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Middle_IK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Spine_Middle_IK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Middle_IK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Middle_IK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Spine_Pelvis_IK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Pelvis_IK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Spine_Pelvis_IK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Tail3Seg2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Tail3Seg2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Tail3Seg2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Tail3Seg2_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail3Seg2_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail3Seg2_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail3Seg2_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Tail3Seg2_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Tail2Seg2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0.3559602132290059 9.8 0.3559602132290059
		 23.2 0.3559602132290059 29.996 0.3559602132290059;
createNode animCurveTL -n "Tail2Seg2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0.16783716945083949 9.8 0.16783716945083949
		 23.2 0.16783716945083949 29.996 0.16783716945083949;
createNode animCurveTL -n "Tail2Seg2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.21177292106665338 9.8 -0.21177292106665338
		 23.2 -0.21177292106665338 29.996 -0.21177292106665338;
createNode animCurveTU -n "Tail2Seg2_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail2Seg2_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail2Seg2_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Tail2Seg2_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Tail2Seg2_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "R_Hand_Twist_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "R_Hand_Twist_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "R_Hand_Twist_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "R_Hand_Twist_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "R_Hand_Twist_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "R_Hand_Twist_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "R_Hand_Twist_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Rr_Claw_Control_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "Rr_Claw_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Rr_Claw_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "Rr_Claw_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "Rr_Claw_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Rr_Claw_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Rr_Claw_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "TailSeg2_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.49318826623167639 9.8 -0.49318826623167639
		 23 -0.49318826623167639 29.996 -0.49318826623167639;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTL -n "TailSeg2_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0.16528891191006254 9.8 0.16528891191006254
		 23 0.16528891191006254 29.996 0.16528891191006254;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTL -n "TailSeg2_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 -0.2853034592588361 9.8 -0.2853034592588361
		 23 -0.2853034592588361 29.996 -0.2853034592588361;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "TailSeg2_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23 1 29.996 1;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "TailSeg2_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23 1 29.996 1;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "TailSeg2_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23 1 29.996 1;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "TailSeg2_Control_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23 0 29.996 0;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "TailSeg2_Control_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23 0 29.996 0;
	setAttr -s 4 ".kit[2:3]"  2 18;
	setAttr -s 4 ".kot[2:3]"  5 18;
createNode animCurveTU -n "L_Hand_Twist_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTL -n "L_Hand_Twist_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "L_Hand_Twist_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTL -n "L_Hand_Twist_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 0 9.8 0 23.2 0 29.996 0;
createNode animCurveTU -n "L_Hand_Twist_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "L_Hand_Twist_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "L_Hand_Twist_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1.288 1 9.8 1 23.2 1 29.996 1;
createNode animCurveTU -n "Ll_Claw_Control_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 1 9.8 1 29.996 1;
createNode animCurveTL -n "Ll_Claw_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 0 9.8 0 29.996 0;
createNode animCurveTL -n "Ll_Claw_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 0 9.8 0 29.996 0;
createNode animCurveTL -n "Ll_Claw_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 0 9.8 0 29.996 0;
createNode animCurveTU -n "Ll_Claw_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 1 9.8 1 29.996 1;
createNode animCurveTU -n "Ll_Claw_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 1 9.8 1 29.996 1;
createNode animCurveTU -n "Ll_Claw_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1.288 1 9.8 1 29.996 1;
createNode objectSet -n "Set";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
select -ne :time1;
	setAttr ".o" 30;
	setAttr ".unw" 30;
select -ne :renderPartition;
	setAttr -s 140 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 102 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 97 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 28 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 29 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "renderMan";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 10 ".sol";
connectAttr "Kelvin_v1_RigFinalRN.phl[1]" "Set.dsm" -na;
connectAttr "Character_translateX.o" "Kelvin_v1_RigFinalRN.phl[2]";
connectAttr "Character_translateY.o" "Kelvin_v1_RigFinalRN.phl[3]";
connectAttr "Character_translateZ.o" "Kelvin_v1_RigFinalRN.phl[4]";
connectAttr "Character_rotateX.o" "Kelvin_v1_RigFinalRN.phl[5]";
connectAttr "Character_rotateY.o" "Kelvin_v1_RigFinalRN.phl[6]";
connectAttr "Character_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[7]";
connectAttr "Character_visibility.o" "Kelvin_v1_RigFinalRN.phl[8]";
connectAttr "Character_scaleX.o" "Kelvin_v1_RigFinalRN.phl[9]";
connectAttr "Character_scaleY.o" "Kelvin_v1_RigFinalRN.phl[10]";
connectAttr "Character_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[11]";
connectAttr "Upper_Body_Display.o" "Kelvin_v1_RigFinalRN.phl[12]";
connectAttr "Upper_Body_Spine_FKIK.o" "Kelvin_v1_RigFinalRN.phl[13]";
connectAttr "Upper_Body_Head_FKIK.o" "Kelvin_v1_RigFinalRN.phl[14]";
connectAttr "Upper_Body_Head_Isolation.o" "Kelvin_v1_RigFinalRN.phl[15]";
connectAttr "Upper_Body_Tail3_Isolation.o" "Kelvin_v1_RigFinalRN.phl[16]";
connectAttr "Upper_Body_Tail2_Isolation.o" "Kelvin_v1_RigFinalRN.phl[17]";
connectAttr "Upper_Body_Tail_Isolation.o" "Kelvin_v1_RigFinalRN.phl[18]";
connectAttr "Kelvin_v1_RigFinalRN.phl[19]" "Set.dsm" -na;
connectAttr "Upper_Body_rotateX.o" "Kelvin_v1_RigFinalRN.phl[20]";
connectAttr "Upper_Body_rotateY.o" "Kelvin_v1_RigFinalRN.phl[21]";
connectAttr "Upper_Body_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[22]";
connectAttr "Upper_Body_translateX.o" "Kelvin_v1_RigFinalRN.phl[23]";
connectAttr "Upper_Body_translateY.o" "Kelvin_v1_RigFinalRN.phl[24]";
connectAttr "Upper_Body_translateZ.o" "Kelvin_v1_RigFinalRN.phl[25]";
connectAttr "Upper_Body_scaleX.o" "Kelvin_v1_RigFinalRN.phl[26]";
connectAttr "Upper_Body_scaleY.o" "Kelvin_v1_RigFinalRN.phl[27]";
connectAttr "Upper_Body_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[28]";
connectAttr "Kelvin_v1_RigFinalRN.phl[29]" "Set.dsm" -na;
connectAttr "Tail3_Base_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[30]";
connectAttr "Tail3_Base_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[31]";
connectAttr "Tail3_Base_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[32]";
connectAttr "Tail3_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[33]";
connectAttr "Tail3_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[34]";
connectAttr "Tail3_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[35]";
connectAttr "Tail3_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[36]";
connectAttr "Tail3_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[37]";
connectAttr "Kelvin_v1_RigFinalRN.phl[38]" "Set.dsm" -na;
connectAttr "Tail3_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[39]";
connectAttr "Tail3_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[40]";
connectAttr "Tail3_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[41]";
connectAttr "Tail3_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[42]";
connectAttr "Tail3_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[43]";
connectAttr "Tail3_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[44]";
connectAttr "Kelvin_v1_RigFinalRN.phl[45]" "Set.dsm" -na;
connectAttr "Head_Neck_translateX.o" "Kelvin_v1_RigFinalRN.phl[46]";
connectAttr "Head_Neck_translateY.o" "Kelvin_v1_RigFinalRN.phl[47]";
connectAttr "Head_Neck_translateZ.o" "Kelvin_v1_RigFinalRN.phl[48]";
connectAttr "Head_Neck_rotateX.o" "Kelvin_v1_RigFinalRN.phl[49]";
connectAttr "Head_Neck_rotateY.o" "Kelvin_v1_RigFinalRN.phl[50]";
connectAttr "Head_Neck_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[51]";
connectAttr "Head_FK_rotateAxisX.o" "Kelvin_v1_RigFinalRN.phl[52]";
connectAttr "Head_FK_rotateAxisY.o" "Kelvin_v1_RigFinalRN.phl[53]";
connectAttr "Head_FK_rotateAxisZ.o" "Kelvin_v1_RigFinalRN.phl[54]";
connectAttr "Head_FK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[55]";
connectAttr "Head_FK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[56]";
connectAttr "Head_FK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[57]";
connectAttr "Kelvin_v1_RigFinalRN.phl[58]" "Set.dsm" -na;
connectAttr "Head_FK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[59]";
connectAttr "Head_FK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[60]";
connectAttr "Head_FK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[61]";
connectAttr "Face_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[62]";
connectAttr "Face_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[63]";
connectAttr "Face_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[64]";
connectAttr "Face_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[65]";
connectAttr "Face_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[66]";
connectAttr "Face_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[67]";
connectAttr "Face_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[68]";
connectAttr "Face_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[69]";
connectAttr "Face_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[70]";
connectAttr "Face_Control_visibility.o" "Kelvin_v1_RigFinalRN.phl[71]";
connectAttr "Kelvin_v1_RigFinalRN.phl[72]" "Set.dsm" -na;
connectAttr "Kelvin_v1_RigFinalRN.phl[73]" "Set.dsm" -na;
connectAttr "Tail2_Base_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[74]";
connectAttr "Tail2_Base_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[75]";
connectAttr "Tail2_Base_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[76]";
connectAttr "Tail2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[77]";
connectAttr "Tail2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[78]";
connectAttr "Tail2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[79]";
connectAttr "Tail2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[80]";
connectAttr "Tail2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[81]";
connectAttr "Kelvin_v1_RigFinalRN.phl[82]" "Set.dsm" -na;
connectAttr "Tail2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[83]";
connectAttr "Tail2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[84]";
connectAttr "Tail2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[85]";
connectAttr "Tail2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[86]";
connectAttr "Tail2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[87]";
connectAttr "Tail2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[88]";
connectAttr "Kelvin_v1_RigFinalRN.phl[89]" "Set.dsm" -na;
connectAttr "Tail_Base_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[90]";
connectAttr "Tail_Base_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[91]";
connectAttr "Tail_Base_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[92]";
connectAttr "Tail_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[93]";
connectAttr "Tail_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[94]";
connectAttr "Tail_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[95]";
connectAttr "Tail_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[96]";
connectAttr "Tail_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[97]";
connectAttr "Kelvin_v1_RigFinalRN.phl[98]" "Set.dsm" -na;
connectAttr "Tail_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[99]";
connectAttr "Tail_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[100]";
connectAttr "Tail_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[101]";
connectAttr "Tail_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[102]";
connectAttr "Tail_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[103]";
connectAttr "Tail_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[104]";
connectAttr "Spine_Torso_IK_rotateAxisX.o" "Kelvin_v1_RigFinalRN.phl[105]";
connectAttr "Spine_Torso_IK_rotateAxisY.o" "Kelvin_v1_RigFinalRN.phl[106]";
connectAttr "Spine_Torso_IK_rotateAxisZ.o" "Kelvin_v1_RigFinalRN.phl[107]";
connectAttr "Spine_Torso_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[108]";
connectAttr "Spine_Torso_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[109]";
connectAttr "Spine_Torso_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[110]";
connectAttr "Spine_Torso_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[111]";
connectAttr "Spine_Torso_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[112]";
connectAttr "Spine_Torso_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[113]";
connectAttr "Kelvin_v1_RigFinalRN.phl[114]" "Set.dsm" -na;
connectAttr "Spine_Torso_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[115]";
connectAttr "Spine_Torso_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[116]";
connectAttr "Spine_Torso_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[117]";
connectAttr "Spine_Middle_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[118]";
connectAttr "Spine_Middle_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[119]";
connectAttr "Spine_Middle_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[120]";
connectAttr "Spine_Middle_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[121]";
connectAttr "Spine_Middle_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[122]";
connectAttr "Spine_Middle_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[123]";
connectAttr "Spine_Middle_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[124]";
connectAttr "Spine_Middle_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[125]";
connectAttr "Spine_Middle_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[126]";
connectAttr "Kelvin_v1_RigFinalRN.phl[127]" "Set.dsm" -na;
connectAttr "Spine_Pelvis_IK_rotateAxisX.o" "Kelvin_v1_RigFinalRN.phl[128]";
connectAttr "Spine_Pelvis_IK_rotateAxisY.o" "Kelvin_v1_RigFinalRN.phl[129]";
connectAttr "Spine_Pelvis_IK_rotateAxisZ.o" "Kelvin_v1_RigFinalRN.phl[130]";
connectAttr "Spine_Pelvis_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[131]";
connectAttr "Spine_Pelvis_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[132]";
connectAttr "Spine_Pelvis_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[133]";
connectAttr "Spine_Pelvis_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[134]";
connectAttr "Spine_Pelvis_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[135]";
connectAttr "Spine_Pelvis_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[136]";
connectAttr "Kelvin_v1_RigFinalRN.phl[137]" "Set.dsm" -na;
connectAttr "Spine_Pelvis_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[138]";
connectAttr "Spine_Pelvis_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[139]";
connectAttr "Spine_Pelvis_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[140]";
connectAttr "Tail3Seg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[141]";
connectAttr "Tail3Seg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[142]";
connectAttr "Tail3Seg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[143]";
connectAttr "Tail3Seg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[144]";
connectAttr "Tail3Seg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[145]";
connectAttr "Tail3Seg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[146]";
connectAttr "Tail3Seg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[147]";
connectAttr "Tail3Seg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[148]";
connectAttr "Kelvin_v1_RigFinalRN.phl[149]" "Set.dsm" -na;
connectAttr "Tail3Seg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[150]";
connectAttr "Tail3Seg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[151]";
connectAttr "Tail3Seg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[152]";
connectAttr "Tail2Seg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[153]";
connectAttr "Tail2Seg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[154]";
connectAttr "Tail2Seg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[155]";
connectAttr "Tail2Seg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[156]";
connectAttr "Tail2Seg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[157]";
connectAttr "Tail2Seg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[158]";
connectAttr "Tail2Seg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[159]";
connectAttr "Tail2Seg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[160]";
connectAttr "Kelvin_v1_RigFinalRN.phl[161]" "Set.dsm" -na;
connectAttr "Tail2Seg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[162]";
connectAttr "Tail2Seg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[163]";
connectAttr "Tail2Seg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[164]";
connectAttr "R_Hand_Twist_translateX.o" "Kelvin_v1_RigFinalRN.phl[165]";
connectAttr "R_Hand_Twist_translateY.o" "Kelvin_v1_RigFinalRN.phl[166]";
connectAttr "R_Hand_Twist_translateZ.o" "Kelvin_v1_RigFinalRN.phl[167]";
connectAttr "R_Hand_Twist_rotateX.o" "Kelvin_v1_RigFinalRN.phl[168]";
connectAttr "R_Hand_Twist_rotateY.o" "Kelvin_v1_RigFinalRN.phl[169]";
connectAttr "R_Hand_Twist_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[170]";
connectAttr "R_Hand_Twist_scaleX.o" "Kelvin_v1_RigFinalRN.phl[171]";
connectAttr "R_Hand_Twist_scaleY.o" "Kelvin_v1_RigFinalRN.phl[172]";
connectAttr "R_Hand_Twist_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[173]";
connectAttr "Kelvin_v1_RigFinalRN.phl[174]" "Set.dsm" -na;
connectAttr "R_Hand_Twist_visibility.o" "Kelvin_v1_RigFinalRN.phl[175]";
connectAttr "Rr_Claw_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[176]";
connectAttr "Rr_Claw_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[177]";
connectAttr "Rr_Claw_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[178]";
connectAttr "Rr_Claw_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[179]";
connectAttr "Rr_Claw_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[180]";
connectAttr "Rr_Claw_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[181]";
connectAttr "Rr_Claw_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[182]";
connectAttr "Rr_Claw_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[183]";
connectAttr "Rr_Claw_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[184]";
connectAttr "Kelvin_v1_RigFinalRN.phl[185]" "Set.dsm" -na;
connectAttr "Rr_Claw_Control_visibility.o" "Kelvin_v1_RigFinalRN.phl[186]";
connectAttr "TailSeg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[187]";
connectAttr "TailSeg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[188]";
connectAttr "TailSeg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[189]";
connectAttr "TailSeg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[190]";
connectAttr "TailSeg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[191]";
connectAttr "TailSeg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[192]";
connectAttr "TailSeg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[193]";
connectAttr "TailSeg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[194]";
connectAttr "Kelvin_v1_RigFinalRN.phl[195]" "Set.dsm" -na;
connectAttr "TailSeg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[196]";
connectAttr "TailSeg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[197]";
connectAttr "TailSeg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[198]";
connectAttr "L_Hand_Twist_translateX.o" "Kelvin_v1_RigFinalRN.phl[199]";
connectAttr "L_Hand_Twist_translateY.o" "Kelvin_v1_RigFinalRN.phl[200]";
connectAttr "L_Hand_Twist_translateZ.o" "Kelvin_v1_RigFinalRN.phl[201]";
connectAttr "L_Hand_Twist_rotateX.o" "Kelvin_v1_RigFinalRN.phl[202]";
connectAttr "L_Hand_Twist_rotateY.o" "Kelvin_v1_RigFinalRN.phl[203]";
connectAttr "L_Hand_Twist_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[204]";
connectAttr "L_Hand_Twist_scaleX.o" "Kelvin_v1_RigFinalRN.phl[205]";
connectAttr "L_Hand_Twist_scaleY.o" "Kelvin_v1_RigFinalRN.phl[206]";
connectAttr "L_Hand_Twist_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[207]";
connectAttr "Kelvin_v1_RigFinalRN.phl[208]" "Set.dsm" -na;
connectAttr "L_Hand_Twist_visibility.o" "Kelvin_v1_RigFinalRN.phl[209]";
connectAttr "Ll_Claw_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[210]";
connectAttr "Ll_Claw_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[211]";
connectAttr "Ll_Claw_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[212]";
connectAttr "Ll_Claw_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[213]";
connectAttr "Ll_Claw_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[214]";
connectAttr "Ll_Claw_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[215]";
connectAttr "Ll_Claw_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[216]";
connectAttr "Ll_Claw_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[217]";
connectAttr "Ll_Claw_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[218]";
connectAttr "Kelvin_v1_RigFinalRN.phl[219]" "Set.dsm" -na;
connectAttr "Ll_Claw_Control_visibility.o" "Kelvin_v1_RigFinalRN.phl[220]";
connectAttr "pPlane1_rotateX.o" "pPlane1.rx";
connectAttr "pPlane1_rotateY.o" "pPlane1.ry";
connectAttr "pPlane1_rotateZ.o" "pPlane1.rz";
connectAttr "pPlane1_visibility.o" "pPlane1.v";
connectAttr "pPlane1_translateX.o" "pPlane1.tx";
connectAttr "pPlane1_translateY.o" "pPlane1.ty";
connectAttr "pPlane1_translateZ.o" "pPlane1.tz";
connectAttr "pPlane1_scaleX.o" "pPlane1.sx";
connectAttr "pPlane1_scaleY.o" "pPlane1.sy";
connectAttr "pPlane1_scaleZ.o" "pPlane1.sz";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":rmanFinalGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanPreviewGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanRerenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanReyesRerenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanDeepShadowGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanAreaShadowGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanShadowGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanBakeGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanBakeRenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSSMakeBrickmapGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSSDiffuseGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSSOrganizeGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSSRenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSBMakeBrickmapGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSBMakePtCloudGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSBPtRenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSBRenderGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":rmanSBMakePtexGlobals.msg" ":renderManGlobals.p" -na;
connectAttr ":defaultRenderGlobals.msg" "mtorPartition.rgcnx";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Kelvin_v1_RigFinalRN\" \"\" \"/Users/publicuser/Desktop/Kelvin Animation/Kelvin Project Folder/Kelvin_v1_RigFinal.ma\" 3103562774 \"/Users/publicuser/Desktop/Kelvin Animation/Kelvin Project Folder/Kelvin_v1_RigFinal.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Kelvin_Idle_WIP_2.ma
