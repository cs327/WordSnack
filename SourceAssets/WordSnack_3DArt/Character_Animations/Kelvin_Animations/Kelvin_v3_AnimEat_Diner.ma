//Maya ASCII 2015 scene
//Name: Kelvin_v3_AnimEat_Diner.ma
//Last modified: Thu, Oct 23, 2014 03:49:01 PM
//Codeset: UTF-8
file -rdi 1 -ns "Kelvin_v1_RigFinal" -rfn "Kelvin_v1_RigFinalRN" -op "v=0;" "/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Kelvin_TexturedRig/Kelvin_v2_RigFinal.ma";
file -rdi 2 -ns "Kelvin_v1_UVModelFinal" -rfn "Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN"
		 "/Users/michaelbarrow/Desktop/Kelvin Project Folder 2/Kelvin_v1_Model_FixClaws.ma";
file -rdi 2 -ns "Kelvin_v1_FixedHeadUVs" -rfn "Kelvin_v1_RigFinal:Kelvin_v1_FixedHeadUVsRN"
		 "/Users/michaelbarrow/Desktop/Kelvin Project Folder 2/Kelvin_v1_FixedHeadUVs.ma";
file -rdi 1 -ns "Diner_interior_Texturewip_4__1_" -rfn "Diner_interior_Texturewip_4__1_RN"
		 -op "v=0;" "/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Diner_interior_Texturewip_4 (1).ma";
file -r -ns "Kelvin_v1_RigFinal" -dr 1 -rfn "Kelvin_v1_RigFinalRN" -op "v=0;" "/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Kelvin_TexturedRig/Kelvin_v2_RigFinal.ma";
file -r -ns "Diner_interior_Texturewip_4__1_" -dr 1 -rfn "Diner_interior_Texturewip_4__1_RN"
		 -op "v=0;" "/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Diner_interior_Texturewip_4 (1).ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.18 ";
requires -nodeType "RenderMan" "RenderMan_for_Maya" "5.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3050118319207904 11.728205421398419 18.074187015657479 ;
	setAttr ".r" -type "double3" -11.138352729606819 3.4000000000028265 4.9783794943576273e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 11.592346837172805;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.12489561124931459 10.963814258655802 6.1391452507708317 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.9373406723789302 100.1 7.8118575499150529 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 41.746566746746026;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.40588839638713115 9.8557624523517084 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 26.256336631830841;
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
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 4 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
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
	setAttr -s 178 ".lnk";
	setAttr -s 176 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Kelvin_v1_RigFinalRN";
	setAttr ".fn[0]" -type "string" "/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Kelvin_v1_RigFinal.ma";
	setAttr -s 224 ".phl";
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
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Kelvin_v1_RigFinalRN"
		"Kelvin_v1_RigFinal:Kelvin_v1_FixedHeadUVsRN" 0
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalHeadRN" 0
		"Kelvin_v1_RigFinalRN" 0
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN" 0
		"Kelvin_v1_RigFinalRN" 442
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character" "translate" 
		" -type \"double3\" 0 3.35112434783471302 6.47937747300029443"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character" "translateY" 
		" -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character" "translateZ" 
		" -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Display" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Spine_FKIK" " -av -k 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Head_FKIK" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Head_Isolation" " -av -k 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Tail3_Isolation" " -av -k 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Tail2_Isolation" " -av -k 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body" 
		"Tail_Isolation" " -av -k 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_ikHandle1" 
		"translate" " -type \"double3\" -0.46971445270875933 3.48252437008285654 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_ikHandle1" 
		"rotate" " -type \"double3\" 89.99999999999981526 0 102.06864466127080959"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translate" " -type \"double3\" 0 -0.00017458037365170043 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"scale" " -type \"double3\" 1.00000000000000022 1.00000000000000022 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateAxis" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateAxisX" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateAxisY" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK" 
		"rotateAxisZ" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints" " -s 11"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[0]" " -type \"double3\" 0.78361162489122493 0 -0.78361162489122382"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[1]" " -type \"double3\" 0 0 -1.10819418755438792"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[2]" " -type \"double3\" -0.78361162489122427 0 -0.78361162489122427"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[3]" " -type \"double3\" -1.10819418755438792 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[4]" " -type \"double3\" -0.78361162489122449 0 0.78361162489122416"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[5]" " -type \"double3\" 0 0 1.10819418755438792"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[6]" " -type \"double3\" 0.78361162489122405 0 0.78361162489122427"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig" 
		"controlPoints[7]" " -type \"double3\" 1.10819418755438792 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints" " -s 11"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[0]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[1]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[2]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[3]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[4]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[5]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[6]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_rotated|Kelvin_v1_RigFinal:Head_rotatedShapeOrig" 
		"controlPoints[7]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints" " -s 11"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[0]" " -type \"double3\" 3.23947389729850421 -0.0075858127550128274 -1.4301420562143945"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[1]" " -type \"double3\" 1.80933816551640314 -0.0033326218088456927 -2.02252629201854317"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[2]" " -type \"double3\" 0.3792024337343059 0.00092056913731886764 -1.43014205621439583"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[3]" " -type \"double3\" -0.21317918240420611 0.0026822985105835577 0"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[4]" " -type \"double3\" 0.37920243373430546 0.00092056913731947826 1.43014205621439472"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[5]" " -type \"double3\" 1.80933816551640159 -0.0033326218088466641 2.02252629201854361"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[6]" " -type \"double3\" 3.23947389729849933 -0.0075858127550129384 1.43014205621439605"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Head_FKShapeOrig1" 
		"controlPoints[7]" " -type \"double3\" 3.83185551343701425 -0.0093475421282772642 0"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"visibility" " -av 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints" " -s 11"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[0]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[1]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[2]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[3]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[4]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[5]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[6]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control|Kelvin_v1_RigFinal:Face_ControlShape" 
		"controlPoints[7]" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translate" " -type \"double3\" -4.01340932269948247 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotate" " -type \"double3\" -26.4254243949533496 0.30581319857580896 91.68993955523652062"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"Twist" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control" 
		"Roll" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_ikHandle1" 
		"translate" " -type \"double3\" -4.04346001697801327 4.09185489816637116 -2.72720189785560052"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_ikHandle1" 
		"rotate" " -type \"double3\" 147.51915851378450384 30.89780385770167825 161.89745415667556472"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translate" " -type \"double3\" 2.80829121101461077 -0.25433482088008807 -0.32356150590828658"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotate" " -type \"double3\" -18.53552689515436924 -4.5220972688098815 -93.09554624212459828"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"Twist" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control" 
		"Roll" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_ikHandle1" 
		"translate" " -type \"double3\" 2.8282354669616403 3.54919522851454783 -2.45250607548897648"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_ikHandle1" 
		"rotate" " -type \"double3\" 34.4722631433624116 33.1573478316795871 20.58175217018727921"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"translate" " -type \"double3\" 0 -0.032756867151112125 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateAxis" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateAxisX" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateAxisY" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK" 
		"rotateAxisZ" " -av -k 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_splineIKhandle" 
		"translate" " -type \"double3\" 0 7.10259359108637511 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_splineIKhandle" 
		"rotate" " -type \"double3\" 0 0 90.00000000000007105"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_ikHandle1" 
		"translate" " -type \"double3\" 0.092494648492664311 3.60171383798666511 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_ikHandle1" 
		"rotate" " -type \"double3\" 90.00000000000008527 0 89.15032463198001267"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translate" " -type \"double3\" 0.3559602132290059 0.16783716945083949 -0.21177292106665338"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotate" " -type \"double3\" 0 -3.88443028902767207 14.05459296667615732"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"Twist" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control" 
		"Roll" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist" 
		"rotate" " -type \"double3\" 0 33.60081403124312516 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control" 
		"rotate" " -type \"double3\" -6.93694007259075196 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_ikHandle1" 
		"translate" " -type \"double3\" 0.35460732574785148 3.66671227181504022 -0.68707801966341009"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_ikHandle1" 
		"rotate" " -type \"double3\" 92.01362597274967925 13.04220041061532243 98.85541531919670888"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translate" " -type \"double3\" -0.49318826623167639 0.16528891191006254 -0.2853034592588361"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"translateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotate" " -type \"double3\" -12.54628236582726863 -41.19713425135105211 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"rotateZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"scaleZ" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"Twist" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control" 
		"Roll" " -av -k 1 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist" 
		"rotate" " -type \"double3\" 0 1.76983529081648228 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist" 
		"rotateY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control" 
		"rotate" " -type \"double3\" -7.62296067968772473 0 0"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control" 
		"rotateX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_ikHandle1" 
		"translate" " -type \"double3\" -0.70259383144126453 3.93038472793887195 -0.76085900836287124"
		
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_ikHandle1" 
		"rotate" " -type \"double3\" 90.03253120327876502 20.06769684347851523 90.0948070988263936"
		
		2 "Kelvin_v1_RigFinal:head_Head_tweak2" "pl[0].cp[0:7]" " -s 8 -type \"double3\" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[1]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[2]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[3]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[4]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[5]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[6]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[7]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[8]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[9]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[10]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[11]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Display" 
		"Kelvin_v1_RigFinalRN.placeHolderList[12]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Spine_FKIK" 
		"Kelvin_v1_RigFinalRN.placeHolderList[13]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Head_FKIK" 
		"Kelvin_v1_RigFinalRN.placeHolderList[14]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Head_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[15]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail3_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[16]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail2_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[17]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.Tail_Isolation" 
		"Kelvin_v1_RigFinalRN.placeHolderList[18]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[19]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[20]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[21]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[22]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[23]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[24]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[25]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[26]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[27]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[28]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[29]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[30]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[31]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[32]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[33]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[34]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[35]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[36]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[37]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[38]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[39]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[40]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[41]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[42]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[43]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_JOINTS|Kelvin_v1_RigFinal:Head_joint1|Kelvin_v1_RigFinal:Head_joint2|Kelvin_v1_RigFinal:Head_joint3|Kelvin_v1_RigFinal:Tail3_scalingCompensate|Kelvin_v1_RigFinal:Tail3_pivotCompensate|Kelvin_v1_RigFinal:Tail3_RIG|Kelvin_v1_RigFinal:Tail3_isolate|Kelvin_v1_RigFinal:Tail3_Base_Control|Kelvin_v1_RigFinal:Tail3_controlnull|Kelvin_v1_RigFinal:Tail3_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[44]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[45]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[46]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[47]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[48]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[49]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[50]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[51]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[52]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[53]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[54]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[55]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[56]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[57]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[58]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[59]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[60]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[61]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[62]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[63]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[64]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[65]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[66]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[67]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[68]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[69]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[70]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[71]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Spine_joint7|Kelvin_v1_RigFinal:Head_scalingCompensate|Kelvin_v1_RigFinal:Head_pivotCompensate|Kelvin_v1_RigFinal:Head_RIG|Kelvin_v1_RigFinal:Head_fk|Kelvin_v1_RigFinal:Head_setupthing|Kelvin_v1_RigFinal:Head_rotationisolated|Kelvin_v1_RigFinal:Head_Neck|Kelvin_v1_RigFinal:Head_fknull|Kelvin_v1_RigFinal:Head_isolatecalculate|Kelvin_v1_RigFinal:Head_FK|Kelvin_v1_RigFinal:Face_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[72]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[73]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[74]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[75]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[76]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[77]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[78]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[79]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[80]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[81]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[82]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[83]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[84]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[85]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[86]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[87]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[88]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail2_scalingCompensate|Kelvin_v1_RigFinal:Tail2_pivotCompensate|Kelvin_v1_RigFinal:Tail2_RIG|Kelvin_v1_RigFinal:Tail2_isolate|Kelvin_v1_RigFinal:Tail2_Base_Control|Kelvin_v1_RigFinal:Tail2_controlnull|Kelvin_v1_RigFinal:Tail2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[89]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[90]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[91]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[92]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[93]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[94]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[95]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[96]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[97]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[98]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[99]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[100]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[101]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[102]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[103]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[104]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[105]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:JOINTS|Kelvin_v1_RigFinal:Spine_JOINTS|Kelvin_v1_RigFinal:Spine_joint1|Kelvin_v1_RigFinal:Spine_joint2|Kelvin_v1_RigFinal:Spine_joint3|Kelvin_v1_RigFinal:Spine_joint4|Kelvin_v1_RigFinal:Spine_joint5|Kelvin_v1_RigFinal:Spine_joint6|Kelvin_v1_RigFinal:Tail_scalingCompensate|Kelvin_v1_RigFinal:Tail_pivotCompensate|Kelvin_v1_RigFinal:Tail_RIG|Kelvin_v1_RigFinal:Tail_isolate|Kelvin_v1_RigFinal:Tail_Base_Control|Kelvin_v1_RigFinal:Tail_controlnull|Kelvin_v1_RigFinal:Tail_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[106]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[107]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[108]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[109]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[110]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[111]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[112]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[113]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[114]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[115]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[116]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[117]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[118]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_torsonullIK|Kelvin_v1_RigFinal:Spine_Torso_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[119]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[120]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[121]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[122]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[123]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[124]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[125]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[126]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[127]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[128]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_middlenullIK|Kelvin_v1_RigFinal:Spine_middleIKoffset|Kelvin_v1_RigFinal:Spine_Middle_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[129]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[130]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[131]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateAxisZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[132]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[133]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[134]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[135]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[136]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[137]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[138]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[139]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[140]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[141]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Spine_RIG|Kelvin_v1_RigFinal:Spine_rig|Kelvin_v1_RigFinal:Spine_pelvisnullIK|Kelvin_v1_RigFinal:Spine_Pelvis_IK.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[142]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[143]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[144]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[145]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[146]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[147]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[148]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[149]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[150]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[151]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[152]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[153]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail3Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail3Seg2_RIG|Kelvin_v1_RigFinal:Tail3Seg2_isolate|Kelvin_v1_RigFinal:Tail3Seg2_Base_Control|Kelvin_v1_RigFinal:Tail3Seg2_controlnull|Kelvin_v1_RigFinal:Tail3Seg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[154]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[155]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[156]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[157]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[158]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[159]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[160]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[161]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[162]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[163]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[164]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[165]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[166]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[167]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[168]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[169]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[170]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[171]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[172]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[173]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[174]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[175]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[176]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[177]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[178]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[179]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[180]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[181]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[182]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[183]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[184]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[185]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[186]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[187]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[188]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:Tail2Seg2_pivotCompensate|Kelvin_v1_RigFinal:Tail2Seg2_RIG|Kelvin_v1_RigFinal:Tail2Seg2_isolate|Kelvin_v1_RigFinal:Tail2Seg2_Base_Control|Kelvin_v1_RigFinal:Tail2Seg2_controlnull|Kelvin_v1_RigFinal:Tail2Seg2_Control|Kelvin_v1_RigFinal:R_Hand_Twist|Kelvin_v1_RigFinal:Rr_Claw_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[189]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.Twist" 
		"Kelvin_v1_RigFinalRN.placeHolderList[190]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.Roll" 
		"Kelvin_v1_RigFinalRN.placeHolderList[191]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[192]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[193]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[194]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[195]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[196]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[197]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[198]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[199]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[200]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[201]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[202]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[203]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[204]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[205]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[206]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[207]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[208]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[209]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[210]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[211]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[212]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[213]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[214]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[215]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.translateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[216]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[217]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[218]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.rotateZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[219]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleX" 
		"Kelvin_v1_RigFinalRN.placeHolderList[220]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleY" 
		"Kelvin_v1_RigFinalRN.placeHolderList[221]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.scaleZ" 
		"Kelvin_v1_RigFinalRN.placeHolderList[222]" ""
		5 3 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.instObjGroups" 
		"Kelvin_v1_RigFinalRN.placeHolderList[223]" ""
		5 4 "Kelvin_v1_RigFinalRN" "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Character|Kelvin_v1_RigFinal:Upper_Body|Kelvin_v1_RigFinal:RIG|Kelvin_v1_RigFinal:TailSeg2_pivotCompensate|Kelvin_v1_RigFinal:TailSeg2_RIG|Kelvin_v1_RigFinal:TailSeg2_isolate|Kelvin_v1_RigFinal:TailSeg2_Base_Control|Kelvin_v1_RigFinal:TailSeg2_controlnull|Kelvin_v1_RigFinal:TailSeg2_Control|Kelvin_v1_RigFinal:L_Hand_Twist|Kelvin_v1_RigFinal:Ll_Claw_Control.visibility" 
		"Kelvin_v1_RigFinalRN.placeHolderList[224]" ""
		"Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinalRN" 4
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scaleX" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
		"scaleY" " -av"
		2 "|Kelvin_v1_RigFinal:Kelvin_Rig|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Kelvin|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Head|Kelvin_v1_RigFinal:Kelvin_v1_UVModelFinal:Mouth_Grate" 
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
	setAttr ".nt" -type "string" "settings:job";
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
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr -s 2 ".d";
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Null";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "null";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr -s 2 ".d";
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Null";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "null";
	setAttr ".rman__riopt__Display_type" -type "string" "null";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "ShadowZ";
	setAttr ".rman__torattr___task" -type "string" "display";
	setAttr -k on ".rman__torattr___computeBehavior" 1;
	setAttr -k on ".rman__torattr___primaryDisplay" 1;
	setAttr ".rman__torattr___dspyID" -type "string" "";
	setAttr ".rman__riopt__Display_name" -type "string" "[passinfo this filename]";
	setAttr ".rman__riopt__Display_type" -type "string" "shadow";
	setAttr ".rman__riopt__Display_mode" -type "string" "z";
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr -s 32 ".c";
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Rim";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Rim";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularEnvironment";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularEnvironment";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Translucence";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Translucence";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Z";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float Z";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseShadow";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Diffuse";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Diffuse";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseEnvironment";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseEnvironment";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseDirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "id";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float id";
	setAttr -k on ".rman__riopt__DisplayChannel_quantizeX" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__DisplayChannel_quantizeY" -type "long2" 0 0 ;
	setAttr -k on ".rman__riopt__Display_dither" 0;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Ci";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Ci";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "wP";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "point wP";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularDirectShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularDirectShadow";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseColor";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Occlusion";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float Occlusion";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularShadow";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "N";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "normal N";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Incandescence";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Incandescence";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularDirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularColor";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Oi";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Oi";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "OcclusionDirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color OcclusionDirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "GlowColor";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color GlowColor";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseDirectShadow";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseDirectShadow";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Subsurface";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Subsurface";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Specular";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Specular";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Refraction";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Refraction";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "DiffuseIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color DiffuseIndirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Backscattering";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Backscattering";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "SpecularIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color SpecularIndirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "Ambient";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color Ambient";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "wN";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "normal wN";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "OcclusionIndirect";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color OcclusionIndirect";
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr -s 4 ".c";
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "diffusemeanfreepath";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _diffusemeanfreepath";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "area";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _area";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "albedo";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _albedo";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "radiance_t";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _radiance_t";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr -s 6 ".c";
	setAttr ".nt" -type "string" "pass:render";
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
	setAttr ".nt" -type "string" "settings:display";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "color";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _color";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "diffusemeanfreepath";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _diffusemeanfreepath";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "area";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _area";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "float";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "float _float";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "albedo";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _albedo";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".t" 1;
	setAttr ".rman__torattr___class" -type "string" "radiance_t";
	setAttr ".rman__torattr___task" -type "string" "displaychannel";
	setAttr ".rman__riopt__DisplayChannel_name" -type "string" "color _radiance_t";
	setAttr -k on ".rman__riopt__DisplayChannel_EliminateDuplicateGrids" 1;
	setAttr ".nt" -type "string" "settings:displaychannel";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr ".nt" -type "string" "pass:command";
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
	setAttr ".nt" -type "string" "pass:command";
createNode partition -n "mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"Diner_interior_Texturewip_4__1_:GamePerspectiveCamera\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"Diner_interior_Texturewip_4__1_:GamePerspectiveCamera\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n"
		+ "                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Diner_interior_Texturewip_4__1_:GamePerspectiveCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Diner_interior_Texturewip_4__1_:GamePerspectiveCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 21 -ast 1 -aet 21 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Tail2_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -4.0134093226994825 4 -2.6511642700281377
		 6 -5.8922538702603262 8 -6.0713923502997869 10 -3.8786813106783158 12 -3.812102493446929
		 16 -3.9907912796333878 19 -4.0134093226994825 20 -4.0134093226994825 21 -4.0134093226994825;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTL -n "Tail2_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 -0.43593985943101721 6 -1.2745180300652461
		 8 -2.3356839046145312 10 -4.7336533865048365 12 -5.0102285323314053 16 -0.5979789765086243
		 19 0 20 0 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTL -n "Tail2_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0.33421808958074317 6 0.9771232702188497
		 8 -1.9217173704110779 10 0.60419289681041577 12 1.1312096014121533 16 -0.58326814513903924
		 19 0 20 0 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTA -n "Tail2_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -26.42542439495335 4 -26.42542439495335
		 6 -26.42542439495335 8 -26.42542439495335 10 -26.42542439495335 12 -8.5382538211028969
		 16 -18.145620313108235 19 -26.42542439495335 20 -26.42542439495335 21 -26.42542439495335;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "Tail2_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0.30581319857580896 4 0.30581319857580896
		 6 0.30581319857580896 8 0.30581319857580896 10 0.30581319857580896 12 -4.052098844498718
		 16 -1.7114235952623122 19 0.30581319857580896 20 0.30581319857580896 21 0.30581319857580896;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTA -n "Tail2_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 91.689939555236521 4 91.689939555236521
		 6 91.689939555236521 8 91.689939555236521 10 91.689939555236521 12 115.48806917190174
		 16 102.70587133265644 19 91.689939555236521 20 91.689939555236521 21 91.689939555236521;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		9 9;
createNode animCurveTU -n "Tail2_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 4 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail2_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 4 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail2_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 4 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail2_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 6 0 8 0 10 0 12 0 16 0 19 0 20 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail2_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 6 0 8 0 10 0 12 0 16 0 19 0 20 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTA -n "Character_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Character_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Character_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Upper_Body_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 -6.0000000000000115 6 10.999999999999989
		 11 -7.0000000000000187 13 -5.0000000000000018 17 2.0000000000000062 20 0 21 0;
	setAttr -s 8 ".kit[7]"  10;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "Upper_Body_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTA -n "Upper_Body_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTA -n "Tail3_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail3_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail3_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail3_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 -29.868014887890009 6 -61.124483256374276
		 10 45.735231349641978 13 -52.9390828237376 18 11.319661751901815 20 -11.5967929350843
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTA -n "Tail3_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 8.71299813278244 6 27.655625744046105
		 10 -12.32376778251659 13 13.769316131926896 18 -5.1481220658988232 20 3.4255052029189033
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTA -n "Tail3_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 -2.3280565287203316 6 -14.04893321178934
		 10 -5.3981396400995285 13 -7.2099587909567573 18 -0.21429987300799591 20 -0.21588095439305685
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTA -n "Head_Neck_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 11 0 13 0 15 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_Neck_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 11 0 13 0 15 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_Neck_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 11 0 13 0 15 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 11.205112273110101 6 4.8462831120403225
		 9 3.4517453718829447 12 0 14 0 16 0 18 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 2.980607348747605 6 -1.7884344241830146
		 9 -1.2730721645341549 12 0 14 0 16 0 18 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -8.7075493200603216 6 9.2082532200148197
		 9 15.253863916513071 12 -21.68283192282825 14 -11.724588909884785 16 8.9857129981368278
		 18 -0.64415151991282371 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Face_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 12 0 18 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "Face_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 12 0 18 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "Face_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 12 0 18 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "Tail2_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail2_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail2_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail_Base_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail_Base_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail_Base_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Tail_Control_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -18.535526895154369 3 -18.535526895154369
		 6 -18.535526895154369 8 -18.535526895154369 10 -18.535526895154369 12 -0.5212919505152489
		 16 -10.196905974705997 19 -18.535526895154369 20 -18.535526895154369 21 -18.535526895154369;
	setAttr -s 10 ".kit[7:9]"  3 10 10;
	setAttr -s 10 ".kot[7:9]"  3 10 9;
createNode animCurveTA -n "Tail_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -4.5220972688098815 3 -4.5220972688098815
		 6 -4.5220972688098815 8 -4.5220972688098815 10 -4.5220972688098815 12 0.51275294790291592
		 16 -2.1915121670779381 19 -4.5220972688098815 20 -4.5220972688098815 21 -4.5220972688098815;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTA -n "Tail_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -93.095546242124598 3 -93.095546242124598
		 6 -93.095546242124598 8 -93.095546242124598 10 -93.095546242124598 12 -117.89835300300261
		 16 -104.57653371235028 19 -93.095546242124598 20 -93.095546242124598 21 -93.095546242124598;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "Spine_Middle_IK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Middle_IK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Middle_IK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Torso_IK_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 1.2562706154581931 8 -0.40999587693760853
		 11 10.269677248622878 13 0.17092118150856961 15 -0.88768093519664293 17 -0.59279778457004484
		 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Spine_Torso_IK_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 -27.44886830441402 8 -4.1195186591299491
		 11 2.5916928332925511 13 -7.5324340413439366 15 -6.3935073260429514 17 -3.9820051443737308
		 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Spine_Torso_IK_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 -5.1406495571206818 8 -2.724055254662805
		 11 -6.9474306924969769 13 -1.410681262590286 15 -0.35878274169312979 17 -0.087392590422133251
		 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Tail2Seg2_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 -7.6455538531912106
		 13 -26.989961264161348 16 -13.697751104036843 19 0 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTA -n "Tail2Seg2_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -3.8844302890276721 3 -3.8844302890276721
		 6 -3.8844302890276721 7 -3.8844302890276721 10 -3.8844302890276721 12 -26.812298777704232
		 13 -2.8426429827250557 16 -1.368776465930877 19 -3.8844302890276721 21 -3.8844302890276721;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTA -n "Tail2Seg2_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 14.054592966676157 3 14.054592966676157
		 6 14.054592966676157 7 14.054592966676157 10 14.054592966676157 12 40.731122381072481
		 13 32.847178741270383 16 21.631073799415045 19 14.054592966676157 21 14.054592966676157;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "R_Hand_Twist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 16.330170060536119 17 0 20 0
		 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "R_Hand_Twist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 33.600814031243125 8 33.600814031243125
		 13 -26.561008441577489 17 33.600814031243125 20 33.600814031243125 21 33.600814031243125;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "R_Hand_Twist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "Rr_Claw_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -6.936940072590752 5 30.68 8 -6.936940072590752
		 11 30.679999999999993 14 -6.936940072590752 20 -6.936940072590752 21 -6.936940072590752;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTA -n "Rr_Claw_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTA -n "Rr_Claw_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTA -n "Tail3Seg2_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -23.44657260235638 7 0 17 0.83242268097788985
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "Tail3Seg2_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 5.2730810483004591 7 0 17 -0.18720998729538163
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "Tail3Seg2_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -1.2491189103681635 7 0 17 0.044347414257446816
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTA -n "TailSeg2_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -12.546282365827269 3 -12.546282365827269
		 6 -12.546282365827269 7 -12.546282365827269 10 -12.546282365827269 12 -18.607140843902933
		 13 -51.114923594905463 16 -32.567113703170357 19 -12.546282365827269 21 -12.546282365827269;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTA -n "TailSeg2_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -41.197134251351052 3 -41.197134251351052
		 6 -41.197134251351052 7 -41.197134251351052 10 -41.197134251351052 12 -17.937378907566409
		 13 -32.193393123031868 16 -38.529488332937277 19 -41.197134251351052 21 -41.197134251351052;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "TailSeg2_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 -25.763660233696157
		 13 3.1696137798257271 16 4.0571275766736195 19 0 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTA -n "L_Hand_Twist_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 22.523174767254925 17 0 20 0
		 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "L_Hand_Twist_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.7698352908164823 8 1.7698352908164823
		 13 83.642392051367437 17 1.7698352908164823 20 1.7698352908164823 21 1.7698352908164823;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "L_Hand_Twist_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTA -n "Ll_Claw_Control_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -7.6229606796877247 5 31 8 -7.6229606796877247
		 11 31 14 -7.6229606796877247 20 -7.6229606796877247 21 -7.6229606796877247;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTA -n "Ll_Claw_Control_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTA -n "Ll_Claw_Control_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Character_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  9 9;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTL -n "Character_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Character_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.351124347834713 20 3.351124347834713
		 21 3.351124347834713;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Character_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.4793774730002944 20 6.4793774730002944
		 21 6.4793774730002944;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Character_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Character_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Character_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Upper_Body_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Upper_Body_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Upper_Body_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_Display";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 6 0 11 0 13 0 17 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 9 9 9 9 9 9 9;
	setAttr -s 8 ".kot[0:7]"  18 5 5 5 5 5 5 5;
createNode animCurveTU -n "Upper_Body_Spine_FKIK";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_Head_Isolation";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_Tail3_Isolation";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_Tail2_Isolation";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Upper_Body_Tail_Isolation";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 6 1 11 1 13 1 17 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Tail3_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 0.097549244392016815 6 0.3208043553535625
		 10 0.026595878881291158 13 0.051491944046012775 18 0.018893781528207934 20 -0.0011551654419340793
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Tail3_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 0.31699001043967956 6 1.1157648273920935
		 10 0.086424328315190715 13 0.17372684881996026 18 0.063055795146556917 20 -0.0047643260854228929
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Tail3_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 -0.21851792113500593 6 0.11385251209865674
		 10 0.45489204194178628 13 -0.65773628825735475 18 0.39872699612615353 20 -0.059805583412082787
		 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Tail3_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 4 1 6 1 10 1 13 1 18 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Tail3_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 4 1 6 1 10 1 13 1 18 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Tail3_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 4 1 6 1 10 1 13 1 18 1 20 1 21 1;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Tail3_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 0 6 0 10 0 13 0 18 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTU -n "Tail3_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 4 0 6 0 10 0 13 0 18 0 20 0 21 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "Head_Neck_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0.27401450838567676 5 0.025481079349933801
		 7 0.10648537908360452 11 0.1526873029273651 13 0.096307919988389279 15 -0.016823860852456796
		 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "Head_Neck_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.00017458037365170043 3 0.01931492639731193
		 5 0.18207050193564198 7 0.14335986054186131 11 0.19972127718910829 13 -0.14053002881379506
		 15 -0.059137075504571389 20 -0.00017458037365170043 21 -0.00017458037365170043;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "Head_Neck_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0.0089218805249388512 5 0.084362788772895908
		 7 0.023528622260618939 11 0.0050275553148919488 13 -0.017379252390940993 15 -0.028189891736628756
		 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Head_FK_scaleX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1.0000000000000002 3 1.0000000000000002
		 6 1.0000000000000002 9 1.0000000000000002 12 1.0000000000000002 14 1.0000000000000002
		 16 1.0000000000000002 18 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Head_FK_scaleY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1.0000000000000002 3 1.0000000000000002
		 6 1.0000000000000002 9 1.0000000000000002 12 1.0000000000000002 14 1.0000000000000002
		 16 1.0000000000000002 18 1.0000000000000002 21 1.0000000000000002;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Head_FK_scaleZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 6 1 9 1 12 1 14 1 16 1 18 1 21 1;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateAxisX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 6 0 9 0 12 0 14 0 16 0 18 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateAxisY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 6 0 9 0 12 0 14 0 16 0 18 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Head_FK_rotateAxisZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 6 0 9 0 12 0 14 0 16 0 18 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		9;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Face_Control_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 12 1 18 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "Face_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0.69041976166643793 12 0.69041976166643793
		 18 0.030559287126310397 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Face_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 0 12 0 18 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Face_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 8 4.55883403255548e-16 12 4.55883403255548e-16
		 18 2.5253036063113933e-17 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Face_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 12 1 18 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Face_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 12 1 18 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Face_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 8 1 12 1 18 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Tail_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 2.8082912110146108 3 2.8505866685057795
		 6 4.6904854597154237 8 4.8699433170932496 10 2.6733230277438258 12 2.5407238145981079
		 16 2.755127578262742 19 2.8082912110146108 20 2.8082912110146108 21 2.8082912110146108;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		10 9;
createNode animCurveTL -n "Tail_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -0.25433482088008807 3 -0.57070936949321871
		 6 -1.5191913791533371 8 -1.9776650407029914 10 -4.4675767539971467 12 -4.2558553122516436
		 16 -0.43250830794810136 19 -0.25433482088008807 20 -0.25433482088008807 21 -0.25433482088008807;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTL -n "Tail_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -0.32356150590828658 3 -0.074875977242996217
		 6 0.67067625153940102 8 -1.4065282502178238 10 1.002066407295064 12 1.0424597236713251
		 16 -0.8675068125833213 19 -0.32356150590828658 20 -0.32356150590828658 21 -0.32356150590828658;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 8 1 10 1 12 1 16 1 19 1 20 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 8 0 10 0 12 0 16 0 19 0 20 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTU -n "Tail_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 8 0 10 0 12 0 16 0 19 0 20 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 3 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 3 
		10 9;
createNode animCurveTL -n "Spine_Torso_IK_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 0 8 5.9197334828405834e-17 11 7.9916390586217203e-17
		 13 7.2492757277464969e-17 15 5.255846792396868e-17 17 1.5087148398721901e-17 20 0
		 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "Spine_Torso_IK_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.032756867151112125 6 -0.032756867151112125
		 8 0.39293120565349737 11 0.52115043622732471 13 -0.59736728740558731 15 -1.1359220049707648
		 17 -0.072754324673748455 20 -0.032756867151112125 21 -0.032756867151112125;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "Spine_Torso_IK_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 0 8 -0.052267923147026565 11 -0.068011265026234058
		 13 -0.055305353848517619 15 -0.047654076334281065 17 4.5361217709926965e-05 20 0
		 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Spine_Torso_IK_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 6 1 8 1 11 1 13 1 15 1 17 1 20 1 21 1;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Spine_Torso_IK_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 6 1 8 1 11 1 13 1 15 1 17 1 20 1 21 1;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "Spine_Torso_IK_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 6 1 8 1 11 1 13 1 15 1 17 1 20 1 21 1;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 0 8 0 11 0 13 0 15 0 17 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 0 8 0 11 0 13 0 15 0 17 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "Spine_Torso_IK_rotateAxisZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 6 0 8 0 11 0 13 0 15 0 17 0 20 0 21 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 9 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "Spine_Middle_IK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Spine_Middle_IK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Spine_Middle_IK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Middle_IK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Middle_IK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Middle_IK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Spine_Pelvis_IK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Spine_Pelvis_IK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Spine_Pelvis_IK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTU -n "Spine_Pelvis_IK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 21 1;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTA -n "Spine_Pelvis_IK_rotateAxisZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 21 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  9 9;
createNode animCurveTL -n "Tail3Seg2_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -0.02833111582866751 7 0 17 -0.08818619733935143
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Tail3Seg2_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -0.14085962683103473 7 0 17 -0.283105982089563
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Tail3Seg2_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 -0.69887477118797925 7 0 17 0.82418055288274372
		 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Tail3Seg2_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 17 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Tail3Seg2_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 17 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Tail3Seg2_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 17 1 21 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Tail3Seg2_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 17 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTU -n "Tail3Seg2_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 17 0 21 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 9 9 9 9;
createNode animCurveTL -n "Tail2Seg2_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0.3559602132290059 3 0.037252861665437585
		 6 -1.4135703032532088 7 -1.5736017702568514 10 -2.9076326426801051 12 -2.9405271534438437
		 13 -2.6983793624192884 16 0.36453692890323108 19 0.3559602132290059 21 0.3559602132290059;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTL -n "Tail2Seg2_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0.16783716945083949 3 0.049008332507963714
		 6 1.9373187493507993 7 2.04395578104999 10 -1.4379011349322033 12 -1.6619508259132254
		 13 -1.5013505695558356 16 -0.17139528690961953 19 0.16783716945083949 21 0.16783716945083949;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTL -n "Tail2Seg2_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -0.21177292106665338 3 0.0060557819160008929
		 6 1.9368036255107381 7 0.62463833640322419 10 1.6697782068144937 12 1.7090500104986819
		 13 1.5653947635758092 16 -0.50492614522704904 19 -0.21177292106665338 21 -0.21177292106665338;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "Tail2Seg2_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "Tail2Seg2_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "Tail2Seg2_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "Tail2Seg2_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 0 13 0 16 0 19 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "Tail2Seg2_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 0 13 0 16 0 19 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "R_Hand_Twist_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "R_Hand_Twist_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTL -n "R_Hand_Twist_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTL -n "R_Hand_Twist_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "R_Hand_Twist_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "R_Hand_Twist_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "R_Hand_Twist_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "Rr_Claw_Control_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "Rr_Claw_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTL -n "Rr_Claw_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTL -n "Rr_Claw_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Rr_Claw_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Rr_Claw_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Rr_Claw_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTL -n "TailSeg2_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -0.49318826623167639 3 -0.16092840767444647
		 6 0.74285954827001965 7 1.2120579072220647 10 2.921243858534269 12 2.9787220327934474
		 13 2.72078236054731 16 -0.48662617327597107 19 -0.49318826623167639 21 -0.49318826623167639;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTL -n "TailSeg2_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0.16528891191006254 3 0.087889026684687899
		 6 1.2635029065119294 7 2.1011964197239625 10 -1.0513193561834933 12 -1.2589198251979909
		 13 -1.1296903359847257 16 -0.19908934991120203 19 0.16528891191006254 21 0.16528891191006254;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTL -n "TailSeg2_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -0.2853034592588361 3 -0.067728380762116111
		 6 1.5596578980181952 7 0.44789877130755318 10 1.6359036596605214 12 1.6848929038392992
		 13 1.5364368387189478 16 -0.54627473390442138 19 -0.2853034592588361 21 -0.2853034592588361;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "TailSeg2_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "TailSeg2_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "TailSeg2_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 3 1 6 1 7 1 10 1 12 1 13 1 16 1 19 1
		 21 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "TailSeg2_Control_Twist";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 0 13 0 16 0 19 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "TailSeg2_Control_Roll";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 6 0 7 0 10 0 12 0 13 0 16 0 19 0
		 21 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		3 10;
	setAttr -s 10 ".kot[0:9]"  18 9 9 9 9 9 9 9 
		3 9;
createNode animCurveTU -n "L_Hand_Twist_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "L_Hand_Twist_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTL -n "L_Hand_Twist_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTL -n "L_Hand_Twist_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 13 0 17 0 20 0 21 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "L_Hand_Twist_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "L_Hand_Twist_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "L_Hand_Twist_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 8 1 13 1 17 1 20 1 21 1;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 9 9 9 9 9;
createNode animCurveTU -n "Ll_Claw_Control_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "Ll_Claw_Control_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTL -n "Ll_Claw_Control_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTL -n "Ll_Claw_Control_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 5 0 8 0 11 0 14 0 20 0 21 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Ll_Claw_Control_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Ll_Claw_Control_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode animCurveTU -n "Ll_Claw_Control_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 5 1 8 1 11 1 14 1 20 1 21 1;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 9 9 9 9 9 9;
createNode objectSet -n "Set";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Arms";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode renderLayerManager -n "Diner_interior_Texturewip_1:renderLayerManager";
createNode renderLayer -n "Diner_interior_Texturewip_1:defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "Diner_interior_Texturewip_1:GlassPlaceholder";
	setAttr ".c" -type "float3" 0.85600001 0.85600001 0.85600001 ;
	setAttr ".rfl" 0.10000000149011612;
createNode shadingEngine -n "Diner_interior_Texturewip_1:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo1";
createNode lambert -n "Diner_interior_Texturewip_1:PlatePlaceholder";
	setAttr ".c" -type "float3" 0.13533227 0.13533227 0.13533227 ;
createNode shadingEngine -n "Diner_interior_Texturewip_1:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo2";
createNode shadingEngine -n "Diner_interior_Texturewip_1:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo3";
createNode file -n "Diner_interior_Texturewip_1:file1";
	setAttr ".ftn" -type "string" "/Users/publicuser/Desktop/Aislynn's Stuff/Game Studio Things/Diner Interior/Quick Shaders/space-02.jpg";
createNode place2dTexture -n "Diner_interior_Texturewip_1:place2dTexture1";
createNode rampShader -n "Diner_interior_Texturewip_1:UpperWall_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.25297964 0.25639671 0.27450982 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.49565216898918152;
	setAttr ".clr[1].clrc" -type "float3" 0.34117648 0.34117648 0.34117648 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.947826087474823;
	setAttr ".clr[2].clrc" -type "float3" 0.52899998 0.51124507 0.49778897 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 0;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 0 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 0;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 0;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo4";
createNode rampShader -n "Diner_interior_Texturewip_1:WindowArch_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.33237696 0.55265552 0.653 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.40869563817977905;
	setAttr ".clr[1].clrc" -type "float3" 0.44190198 0.73092872 0.80199999 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.95652174949645996;
	setAttr ".clr[2].clrc" -type "float3" 0.85600001 0.98923695 1 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo5";
createNode rampShader -n "Diner_interior_Texturewip_1:LowerWall_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.64700001 0.48182705 0.185689 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.47826087474822998;
	setAttr ".clr[1].clrc" -type "float3" 0.94117647 0.71764708 0.43137255 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.97391301393508911;
	setAttr ".clr[2].clrc" -type "float3" 1 0.83810151 0.70099998 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo6";
createNode rampShader -n "Diner_interior_Texturewip_1:Table_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.18047632 0.094422996 0.329 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.38260868191719055;
	setAttr ".clr[1].clrc" -type "float3" 0.36078432 0.21568628 0.49803922 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.947826087474823;
	setAttr ".clr[2].clrc" -type "float3" 0.68735921 0.47914401 0.80800003 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo7";
createNode rampShader -n "Diner_interior_Texturewip_1:Booth_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.55699998 0.060155988 0.19219223 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.35652172565460205;
	setAttr ".clr[1].clrc" -type "float3" 0.7647059 0.082352944 0.16470589 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.895652174949646;
	setAttr ".clr[2].clrc" -type "float3" 0.91000003 0.3415139 0.31031004 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo8";
createNode rampShader -n "Diner_interior_Texturewip_1:TableLeg_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.34985599 0.3562552 0.377 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.41739130020141602;
	setAttr ".clr[1].clrc" -type "float3" 0.70588237 0.70588237 0.70588237 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.947826087474823;
	setAttr ".clr[2].clrc" -type "float3" 0.898 0.898 0.898 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo9";
createNode rampShader -n "Diner_interior_Texturewip_1:BarTop_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.509 0.0030539911 0.15041089 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.43478259444236755;
	setAttr ".clr[1].clrc" -type "float3" 0.70588237 0.0039215689 0.10196079 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.91304349899291992;
	setAttr ".clr[2].clrc" -type "float3" 0.95200002 0.26179999 0.35819787 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader7SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo10";
createNode rampShader -n "Diner_interior_Texturewip_1:Menu_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.301837 0.59299999 0.39671248 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.45217391848564148;
	setAttr ".clr[1].clrc" -type "float3" 0.72549021 0.96078432 0.80392158 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.98260867595672607;
	setAttr ".clr[2].clrc" -type "float3" 0.81545198 0.94599998 0.85896796 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo11";
createNode rampShader -n "Diner_interior_Texturewip_1:Floor_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.193753 0.31099999 0.26626831 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.46956521272659302;
	setAttr ".clr[1].clrc" -type "float3" 0.20407899 0.46700001 0.36669123 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.90434783697128296;
	setAttr ".clr[2].clrc" -type "float3" 0.50338405 0.80800003 0.69178396 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo12";
createNode rampShader -n "Diner_interior_Texturewip_1:BarBack_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.18354 0.18575822 0.20999999 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.43478259444236755;
	setAttr ".clr[1].clrc" -type "float3" 0.34117648 0.34117648 0.34117648 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.90434783697128296;
	setAttr ".clr[2].clrc" -type "float3" 0.479 0.46177301 0.44163799 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo13";
createNode rampShader -n "Diner_interior_Texturewip_1:BarShelvesDrawers_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.13017599 0.13083817 0.14399999 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.44347825646400452;
	setAttr ".clr[1].clrc" -type "float3" 0.20784314 0.20392157 0.20392157 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.91304349899291992;
	setAttr ".clr[2].clrc" -type "float3" 0.34099999 0.33533973 0.328724 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo14";
createNode rampShader -n "Diner_interior_Texturewip_1:threeToneBrightnessShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.26105499 0.43593404 0.479 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.23478260636329651;
	setAttr ".clr[1].clrc" -type "float3" 0.49085402 0.65100002 0.63868213 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.7130434513092041;
	setAttr ".clr[2].clrc" -type "float3" 0.85489601 0.93281227 0.95200002 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader12SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo15";
createNode rampShader -n "Diner_interior_Texturewip_1:DrawerPull_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.086208001 0.087732449 0.096000001 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.43478259444236755;
	setAttr ".clr[1].clrc" -type "float3" 0.168 0.16480801 0.16480801 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.87826085090637207;
	setAttr ".clr[2].clrc" -type "float3" 0.20118 0.20255312 0.20999999 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader13SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo16";
createNode rampShader -n "Diner_interior_Texturewip_1:Plates_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.43334603 0.59471297 0.778 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.21739129722118378;
	setAttr ".clr[1].clrc" -type "float3" 0.64700001 0.81227458 1 ;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.60000002384185791;
	setAttr ".clr[2].clrc" -type "float3" 0.86199999 0.9266116 1 ;
	setAttr ".clr[2].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.95999997854232788;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Diner_interior_Texturewip_1:rampShader14SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Diner_interior_Texturewip_1:materialInfo17";
createNode surfaceShader -n "Diner_interior_Texturewip_1:surfaceShader1";
createNode file -n "Diner_interior_Texturewip_1:file2";
	setAttr ".ftn" -type "string" "/Users/publicuser/Desktop/Aislynn's Stuff/Game Studio Things/Diner Interior/Quick Shaders/space-02.jpg";
createNode place2dTexture -n "Diner_interior_Texturewip_1:place2dTexture2";
createNode partition -n "Diner_interior_Texturewip_1:Lightrig_v2_3:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode animCurveTU -n "Upper_Body_Head_FKIK";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
	setAttr ".kot[0]"  9;
createNode reference -n "Diner_interior_Texturewip_4__1_RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Diner_interior_Texturewip_4__1_RN"
		"Diner_interior_Texturewip_4__1_RN" 0
		"Diner_interior_Texturewip_4__1_RN" 27
		2 "|Diner_interior_Texturewip_4__1_:GamePerspectiveCamera|Diner_interior_Texturewip_4__1_:GamePerspectiveCameraShape" 
		"renderable" " 1"
		2 "|Diner_interior_Texturewip_4__1_:GamePerspectiveCamera|Diner_interior_Texturewip_4__1_:GamePerspectiveCameraShape" 
		"nearClipPlane" " 0.1"
		2 "|Diner_interior_Texturewip_4__1_:GamePerspectiveCamera|Diner_interior_Texturewip_4__1_:GamePerspectiveCameraShape" 
		"farClipPlane" " 10000"
		2 "|Diner_interior_Texturewip_4__1_:GamePerspectiveCamera|Diner_interior_Texturewip_4__1_:GamePerspectiveCameraShape" 
		"centerOfInterest" " 327.48405290451046312"
		2 "|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:cameraShape2" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:RimLightR|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:cameraShape2" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:camera1|Diner_interior_Texturewip_4__1_:Lightrig_v2_3:Lightrig_v2_2:cameraShape1" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd1|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape1" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd1|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape1" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd1|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape1" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd1|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape1" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd1|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape1" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd2|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape2" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd2|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape2" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd2|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape2" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd2|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape2" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd2|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape2" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd3|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape3" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd3|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape3" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd3|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape3" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd3|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape3" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd3|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape3" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd4|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape4" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd4|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape4" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd4|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape4" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd4|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape4" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4__1_:DinerWalls|Diner_interior_Texturewip_4__1_:Door1|Diner_interior_Texturewip_4__1_:Door:Door|Diner_interior_Texturewip_4__1_:Door:DoorTorus|Diner_interior_Texturewip_4__1_:Door:SubdivFasteners|Diner_interior_Texturewip_4__1_:Door:polyToSubd4|Diner_interior_Texturewip_4__1_:Door:polyToSubdShape4" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25");
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 21;
	setAttr ".unw" 21;
select -ne :renderPartition;
	setAttr -s 178 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 140 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 115 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :lightList1;
	setAttr -s 5 ".l";
select -ne :defaultTextureList1;
	setAttr -s 20 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 28 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 15 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 5 ".dsm";
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
	setAttr -s 8 ".sol";
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
connectAttr "Upper_Body_translateX.o" "Kelvin_v1_RigFinalRN.phl[20]";
connectAttr "Upper_Body_translateY.o" "Kelvin_v1_RigFinalRN.phl[21]";
connectAttr "Upper_Body_translateZ.o" "Kelvin_v1_RigFinalRN.phl[22]";
connectAttr "Upper_Body_rotateX.o" "Kelvin_v1_RigFinalRN.phl[23]";
connectAttr "Upper_Body_rotateY.o" "Kelvin_v1_RigFinalRN.phl[24]";
connectAttr "Upper_Body_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[25]";
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
connectAttr "Kelvin_v1_RigFinalRN.phl[83]" "Arms.dsm" -na;
connectAttr "Tail2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[84]";
connectAttr "Tail2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[85]";
connectAttr "Tail2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[86]";
connectAttr "Tail2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[87]";
connectAttr "Tail2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[88]";
connectAttr "Tail2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[89]";
connectAttr "Kelvin_v1_RigFinalRN.phl[90]" "Set.dsm" -na;
connectAttr "Tail_Base_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[91]";
connectAttr "Tail_Base_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[92]";
connectAttr "Tail_Base_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[93]";
connectAttr "Tail_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[94]";
connectAttr "Tail_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[95]";
connectAttr "Tail_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[96]";
connectAttr "Tail_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[97]";
connectAttr "Tail_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[98]";
connectAttr "Kelvin_v1_RigFinalRN.phl[99]" "Set.dsm" -na;
connectAttr "Kelvin_v1_RigFinalRN.phl[100]" "Arms.dsm" -na;
connectAttr "Tail_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[101]";
connectAttr "Tail_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[102]";
connectAttr "Tail_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[103]";
connectAttr "Tail_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[104]";
connectAttr "Tail_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[105]";
connectAttr "Tail_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[106]";
connectAttr "Spine_Torso_IK_rotateAxisX.o" "Kelvin_v1_RigFinalRN.phl[107]";
connectAttr "Spine_Torso_IK_rotateAxisY.o" "Kelvin_v1_RigFinalRN.phl[108]";
connectAttr "Spine_Torso_IK_rotateAxisZ.o" "Kelvin_v1_RigFinalRN.phl[109]";
connectAttr "Spine_Torso_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[110]";
connectAttr "Spine_Torso_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[111]";
connectAttr "Spine_Torso_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[112]";
connectAttr "Spine_Torso_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[113]";
connectAttr "Spine_Torso_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[114]";
connectAttr "Spine_Torso_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[115]";
connectAttr "Kelvin_v1_RigFinalRN.phl[116]" "Set.dsm" -na;
connectAttr "Spine_Torso_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[117]";
connectAttr "Spine_Torso_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[118]";
connectAttr "Spine_Torso_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[119]";
connectAttr "Spine_Middle_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[120]";
connectAttr "Spine_Middle_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[121]";
connectAttr "Spine_Middle_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[122]";
connectAttr "Spine_Middle_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[123]";
connectAttr "Spine_Middle_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[124]";
connectAttr "Spine_Middle_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[125]";
connectAttr "Spine_Middle_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[126]";
connectAttr "Spine_Middle_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[127]";
connectAttr "Spine_Middle_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[128]";
connectAttr "Kelvin_v1_RigFinalRN.phl[129]" "Set.dsm" -na;
connectAttr "Spine_Pelvis_IK_rotateAxisX.o" "Kelvin_v1_RigFinalRN.phl[130]";
connectAttr "Spine_Pelvis_IK_rotateAxisY.o" "Kelvin_v1_RigFinalRN.phl[131]";
connectAttr "Spine_Pelvis_IK_rotateAxisZ.o" "Kelvin_v1_RigFinalRN.phl[132]";
connectAttr "Spine_Pelvis_IK_translateX.o" "Kelvin_v1_RigFinalRN.phl[133]";
connectAttr "Spine_Pelvis_IK_translateY.o" "Kelvin_v1_RigFinalRN.phl[134]";
connectAttr "Spine_Pelvis_IK_translateZ.o" "Kelvin_v1_RigFinalRN.phl[135]";
connectAttr "Spine_Pelvis_IK_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[136]";
connectAttr "Spine_Pelvis_IK_scaleX.o" "Kelvin_v1_RigFinalRN.phl[137]";
connectAttr "Spine_Pelvis_IK_scaleY.o" "Kelvin_v1_RigFinalRN.phl[138]";
connectAttr "Kelvin_v1_RigFinalRN.phl[139]" "Set.dsm" -na;
connectAttr "Spine_Pelvis_IK_rotateX.o" "Kelvin_v1_RigFinalRN.phl[140]";
connectAttr "Spine_Pelvis_IK_rotateY.o" "Kelvin_v1_RigFinalRN.phl[141]";
connectAttr "Spine_Pelvis_IK_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[142]";
connectAttr "Tail3Seg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[143]";
connectAttr "Tail3Seg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[144]";
connectAttr "Tail3Seg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[145]";
connectAttr "Tail3Seg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[146]";
connectAttr "Tail3Seg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[147]";
connectAttr "Tail3Seg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[148]";
connectAttr "Tail3Seg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[149]";
connectAttr "Tail3Seg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[150]";
connectAttr "Kelvin_v1_RigFinalRN.phl[151]" "Set.dsm" -na;
connectAttr "Tail3Seg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[152]";
connectAttr "Tail3Seg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[153]";
connectAttr "Tail3Seg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[154]";
connectAttr "Tail2Seg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[155]";
connectAttr "Tail2Seg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[156]";
connectAttr "Tail2Seg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[157]";
connectAttr "Tail2Seg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[158]";
connectAttr "Tail2Seg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[159]";
connectAttr "Tail2Seg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[160]";
connectAttr "Tail2Seg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[161]";
connectAttr "Tail2Seg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[162]";
connectAttr "Kelvin_v1_RigFinalRN.phl[163]" "Set.dsm" -na;
connectAttr "Kelvin_v1_RigFinalRN.phl[164]" "Arms.dsm" -na;
connectAttr "Tail2Seg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[165]";
connectAttr "Tail2Seg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[166]";
connectAttr "Tail2Seg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[167]";
connectAttr "R_Hand_Twist_translateX.o" "Kelvin_v1_RigFinalRN.phl[168]";
connectAttr "R_Hand_Twist_translateY.o" "Kelvin_v1_RigFinalRN.phl[169]";
connectAttr "R_Hand_Twist_translateZ.o" "Kelvin_v1_RigFinalRN.phl[170]";
connectAttr "R_Hand_Twist_rotateX.o" "Kelvin_v1_RigFinalRN.phl[171]";
connectAttr "R_Hand_Twist_rotateY.o" "Kelvin_v1_RigFinalRN.phl[172]";
connectAttr "R_Hand_Twist_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[173]";
connectAttr "R_Hand_Twist_scaleX.o" "Kelvin_v1_RigFinalRN.phl[174]";
connectAttr "R_Hand_Twist_scaleY.o" "Kelvin_v1_RigFinalRN.phl[175]";
connectAttr "R_Hand_Twist_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[176]";
connectAttr "Kelvin_v1_RigFinalRN.phl[177]" "Set.dsm" -na;
connectAttr "R_Hand_Twist_visibility.o" "Kelvin_v1_RigFinalRN.phl[178]";
connectAttr "Rr_Claw_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[179]";
connectAttr "Rr_Claw_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[180]";
connectAttr "Rr_Claw_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[181]";
connectAttr "Rr_Claw_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[182]";
connectAttr "Rr_Claw_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[183]";
connectAttr "Rr_Claw_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[184]";
connectAttr "Rr_Claw_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[185]";
connectAttr "Rr_Claw_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[186]";
connectAttr "Rr_Claw_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[187]";
connectAttr "Kelvin_v1_RigFinalRN.phl[188]" "Set.dsm" -na;
connectAttr "Rr_Claw_Control_visibility.o" "Kelvin_v1_RigFinalRN.phl[189]";
connectAttr "TailSeg2_Control_Twist.o" "Kelvin_v1_RigFinalRN.phl[190]";
connectAttr "TailSeg2_Control_Roll.o" "Kelvin_v1_RigFinalRN.phl[191]";
connectAttr "TailSeg2_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[192]";
connectAttr "TailSeg2_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[193]";
connectAttr "TailSeg2_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[194]";
connectAttr "TailSeg2_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[195]";
connectAttr "TailSeg2_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[196]";
connectAttr "TailSeg2_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[197]";
connectAttr "Kelvin_v1_RigFinalRN.phl[198]" "Set.dsm" -na;
connectAttr "Kelvin_v1_RigFinalRN.phl[199]" "Arms.dsm" -na;
connectAttr "TailSeg2_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[200]";
connectAttr "TailSeg2_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[201]";
connectAttr "TailSeg2_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[202]";
connectAttr "L_Hand_Twist_translateX.o" "Kelvin_v1_RigFinalRN.phl[203]";
connectAttr "L_Hand_Twist_translateY.o" "Kelvin_v1_RigFinalRN.phl[204]";
connectAttr "L_Hand_Twist_translateZ.o" "Kelvin_v1_RigFinalRN.phl[205]";
connectAttr "L_Hand_Twist_rotateX.o" "Kelvin_v1_RigFinalRN.phl[206]";
connectAttr "L_Hand_Twist_rotateY.o" "Kelvin_v1_RigFinalRN.phl[207]";
connectAttr "L_Hand_Twist_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[208]";
connectAttr "L_Hand_Twist_scaleX.o" "Kelvin_v1_RigFinalRN.phl[209]";
connectAttr "L_Hand_Twist_scaleY.o" "Kelvin_v1_RigFinalRN.phl[210]";
connectAttr "L_Hand_Twist_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[211]";
connectAttr "Kelvin_v1_RigFinalRN.phl[212]" "Set.dsm" -na;
connectAttr "L_Hand_Twist_visibility.o" "Kelvin_v1_RigFinalRN.phl[213]";
connectAttr "Ll_Claw_Control_translateX.o" "Kelvin_v1_RigFinalRN.phl[214]";
connectAttr "Ll_Claw_Control_translateY.o" "Kelvin_v1_RigFinalRN.phl[215]";
connectAttr "Ll_Claw_Control_translateZ.o" "Kelvin_v1_RigFinalRN.phl[216]";
connectAttr "Ll_Claw_Control_rotateX.o" "Kelvin_v1_RigFinalRN.phl[217]";
connectAttr "Ll_Claw_Control_rotateY.o" "Kelvin_v1_RigFinalRN.phl[218]";
connectAttr "Ll_Claw_Control_rotateZ.o" "Kelvin_v1_RigFinalRN.phl[219]";
connectAttr "Ll_Claw_Control_scaleX.o" "Kelvin_v1_RigFinalRN.phl[220]";
connectAttr "Ll_Claw_Control_scaleY.o" "Kelvin_v1_RigFinalRN.phl[221]";
connectAttr "Ll_Claw_Control_scaleZ.o" "Kelvin_v1_RigFinalRN.phl[222]";
connectAttr "Kelvin_v1_RigFinalRN.phl[223]" "Set.dsm" -na;
connectAttr "Ll_Claw_Control_visibility.o" "Kelvin_v1_RigFinalRN.phl[224]";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Diner_interior_Texturewip_1:rampShader14SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "Kelvin_v1_RigFinalRN.sr";
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
connectAttr "Diner_interior_Texturewip_1:renderLayerManager.rlmi[0]" "Diner_interior_Texturewip_1:defaultRenderLayer.rlid"
		;
connectAttr "Diner_interior_Texturewip_1:GlassPlaceholder.oc" "Diner_interior_Texturewip_1:phong1SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:phong1SG.msg" "Diner_interior_Texturewip_1:materialInfo1.sg"
		;
connectAttr "Diner_interior_Texturewip_1:GlassPlaceholder.msg" "Diner_interior_Texturewip_1:materialInfo1.m"
		;
connectAttr "Diner_interior_Texturewip_1:PlatePlaceholder.oc" "Diner_interior_Texturewip_1:lambert2SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:lambert2SG.msg" "Diner_interior_Texturewip_1:materialInfo2.sg"
		;
connectAttr "Diner_interior_Texturewip_1:PlatePlaceholder.msg" "Diner_interior_Texturewip_1:materialInfo2.m"
		;
connectAttr "Diner_interior_Texturewip_1:surfaceShader1.oc" "Diner_interior_Texturewip_1:lambert3SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:lambert3SG.msg" "Diner_interior_Texturewip_1:materialInfo3.sg"
		;
connectAttr "Diner_interior_Texturewip_1:surfaceShader1.msg" "Diner_interior_Texturewip_1:materialInfo3.m"
		;
connectAttr "Diner_interior_Texturewip_1:surfaceShader1.msg" "Diner_interior_Texturewip_1:materialInfo3.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.c" "Diner_interior_Texturewip_1:file1.c"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.tf" "Diner_interior_Texturewip_1:file1.tf"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.rf" "Diner_interior_Texturewip_1:file1.rf"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.mu" "Diner_interior_Texturewip_1:file1.mu"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.mv" "Diner_interior_Texturewip_1:file1.mv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.s" "Diner_interior_Texturewip_1:file1.s"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.wu" "Diner_interior_Texturewip_1:file1.wu"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.wv" "Diner_interior_Texturewip_1:file1.wv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.re" "Diner_interior_Texturewip_1:file1.re"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.of" "Diner_interior_Texturewip_1:file1.of"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.r" "Diner_interior_Texturewip_1:file1.ro"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.n" "Diner_interior_Texturewip_1:file1.n"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.vt1" "Diner_interior_Texturewip_1:file1.vt1"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.vt2" "Diner_interior_Texturewip_1:file1.vt2"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.vt3" "Diner_interior_Texturewip_1:file1.vt3"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.vc1" "Diner_interior_Texturewip_1:file1.vc1"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.o" "Diner_interior_Texturewip_1:file1.uv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.ofs" "Diner_interior_Texturewip_1:file1.fs"
		;
connectAttr "Diner_interior_Texturewip_1:UpperWall_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader1SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader1SG.msg" "Diner_interior_Texturewip_1:materialInfo4.sg"
		;
connectAttr "Diner_interior_Texturewip_1:UpperWall_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo4.m"
		;
connectAttr "Diner_interior_Texturewip_1:UpperWall_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo4.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:WindowArch_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader2SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader2SG.msg" "Diner_interior_Texturewip_1:materialInfo5.sg"
		;
connectAttr "Diner_interior_Texturewip_1:WindowArch_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo5.m"
		;
connectAttr "Diner_interior_Texturewip_1:WindowArch_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo5.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:LowerWall_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader3SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader3SG.msg" "Diner_interior_Texturewip_1:materialInfo6.sg"
		;
connectAttr "Diner_interior_Texturewip_1:LowerWall_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo6.m"
		;
connectAttr "Diner_interior_Texturewip_1:LowerWall_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo6.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Table_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader4SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader4SG.msg" "Diner_interior_Texturewip_1:materialInfo7.sg"
		;
connectAttr "Diner_interior_Texturewip_1:Table_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo7.m"
		;
connectAttr "Diner_interior_Texturewip_1:Table_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo7.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Booth_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader5SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader5SG.msg" "Diner_interior_Texturewip_1:materialInfo8.sg"
		;
connectAttr "Diner_interior_Texturewip_1:Booth_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo8.m"
		;
connectAttr "Diner_interior_Texturewip_1:Booth_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo8.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:TableLeg_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader6SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader6SG.msg" "Diner_interior_Texturewip_1:materialInfo9.sg"
		;
connectAttr "Diner_interior_Texturewip_1:TableLeg_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo9.m"
		;
connectAttr "Diner_interior_Texturewip_1:TableLeg_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo9.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarTop_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader7SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader7SG.msg" "Diner_interior_Texturewip_1:materialInfo10.sg"
		;
connectAttr "Diner_interior_Texturewip_1:BarTop_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo10.m"
		;
connectAttr "Diner_interior_Texturewip_1:BarTop_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo10.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Menu_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader8SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader8SG.msg" "Diner_interior_Texturewip_1:materialInfo11.sg"
		;
connectAttr "Diner_interior_Texturewip_1:Menu_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo11.m"
		;
connectAttr "Diner_interior_Texturewip_1:Menu_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo11.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Floor_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader9SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader9SG.msg" "Diner_interior_Texturewip_1:materialInfo12.sg"
		;
connectAttr "Diner_interior_Texturewip_1:Floor_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo12.m"
		;
connectAttr "Diner_interior_Texturewip_1:Floor_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo12.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarBack_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader10SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader10SG.msg" "Diner_interior_Texturewip_1:materialInfo13.sg"
		;
connectAttr "Diner_interior_Texturewip_1:BarBack_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo13.m"
		;
connectAttr "Diner_interior_Texturewip_1:BarBack_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo13.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarShelvesDrawers_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader11SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader11SG.msg" "Diner_interior_Texturewip_1:materialInfo14.sg"
		;
connectAttr "Diner_interior_Texturewip_1:BarShelvesDrawers_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo14.m"
		;
connectAttr "Diner_interior_Texturewip_1:BarShelvesDrawers_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo14.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:threeToneBrightnessShader.oc" "Diner_interior_Texturewip_1:rampShader12SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader12SG.msg" "Diner_interior_Texturewip_1:materialInfo15.sg"
		;
connectAttr "Diner_interior_Texturewip_1:threeToneBrightnessShader.msg" "Diner_interior_Texturewip_1:materialInfo15.m"
		;
connectAttr "Diner_interior_Texturewip_1:threeToneBrightnessShader.msg" "Diner_interior_Texturewip_1:materialInfo15.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:DrawerPull_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader13SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader13SG.msg" "Diner_interior_Texturewip_1:materialInfo16.sg"
		;
connectAttr "Diner_interior_Texturewip_1:DrawerPull_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo16.m"
		;
connectAttr "Diner_interior_Texturewip_1:DrawerPull_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo16.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Plates_ToonShader.oc" "Diner_interior_Texturewip_1:rampShader14SG.ss"
		;
connectAttr "Diner_interior_Texturewip_1:rampShader14SG.msg" "Diner_interior_Texturewip_1:materialInfo17.sg"
		;
connectAttr "Diner_interior_Texturewip_1:Plates_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo17.m"
		;
connectAttr "Diner_interior_Texturewip_1:Plates_ToonShader.msg" "Diner_interior_Texturewip_1:materialInfo17.t"
		 -na;
connectAttr "Diner_interior_Texturewip_1:file2.oc" "Diner_interior_Texturewip_1:surfaceShader1.oc"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.c" "Diner_interior_Texturewip_1:file2.c"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.tf" "Diner_interior_Texturewip_1:file2.tf"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.rf" "Diner_interior_Texturewip_1:file2.rf"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.mu" "Diner_interior_Texturewip_1:file2.mu"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.mv" "Diner_interior_Texturewip_1:file2.mv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.s" "Diner_interior_Texturewip_1:file2.s"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.wu" "Diner_interior_Texturewip_1:file2.wu"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.wv" "Diner_interior_Texturewip_1:file2.wv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.re" "Diner_interior_Texturewip_1:file2.re"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.of" "Diner_interior_Texturewip_1:file2.of"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.r" "Diner_interior_Texturewip_1:file2.ro"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.n" "Diner_interior_Texturewip_1:file2.n"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.vt1" "Diner_interior_Texturewip_1:file2.vt1"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.vt2" "Diner_interior_Texturewip_1:file2.vt2"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.vt3" "Diner_interior_Texturewip_1:file2.vt3"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.vc1" "Diner_interior_Texturewip_1:file2.vc1"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.o" "Diner_interior_Texturewip_1:file2.uv"
		;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.ofs" "Diner_interior_Texturewip_1:file2.fs"
		;
connectAttr ":defaultRenderGlobals.msg" "Diner_interior_Texturewip_1:Lightrig_v2_3:mtorPartition.rgcnx"
		;
connectAttr "Diner_interior_Texturewip_1:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "Diner_interior_Texturewip_1:lambert2SG.pa" ":renderPartition.st" -na
		;
connectAttr "Diner_interior_Texturewip_1:lambert3SG.pa" ":renderPartition.st" -na
		;
connectAttr "Diner_interior_Texturewip_1:rampShader1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader6SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader7SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader8SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader9SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader10SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader11SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader12SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader13SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:rampShader14SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Diner_interior_Texturewip_1:GlassPlaceholder.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:PlatePlaceholder.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:surfaceShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:UpperWall_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:WindowArch_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:LowerWall_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Table_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Booth_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:TableLeg_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarTop_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Menu_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Floor_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarBack_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:BarShelvesDrawers_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:threeToneBrightnessShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:DrawerPull_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:Plates_ToonShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Diner_interior_Texturewip_1:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Diner_interior_Texturewip_1:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Diner_interior_Texturewip_1:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Diner_interior_Texturewip_1:file1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "Diner_interior_Texturewip_1:file2.msg" ":defaultTextureList1.tx" -na
		;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Kelvin_v1_RigFinalRN\" \"\" \"/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Kelvin_TexturedRig/Kelvin_v2_RigFinal.ma\" 4180008367 \"/Users/Mai/Documents/Maya Projects/Kelvin Project Folder/Kelvin_TexturedRig/Kelvin_v2_RigFinal.ma\" \"FileRef\"\n1\n\"Diner_interior_Texturewip_4__1_RN\" \"\" \"/Users/Mai/Documents/Maya Projects/Kelvin Project Folder//Diner_interior_Texturewip_4 (1).ma\" 2689216736 \"/Users/Mai/Documents/Maya Projects/Kelvin Project Folder/Diner_interior_Texturewip_4 (1).ma\" \"FileRef\"\n2\n\"Diner_interior_Texturewip_1:file1\" \"fileTextureName\" \"/Users/publicuser/Desktop/Aislynn's Stuff/Game Studio Things/Diner Interior/Quick Shaders/space-02.jpg\" 2381201977 \"\" \"sourceImages\"\n3\n\"Diner_interior_Texturewip_1:file2\" \"fileTextureName\" \"/Users/publicuser/Desktop/Aislynn's Stuff/Game Studio Things/Diner Interior/Quick Shaders/space-02.jpg\" 2381201977 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Kelvin_v3_AnimEat_Diner.ma
