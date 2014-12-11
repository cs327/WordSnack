//Maya ASCII 2015 scene
//Name: Diner_interior_lighting_v1.ma
//Last modified: Thu, Oct 23, 2014 06:47:57 PM
//Codeset: UTF-8
file -rdi 1 -ns "Diner_interior_Texturewip_4" -rfn "Diner_interior_Texturewip_4RN"
		 -op "v=0;" "/Users/publicuser/Documents/sprite sheet singles/Diner_interior_Texturewip_4.ma";
file -r -ns "Diner_interior_Texturewip_4" -dr 1 -rfn "Diner_interior_Texturewip_4RN"
		 -op "v=0;" "/Users/publicuser/Documents/sprite sheet singles/Diner_interior_Texturewip_4.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
requires -nodeType "RenderMan" "RenderMan_for_Maya" "5.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.8.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" -11.185172584007319 19.559047040763343 75.982385910612038 ;
	setAttr ".r" -type "double3" -0.93835272959830507 -5.3999999999955079 6.2397129290792574e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 78.426032132479321;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.4731541929072804 21.172309781754496 -2.4794730513532115 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.9395218799349458;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "Diner_interior_Texturewip_4RNfosterParent1";
createNode transform -n "counterLightR" -p "Diner_interior_Texturewip_4RNfosterParent1";
	setAttr ".t" -type "double3" 3.1624708808013873 5.2175552907664082 -1.1522564696576103 ;
	setAttr ".r" -type "double3" 153.59356430322563 13.533039842945385 -180 ;
	setAttr ".s" -type "double3" 0.29364331366213414 0.29224090021900562 0.29229072496257491 ;
	setAttr ".sh" -type "double3" 0.001041879906791633 -0.0020984956854661241 -0.00022462905060983176 ;
createNode spotLight -n "counterLightRShape" -p "counterLightR";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.97042584 0.551 ;
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".col" 3.9264906773258721;
	setAttr ".ca" 103.94277422463335;
	setAttr ".pa" -10;
createNode transform -n "counterLightL" -p "Diner_interior_Texturewip_4RNfosterParent1";
	setAttr ".t" -type "double3" -2.2738604163868321 6.4375097728573003 -2.1789176738475868 ;
	setAttr ".r" -type "double3" 151.19746149237992 -6.3599774238265034 -179.99865459814464 ;
	setAttr ".s" -type "double3" 0.29369712506316464 0.29223130300312794 0.29224676865179217 ;
	setAttr ".sh" -type "double3" -0.0006806163599798608 0.0012379710461107335 -8.3395991794919829e-05 ;
createNode spotLight -n "counterLightLShape" -p "counterLightL";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.97042584 0.551 ;
	setAttr ".in" 0.20000000298023224;
	setAttr ".urs" no;
	setAttr ".col" 3.9264906773258721;
	setAttr ".ca" 103.94277422463335;
	setAttr ".pa" -10;
createNode camera -n "cameraShape1" -p "counterLightL";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 12.000000000000002;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 1000;
	setAttr ".coi" 6.3519383891385939;
	setAttr ".ow" 18.795086438210653;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 4 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -s false -ci true -sn "imrVerbosity" -ln "imrVerbosity" -dv 3 -at "short";
	addAttr -s false -ci true -sn "imrThreads" -ln "imrThreads" -dv 1 -at "short";
	addAttr -s false -ci true -sn "imrThreadsAdjust" -ln "imrThreadsAdjust" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "imrTaskOrder" -ln "imrTaskOrder" -dv 1 -at "short";
	addAttr -s false -ci true -sn "imrTaskSize" -ln "imrTaskSize" -at "short";
	addAttr -s false -ci true -sn "imrTaskAdjust" -ln "imrTaskAdjust" -dv 1 -at "short";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
	setAttr ".cq" 100;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".miSamplesQualityR" 2;
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
	setAttr ".stringOptions[30].value" -type "string" "2 2 2 2";
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
	setAttr -s 88 ".lnk";
	setAttr -s 385 ".ign";
	setAttr -s 86 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"cameraShape1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"cameraShape1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"Diner_interior_Texturewip_4:GamePerspectiveCamera\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"Diner_interior_Texturewip_4:GamePerspectiveCamera\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 45 100 -ps 2 55 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Diner_interior_Texturewip_4:GamePerspectiveCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Diner_interior_Texturewip_4:GamePerspectiveCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "Diner_interior_Texturewip_4RN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Diner_interior_Texturewip_4RN"
		"Diner_interior_Texturewip_4RN" 0
		"Diner_interior_Texturewip_4RN" 534
		0 "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL" "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights" 
		"-s -r "
		0 "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR" "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights" 
		"-s -r "
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"overscan" " 1.3"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"cameraScale" " 1"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"nearClipPlane" " 0.1"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"farClipPlane" " 10000"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"centerOfInterest" " 97.06704161144088516"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"displayGateMask" " 1"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"displayFilmGate" " 0"
		2 "|Diner_interior_Texturewip_4:GamePerspectiveCamera|Diner_interior_Texturewip_4:GamePerspectiveCameraShape" 
		"displayResolution" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu1" 
		"visibility" " 0"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu2" 
		"visibility" " 0"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate039" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate038" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate037" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate036" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate035" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate034" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate033" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate032" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate031" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate029" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate028" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate027" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate026" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate025" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate024" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate023" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate022" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate021" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate04" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate06" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate08" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate010" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate012" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate014" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate016" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate018" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate020" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe33" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe31" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe30" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe29" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe28" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe27" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe26" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe24" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe23" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe22" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe36" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe37" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe38" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe39" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe40" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe41" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe42" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe43" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe44" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe45" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe46" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe47" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe48" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe49" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe50" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe51" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe52" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe53" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe54" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe3" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe4" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe5" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe6" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe7" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe8" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe9" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe10" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe11" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe12" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe13" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe14" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe15" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe16" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe17" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe18" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe19" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe20" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe21" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"intensity" " 0.55000001192092896"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"useRayTraceShadows" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"shadowRays" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"centerOfIllumination" " 65.1233284024621355"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"emitDiffuse" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"lightRadius" " 20"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:OverheadLightShape1" 
		"dropoff" " 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1" 
		"translate" " -type \"double3\" -16.23020791796612983 23.36992581115403311 34.20376949315711812"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1" 
		"rotate" " -type \"double3\" -21.59263253543928585 -24.80955157994181093 -0.017514458228805652"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"intensity" " 0.37000000476837158"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"useRayTraceShadows" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"shadowRays" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"centerOfIllumination" " 38.73946631656684048"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"emitSpecular" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLight1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:FillLightShape1" 
		"lightRadius" " 20"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL" 
		"translate" " -type \"double3\" -37.6153900908522445 28.2317548931348945 -21.55472087689319949"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL" 
		"rotate" " -type \"double3\" 155.46144440026873212 -56.81227957490830249 179.92663718301085396"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape" 
		"color" " -type \"float3\" 1 1 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape" 
		"intensity" " 0.30000001192092896"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape" 
		"useRayTraceShadows" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape" 
		"shadowRays" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:cameraShape2" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:cameraShape2" 
		"centerOfInterest" " 41.19156629690476024"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:cameraShape2" 
		"tumblePivot" " -type \"double3\" 0 46.98630365981058077 -29.20387161176967084"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR" 
		"visibility" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR" 
		"translate" " -type \"double3\" 26.13693270736709451 17.19250180424661423 -5.96076414276599742"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR" 
		"rotate" " -type \"double3\" 158.57492836259601177 73.61879063773750431 180.18226750169816341"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightRShape" 
		"intensity" " 0.30000001192092896"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightRShape" 
		"useRayTraceShadows" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightRShape" 
		"shadowRays" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightR|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:cameraShape2" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1" 
		"translate" " -type \"double3\" 11.02971644537105256 18.42963323816408305 31.50059069640125387"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1" 
		"rotate" " -type \"double3\" -26.3864304466017785 16.01035718255479168 0.049059938570748793"
		
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"intensity" " 0.20000000298023224"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"useRayTraceShadows" " 1"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"shadowRays" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"centerOfIllumination" " 36.33963383445220074"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"lightRadius" " 10"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"coneAngle" " 54.78485065339869209"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKey1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:LightKeyShape1" 
		"dropoff" " 0"
		2 "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:camera1|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:cameraShape1" 
		"renderable" " 0"
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4" 
		"uvSet[0].uvSetPoints" " -s 647"
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.33000001000000001 0 0.35416341000000001 0 0.35416341000000001 0.25 0.33000001000000001 0.25 0.33000001000000001 0.41666669000000001 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.5 0.33000001000000001 0.5 0.35416341000000001 0.75 0.33000001000000001 0.75 0.35416341000000001 0.83333330999999999 0.33000001000000001 0.83333330999999999 0.88777781 0 1 0 1 0.25 0.88777781 0.25 0 0 0.11 0 0.11 0.25 0 0.25 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 0.88777781 0 1 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0 0.88777781 0 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.88777781 0.25 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.25 0.663333359999"
		+ "99998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.5 0.66333335999999998 0.75 0.66333335999999998 0.83333330999999999 0.66333335999999998 0.41666669000000001 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.35416341000000001 1 0.35416341000000001 0.91666663000000004 0.66333335999999998 0.91666663000000004 0.66333335999999998 1 0.33000001000000001 0.91666663000000004 0.33000001000000001 1 0.22 0.25 0.22 0 0.35416341000"
		+ "000001 0.33333333999999998 0.33000001000000001 0.33333333999999998 0.66333335999999998 0.33333333999999998 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0.25 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0.77555560999999995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0 0.34208172999999997 0 0.34208172999999997 0.125 0.33000001000000001 0.125 0.35416341000000001 0 0.35416341000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0 0.35416341000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.125 0.35416341000000001 0.125 0.33000001000000001 0.25 0.33000001000000001 0.125 0.34208172999999997 0.125 0.34208172999999997 0.25 0 0 0 0 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.22 0.25 0.22 0.125 0.27500001000000002 0.125 0.27500001000000002 0.25 0.22 0 0.27500001000000002 0 0.27500001000000002 0.125 0.22 0.125 0.33000001000000001 0 0.33000001000000001 0.125 0.27500001000000002 0.125 0.27500001000000002 0 0.33000001000000001 0.25 0.27500001000000002 0.25 0.27500001000000002 0.125 0.33000001000000001 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.91666663000000004 0.34208172999999997 0.91666663000000004 0.34208172999999997 0.95833330999999999 0.33000001000000001 0.95833330999999999 0.35416341000000001 0.91666663000000004 0.35416341000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 0.91666663000000004 0.35416341000000001 1 0.34208172999999997 1 0.34208172999999997 0.95833330999999999 0.35416341000000001 0.95833330999999999 0.33000001000000001 1 0.33000001000000001 0.95833330999999999 0.34208172999999997 0.95833330999999999 0.34208172999999997 1 0 0 0 0 0 0 0 "
		+ "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.25 0.34208172999999997 0.25 0.34208172999999997 0.29166669000000001"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4" 
		"uvst[0].uvsp[250:499]" (" 0.33000001000000001 0.29166669000000001 0.35416341000000001 0.25 0.35416341000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.25 0.35416341000000001 0.33333333999999998 0.34208172999999997 0.33333333999999998 0.34208172999999997 0.29166669000000001 0.35416341000000001 0.29166669000000001 0.33000001000000001 0.33333333999999998 0.33000001000000001 0.29166669000000001 0.34208172999999997 0.29166669000000001 0.34208172999999997 0.33333333999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.625 0.33000001000000001 0.625 0.35416341000000001 0.5 0.35416341000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.5 0.35416341000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.625 0.35416341000000001 0.625 0.33000001000000001 0.75 0.33000001000000001 0.625 0.34208172999999997 0.625 0.34208172999999997 0.75 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		+ ".33000001000000001 0.41666669000000001 0.34208172999999997 0.41666669000000001 0.34208172999999997 0.45833333999999998 0.33000001000000001 0.45833333999999998 0.35416341000000001 0.41666669000000001 0.35416341000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.41666669000000001 0.35416341000000001 0.5 0.34208172999999997 0.5 0.34208172999999997 0.45833333999999998 0.35416341000000001 0.45833333999999998 0.33000001000000001 0.5 0.33000001000000001 0.45833333999999998 0.34208172999999997 0.45833333999999998 0.34208172999999997 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.055 0 0.055 0.125 0 0.125 0.11 0 0.11 0.125 0.055 0.125 0.055 0 0.11 0.25 0.055 0.25 0.055 0.125 0.11 0.125 0 0.25 0 0.125 0.055 0.125 0.055 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.33000001000000001 0.75 0.34208172999999997 0.75 0.34208172999999997 0.79166663000000004 0.33000001000000001 0.79166663000000004 0.35416341000000001 0.75 0.354163410000"
		+ "00001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.75 0.35416341000000001 0.83333330999999999 0.34208172999999997 0.83333330999999999 0.34208172999999997 0.79166663000000004 0.35416341000000001 0.79166663000000004 0.33000001000000001 0.83333330999999999 0.33000001000000001 0.79166663000000004 0.34208172999999997 0.79166663000000004 0.34208172999999997 0.83333330999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0.125 0.88777781 0.125 1 0 1 0.125 0.94388890000000003 0.125 0.94388890000000003 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.125 1 0.125 0.88777781 0.25 0.88777781 0.125 0.94388890000000003 0.125 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.88777781 0 0.94388890000000003 0 0.94388890000000003 0 0.88777781 0 1 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.94388890000000003 0 0.94388890000000003 0 1 0 0.88777781 0 0.88777781"
		+ " 0 0.94388890000000003 0 0.94388890000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0.125 1 0.125 1 0 1 0.25 1 0.25 1 0.125 1 0.125 1 0.25 1 0.125 1 0.125 1 0.25 1 0 1 0 1 0.125 1 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		)
		2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4" 
		"uvst[0].uvsp[500:646]" (" 0 0 0 0 0 0 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 1 0.25 0.88777781 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0.88777781 0.25 1 0.25 1 0.25 0.94388890000000003 0.25 0.94388890000000003 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0.25 0.66333335999999998 0 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.125 0.66333335999999998 0.125 0.66333335999999998 0 0.66333335999999998 0.25 0.66333335999999998 0.25 0.66333335999999998 0.125 0.66333335999999998 0.125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0.66333335999999998 0 0.77555560999999995 0 0.77555560999999995 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995"
		+ " 0 0.71944450999999998 0 0.71944450999999998 0 0.77555560999999995 0 0.66333335999999998 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.66333335999999998 0 0.71944450999999998 0 0.71944450999999998 0.125 0.66333335999999998 0.125 0.77555560999999995 0 0.77555560999999995 0.125 0.71944450999999998 0.125 0.71944450999999998 0 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.125 0.77555560999999995 0.125 0.66333335999999998 0.25 0.66333335999999998 0.125 0.71944450999999998 0.125 0.71944450999999998 0.25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.77555560999999995 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.77555560999999995 0.25 0.66333335999999998 0.25 0.66333335999999998 0.25 0.71944450999999998 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25 0.7194445099999999"
		+ "8 0.25 0.71944450999999998 0.25 0.66333335999999998 0.25")
		2 "|Diner_interior_Texturewip_4:curve2" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve3" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve4" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve5" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve6" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve7" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve8" "visibility" " 1"
		2 "|Diner_interior_Texturewip_4:curve9" "visibility" " 1"
		2 "Diner_interior_Texturewip_4:WindowArch_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:WindowArch_ToonShader" "color[1].color_Position" 
		" 0.48695650696754456"
		2 "Diner_interior_Texturewip_4:WindowArch_ToonShader" "specularity" " 0.5"
		
		2 "Diner_interior_Texturewip_4:WindowArch_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:WindowArch_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.44347825646400452"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "color[1].color_Position" 
		" 0.51129031181335449"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "color[1].color_Interp" 
		" 0"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "color[2].color_Position" 
		" 0.82608693838119507"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "specularity" " 0.30000001192092896"
		
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.59130436182022095"
		2 "Diner_interior_Texturewip_4:LowerWall_ToonShader" "specularColor[1].specularColor_Color" 
		" -type \"float3\" 0.81176472 0.69019609999999998 0.58431374999999997"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "color[1].color_Position" 
		" 0.38260868191719055"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "color[2].color_Position" 
		" 0.59130436182022095"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "specularity" " 0.30000001192092896"
		
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "specularColor" " -s 2"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.52173912525177002"
		2 "Diner_interior_Texturewip_4:Table_ToonShader" "specularColor[1].specularColor_Color" 
		" -type \"float3\" 1 0.94934200999999996 0.81999999000000001"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "color[1].color_Position" 
		" 0.24347825348377228"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "color[2].color_Position" 
		" 0.61739128828048706"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "specularity" " 0.40000000596046448"
		
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "specularColor" " -s 2"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.68695652484893799"
		2 "Diner_interior_Texturewip_4:Booth_ToonShader" "specularColor[1].specularColor_Color" 
		" -type \"float3\" 1 1 1"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "color[0].color_Position" 
		" 0"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "color[1].color_Position" 
		" 0.5161290168762207"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "color[2].color_Position" 
		" 0.83225804567337036"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "specularity" " 0.30000001192092896"
		
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.35652172565460205"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "specularColor[1].specularColor_Color" 
		" -type \"float3\" 1 1 1"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "specularColor[1].specularColor_Interp" 
		" 2"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "reflectivity[0].reflectivity_Position" 
		" 0"
		2 "Diner_interior_Texturewip_4:BarTop_ToonShader" "reflectivity[0].reflectivity_FloatValue" 
		" 0"
		2 "Diner_interior_Texturewip_4:BarBack_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:BarBack_ToonShader" "color[1].color_Position" 
		" 0.4790322482585907"
		2 "Diner_interior_Texturewip_4:BarBack_ToonShader" "specularity" " 0.30000001192092896"
		
		2 "Diner_interior_Texturewip_4:BarBack_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:BarBack_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.57391303777694702"
		2 "Diner_interior_Texturewip_4:BarShelvesDrawers_ToonShader" "specularity" 
		" 0.30000001192092896"
		2 "Diner_interior_Texturewip_4:BarShelvesDrawers_ToonShader" "specularColor" 
		" -s 2"
		2 "Diner_interior_Texturewip_4:BarShelvesDrawers_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.58260869979858398"
		2 "Diner_interior_Texturewip_4:BarShelvesDrawers_ToonShader" "specularColor[1].specularColor_Interp" 
		" 2"
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "color" " -s 3"
		
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "color[1].color_Position" 
		" 0.32594937086105347"
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "color[2].color_Position" 
		" 0.39556962251663208"
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "specularity" " 0.80000001192092896"
		
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "specularColor" 
		" -s 2"
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "specularColor[1].specularColor_Position" 
		" 0.16521738469600677"
		2 "Diner_interior_Texturewip_4:threeToneBrightnessShader" "specularColor[1].specularColor_Interp" 
		" 2"
		2 "Diner_interior_Texturewip_4:DrawerPull_ToonShader" "specularity" " 0.30000001192092896"
		
		2 "Diner_interior_Texturewip_4:DrawerPull_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:DrawerPull_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.73913043737411499"
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "color" " -s 3"
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "color[1].color_Position" 
		" 0.22608695924282074"
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "color[2].color_Position" 
		" 0.31612902879714966"
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "specularity" " 0.5"
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "specularColor" " -s 2"
		
		2 "Diner_interior_Texturewip_4:Plates_ToonShader" "specularColor[1].specularColor_Position" 
		" 0.60000002384185791"
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Floor|Diner_interior_Texturewip_4:FloorShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Floor|Diner_interior_Texturewip_4:FloorShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:SPAAAAAACE|Diner_interior_Texturewip_4:SPAAAAAACEShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:SPAAAAAACE|Diner_interior_Texturewip_4:SPAAAAAACEShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube3|Diner_interior_Texturewip_4:pCubeShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube3|Diner_interior_Texturewip_4:pCubeShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube4|Diner_interior_Texturewip_4:pCubeShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube4|Diner_interior_Texturewip_4:pCubeShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube5|Diner_interior_Texturewip_4:pCubeShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube5|Diner_interior_Texturewip_4:pCubeShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube1|Diner_interior_Texturewip_4:pCubeShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube1|Diner_interior_Texturewip_4:pCubeShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube2|Diner_interior_Texturewip_4:pCubeShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:pCube2|Diner_interior_Texturewip_4:pCubeShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob1|Diner_interior_Texturewip_4:KnobShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob1|Diner_interior_Texturewip_4:KnobShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob2|Diner_interior_Texturewip_4:KnobShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob2|Diner_interior_Texturewip_4:KnobShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob3|Diner_interior_Texturewip_4:KnobShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob3|Diner_interior_Texturewip_4:KnobShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob4|Diner_interior_Texturewip_4:KnobShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:ChestOfDrawers|Diner_interior_Texturewip_4:Knob4|Diner_interior_Texturewip_4:KnobShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DividerC|Diner_interior_Texturewip_4:DividerCShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DividerC|Diner_interior_Texturewip_4:DividerCShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DividerB|Diner_interior_Texturewip_4:DividerBShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DividerB|Diner_interior_Texturewip_4:DividerBShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DIviderA|Diner_interior_Texturewip_4:DIviderAShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:DIviderA|Diner_interior_Texturewip_4:DIviderAShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:Shelf|Diner_interior_Texturewip_4:ShelfShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:Shelf|Diner_interior_Texturewip_4:ShelfShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:Underboard|Diner_interior_Texturewip_4:UnderboardShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "link" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:Bartop|Diner_interior_Texturewip_4:BartopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "link" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarFramework|Diner_interior_Texturewip_4:Bartop|Diner_interior_Texturewip_4:BartopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu1|Diner_interior_Texturewip_4:Menu1Shape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu1|Diner_interior_Texturewip_4:Menu1Shape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu2|Diner_interior_Texturewip_4:Menu2Shape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Menu2|Diner_interior_Texturewip_4:Menu2Shape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate040|Diner_interior_Texturewip_4:Plate0Shape40.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate040|Diner_interior_Texturewip_4:Plate0Shape40.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate039|Diner_interior_Texturewip_4:Plate0Shape39.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate039|Diner_interior_Texturewip_4:Plate0Shape39.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate038|Diner_interior_Texturewip_4:Plate0Shape38.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate038|Diner_interior_Texturewip_4:Plate0Shape38.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate037|Diner_interior_Texturewip_4:Plate0Shape37.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate037|Diner_interior_Texturewip_4:Plate0Shape37.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate036|Diner_interior_Texturewip_4:Plate0Shape36.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate036|Diner_interior_Texturewip_4:Plate0Shape36.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate035|Diner_interior_Texturewip_4:Plate0Shape35.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate035|Diner_interior_Texturewip_4:Plate0Shape35.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate034|Diner_interior_Texturewip_4:Plate0Shape34.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate034|Diner_interior_Texturewip_4:Plate0Shape34.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate033|Diner_interior_Texturewip_4:Plate0Shape33.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate033|Diner_interior_Texturewip_4:Plate0Shape33.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate032|Diner_interior_Texturewip_4:Plate0Shape32.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate032|Diner_interior_Texturewip_4:Plate0Shape32.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate031|Diner_interior_Texturewip_4:Plate0Shape31.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesC|Diner_interior_Texturewip_4:Plate031|Diner_interior_Texturewip_4:Plate0Shape31.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate030|Diner_interior_Texturewip_4:Plate0Shape30.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate030|Diner_interior_Texturewip_4:Plate0Shape30.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate029|Diner_interior_Texturewip_4:Plate0Shape29.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate029|Diner_interior_Texturewip_4:Plate0Shape29.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate028|Diner_interior_Texturewip_4:Plate0Shape28.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate028|Diner_interior_Texturewip_4:Plate0Shape28.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate027|Diner_interior_Texturewip_4:Plate0Shape27.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate027|Diner_interior_Texturewip_4:Plate0Shape27.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate026|Diner_interior_Texturewip_4:Plate0Shape26.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate026|Diner_interior_Texturewip_4:Plate0Shape26.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate025|Diner_interior_Texturewip_4:Plate0Shape25.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate025|Diner_interior_Texturewip_4:Plate0Shape25.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate024|Diner_interior_Texturewip_4:Plate0Shape24.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate024|Diner_interior_Texturewip_4:Plate0Shape24.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate023|Diner_interior_Texturewip_4:Plate0Shape23.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate023|Diner_interior_Texturewip_4:Plate0Shape23.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate022|Diner_interior_Texturewip_4:Plate0Shape22.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate022|Diner_interior_Texturewip_4:Plate0Shape22.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate021|Diner_interior_Texturewip_4:Plate0Shape21.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesB|Diner_interior_Texturewip_4:Plate021|Diner_interior_Texturewip_4:Plate0Shape21.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate02|Diner_interior_Texturewip_4:Plate0Shape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate02|Diner_interior_Texturewip_4:Plate0Shape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate04|Diner_interior_Texturewip_4:Plate0Shape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate04|Diner_interior_Texturewip_4:Plate0Shape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate06|Diner_interior_Texturewip_4:Plate0Shape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate06|Diner_interior_Texturewip_4:Plate0Shape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate08|Diner_interior_Texturewip_4:Plate0Shape8.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate08|Diner_interior_Texturewip_4:Plate0Shape8.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate010|Diner_interior_Texturewip_4:Plate0Shape10.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate010|Diner_interior_Texturewip_4:Plate0Shape10.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate012|Diner_interior_Texturewip_4:Plate0Shape12.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate012|Diner_interior_Texturewip_4:Plate0Shape12.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate014|Diner_interior_Texturewip_4:Plate0Shape14.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate014|Diner_interior_Texturewip_4:Plate0Shape14.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate016|Diner_interior_Texturewip_4:Plate0Shape16.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate016|Diner_interior_Texturewip_4:Plate0Shape16.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate018|Diner_interior_Texturewip_4:Plate0Shape18.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate018|Diner_interior_Texturewip_4:Plate0Shape18.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate020|Diner_interior_Texturewip_4:Plate0Shape20.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Plates|Diner_interior_Texturewip_4:PlatesA|Diner_interior_Texturewip_4:Plate020|Diner_interior_Texturewip_4:Plate0Shape20.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe34|Diner_interior_Texturewip_4:pPipeShape34.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe34|Diner_interior_Texturewip_4:pPipeShape34.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe33|Diner_interior_Texturewip_4:pPipeShape33.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe33|Diner_interior_Texturewip_4:pPipeShape33.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe31|Diner_interior_Texturewip_4:pPipeShape31.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe31|Diner_interior_Texturewip_4:pPipeShape31.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe30|Diner_interior_Texturewip_4:pPipeShape30.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe30|Diner_interior_Texturewip_4:pPipeShape30.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe29|Diner_interior_Texturewip_4:pPipeShape29.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe29|Diner_interior_Texturewip_4:pPipeShape29.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe28|Diner_interior_Texturewip_4:pPipeShape28.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe28|Diner_interior_Texturewip_4:pPipeShape28.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe27|Diner_interior_Texturewip_4:pPipeShape27.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe27|Diner_interior_Texturewip_4:pPipeShape27.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe26|Diner_interior_Texturewip_4:pPipeShape26.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe26|Diner_interior_Texturewip_4:pPipeShape26.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe24|Diner_interior_Texturewip_4:pPipeShape24.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe24|Diner_interior_Texturewip_4:pPipeShape24.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe23|Diner_interior_Texturewip_4:pPipeShape23.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe23|Diner_interior_Texturewip_4:pPipeShape23.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe22|Diner_interior_Texturewip_4:pPipeShape22.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsC|Diner_interior_Texturewip_4:pPipe22|Diner_interior_Texturewip_4:pPipeShape22.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe35|Diner_interior_Texturewip_4:pPipeShape35.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe35|Diner_interior_Texturewip_4:pPipeShape35.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe36|Diner_interior_Texturewip_4:pPipeShape36.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe36|Diner_interior_Texturewip_4:pPipeShape36.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe37|Diner_interior_Texturewip_4:pPipeShape37.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe37|Diner_interior_Texturewip_4:pPipeShape37.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe38|Diner_interior_Texturewip_4:pPipeShape38.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe38|Diner_interior_Texturewip_4:pPipeShape38.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe39|Diner_interior_Texturewip_4:pPipeShape39.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe39|Diner_interior_Texturewip_4:pPipeShape39.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe40|Diner_interior_Texturewip_4:pPipeShape40.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe40|Diner_interior_Texturewip_4:pPipeShape40.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe41|Diner_interior_Texturewip_4:pPipeShape41.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe41|Diner_interior_Texturewip_4:pPipeShape41.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe42|Diner_interior_Texturewip_4:pPipeShape42.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe42|Diner_interior_Texturewip_4:pPipeShape42.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe43|Diner_interior_Texturewip_4:pPipeShape43.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe43|Diner_interior_Texturewip_4:pPipeShape43.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe44|Diner_interior_Texturewip_4:pPipeShape44.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe44|Diner_interior_Texturewip_4:pPipeShape44.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe45|Diner_interior_Texturewip_4:pPipeShape45.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe45|Diner_interior_Texturewip_4:pPipeShape45.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe46|Diner_interior_Texturewip_4:pPipeShape46.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe46|Diner_interior_Texturewip_4:pPipeShape46.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe47|Diner_interior_Texturewip_4:pPipeShape47.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe47|Diner_interior_Texturewip_4:pPipeShape47.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe48|Diner_interior_Texturewip_4:pPipeShape48.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe48|Diner_interior_Texturewip_4:pPipeShape48.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe49|Diner_interior_Texturewip_4:pPipeShape49.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe49|Diner_interior_Texturewip_4:pPipeShape49.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe50|Diner_interior_Texturewip_4:pPipeShape50.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe50|Diner_interior_Texturewip_4:pPipeShape50.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe51|Diner_interior_Texturewip_4:pPipeShape51.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe51|Diner_interior_Texturewip_4:pPipeShape51.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe52|Diner_interior_Texturewip_4:pPipeShape52.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe52|Diner_interior_Texturewip_4:pPipeShape52.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe53|Diner_interior_Texturewip_4:pPipeShape53.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe53|Diner_interior_Texturewip_4:pPipeShape53.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe54|Diner_interior_Texturewip_4:pPipeShape54.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsB|Diner_interior_Texturewip_4:pPipe54|Diner_interior_Texturewip_4:pPipeShape54.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe2|Diner_interior_Texturewip_4:pPipeShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe2|Diner_interior_Texturewip_4:pPipeShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe3|Diner_interior_Texturewip_4:pPipeShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe3|Diner_interior_Texturewip_4:pPipeShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe4|Diner_interior_Texturewip_4:pPipeShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe4|Diner_interior_Texturewip_4:pPipeShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe5|Diner_interior_Texturewip_4:pPipeShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe5|Diner_interior_Texturewip_4:pPipeShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe6|Diner_interior_Texturewip_4:pPipeShape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe6|Diner_interior_Texturewip_4:pPipeShape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe7|Diner_interior_Texturewip_4:pPipeShape7.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe7|Diner_interior_Texturewip_4:pPipeShape7.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe8|Diner_interior_Texturewip_4:pPipeShape8.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe8|Diner_interior_Texturewip_4:pPipeShape8.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe9|Diner_interior_Texturewip_4:pPipeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe9|Diner_interior_Texturewip_4:pPipeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe10|Diner_interior_Texturewip_4:pPipeShape10.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe10|Diner_interior_Texturewip_4:pPipeShape10.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe11|Diner_interior_Texturewip_4:pPipeShape11.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe11|Diner_interior_Texturewip_4:pPipeShape11.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe12|Diner_interior_Texturewip_4:pPipeShape12.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe12|Diner_interior_Texturewip_4:pPipeShape12.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe13|Diner_interior_Texturewip_4:pPipeShape13.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe13|Diner_interior_Texturewip_4:pPipeShape13.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe14|Diner_interior_Texturewip_4:pPipeShape14.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe14|Diner_interior_Texturewip_4:pPipeShape14.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe15|Diner_interior_Texturewip_4:pPipeShape15.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe15|Diner_interior_Texturewip_4:pPipeShape15.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe16|Diner_interior_Texturewip_4:pPipeShape16.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe16|Diner_interior_Texturewip_4:pPipeShape16.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe17|Diner_interior_Texturewip_4:pPipeShape17.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe17|Diner_interior_Texturewip_4:pPipeShape17.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe18|Diner_interior_Texturewip_4:pPipeShape18.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe18|Diner_interior_Texturewip_4:pPipeShape18.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe19|Diner_interior_Texturewip_4:pPipeShape19.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe19|Diner_interior_Texturewip_4:pPipeShape19.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe20|Diner_interior_Texturewip_4:pPipeShape20.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe20|Diner_interior_Texturewip_4:pPipeShape20.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe21|Diner_interior_Texturewip_4:pPipeShape21.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:Cups|Diner_interior_Texturewip_4:CupsA|Diner_interior_Texturewip_4:pPipe21|Diner_interior_Texturewip_4:pPipeShape21.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarStoolObject|Diner_interior_Texturewip_4:BarStoolObjectShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:BarGroup|Diner_interior_Texturewip_4:BarStoolObject|Diner_interior_Texturewip_4:BarStoolObjectShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Table1|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth1|Diner_interior_Texturewip_4:Chairs1|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Table2|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth2|Diner_interior_Texturewip_4:Chairs2|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape5.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair2|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:polyToSubd1|Diner_interior_Texturewip_4:subdTessShape6.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Chairs3|Diner_interior_Texturewip_4:Chair1|Diner_interior_Texturewip_4:pCube9|Diner_interior_Texturewip_4:pCubeShape9.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Tabletop|Diner_interior_Texturewip_4:TabletopShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg1|Diner_interior_Texturewip_4:LegShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg2|Diner_interior_Texturewip_4:LegShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:Booth3|Diner_interior_Texturewip_4:Table3|Diner_interior_Texturewip_4:Leg3|Diner_interior_Texturewip_4:LegShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Diner_WallLower|Diner_interior_Texturewip_4:Diner_WallLowerShape.message" "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:WIndowFrames|Diner_interior_Texturewip_4:WIndowFramesShape.message" "|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:CharacterDimensionCube|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:Lights|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightL|Diner_interior_Texturewip_4:Lightrig_v2_3:Lightrig_v2_2:RimLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:Door2|Diner_interior_Texturewip_4:Door:DoorShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:Door2|Diner_interior_Texturewip_4:Door:DoorShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:Door1|Diner_interior_Texturewip_4:Door:DoorShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:Door1|Diner_interior_Texturewip_4:Door:DoorShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:DoorTorusShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:DoorTorusShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd1|Diner_interior_Texturewip_4:Door:polyToSubdShape1.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd2|Diner_interior_Texturewip_4:Door:polyToSubdShape2.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd3|Diner_interior_Texturewip_4:Door:polyToSubdShape3.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Door1|Diner_interior_Texturewip_4:Door:Door|Diner_interior_Texturewip_4:Door:DoorTorus|Diner_interior_Texturewip_4:Door:SubdivFasteners|Diner_interior_Texturewip_4:Door:polyToSubd4|Diner_interior_Texturewip_4:Door:polyToSubdShape4.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:WIndowFrames|Diner_interior_Texturewip_4:WIndowFramesShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:WIndowFrames|Diner_interior_Texturewip_4:WIndowFramesShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Diner_WallLower|Diner_interior_Texturewip_4:Diner_WallLowerShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Diner_interior_Texturewip_4:DinerWalls|Diner_interior_Texturewip_4:Diner_WallLower|Diner_interior_Texturewip_4:Diner_WallLowerShape.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:phong1SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:phong1SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:lambert2SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:lambert2SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:lambert3SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:lambert3SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader1SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader1SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader2SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader2SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader3SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader3SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader4SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader4SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader5SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader5SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader6SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader6SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader7SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader7SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader8SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader8SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader9SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader9SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader10SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader10SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader11SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader11SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader12SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader12SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader13SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader13SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader14SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "Diner_interior_Texturewip_4:rampShader14SG.message" "|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayOptions -s -n "miContourPreset";
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
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:WhiteChrome";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo2";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5";
	setAttr ".c" -type "float3" 0 0.42500001 0.03562912 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo5";
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo2";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxExportMotion";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxBackfaceCulling";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToCamera";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToSecRays";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToGI";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToZClip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxSpecifyObjIdColor";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxObjectOpacity";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxSubdScheme";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition1";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo5";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome1";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo6";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo7";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome1";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo8";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange1";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxExportMotion1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxBackfaceCulling1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToCamera1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToSecRays1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToGI1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxHideToZClip1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxSpecifyObjIdColor1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxObjectOpacity1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polySurface3_mxSubdScheme1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition2";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo9";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome2";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo10";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo11";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome2";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo12";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange2";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition3";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo13";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome3";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo14";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo15";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome3";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo16";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange3";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo17";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5";
	setAttr ".c" -type "float3" 0 0.42500001 0.03562912 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo2";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:polyUnite5";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:polyUnite6";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:polyUnite9";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:polyUnite10";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:polyUnite11";
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode surfaceShader -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:materialInfo1";
createNode file -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/fred/perryPlayScreen.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Galactica_v1_Model_FinalCandidateCombined:polyUnite1";
createNode groupId -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Galactica_v1_Model_FinalCandidateCombined:groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Galactica_v1_Model_FinalCandidateCombined:groupId29";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup2";
	setAttr ".c" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".cp" 98.07843017578125;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode groupId -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:groupId17";
	setAttr ".ihi" 0;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_TeethLights:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup1";
	setAttr ".c" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".cp" 98.07843017578125;
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:WhiteChrome";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo2";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5";
	setAttr ".c" -type "float3" 0 0.42500001 0.03562912 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo5";
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo2";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxExportMotion";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxBackfaceCulling";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToCamera";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToSecRays";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToGI";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToZClip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxSpecifyObjIdColor";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 20 0 40 0 55 0 150 0 170 0 185 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxObjectOpacity";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxSubdScheme";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 20 1 40 1 55 1 150 1 170 1 185 1 200 1;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition1";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo5";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome1";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo6";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo7";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome1";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo8";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange1";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxExportMotion1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxBackfaceCulling1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToCamera1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToSecRays1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToGI1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxHideToZClip1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxSpecifyObjIdColor1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxObjectOpacity1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode animCurveTU -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:polySurface3_mxSubdScheme1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 25 0 46 0 150 0 175 0 200 0;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition2";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo9";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome2";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo10";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo11";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome2";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo12";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange2";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition3";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo13";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome3";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo14";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo15";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome3";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo16";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange3";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo17";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5";
	setAttr ".c" -type "float3" 0 0.42500001 0.03562912 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo1";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__OrangeChrome";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo2";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo3";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__GrayChrome";
	setAttr ".c" -type "float3" 0.43700001 0.43700001 0.43700001 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo4";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__DrkOrange";
	setAttr ".c" -type "float3" 0.50980395 0.29879978 0 ;
createNode partition -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition4";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo13";
createNode phong -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome3";
	setAttr ".c" -type "float3" 0.98039216 0.57461494 0 ;
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo1";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo2";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo3";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo4";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo5";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo6";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo7";
createNode polyUnite -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:polyUnite1";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:materialInfo1";
createNode shadingEngine -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:materialInfo2";
createNode rampShader -n "Kelvin_v1_Shaded:kelvinBodyFourTone";
	setAttr ".dc" 1;
	setAttr -s 4 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.27826085686683655;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.72173911333084106;
	setAttr ".clr[2].clri" 0;
	setAttr ".clr[3].clrp" 0.91304349899291992;
	setAttr ".clr[3].clri" 0;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".trsd" 1000;
	setAttr ".ec" 0.5;
	setAttr ".spl" 0.40000000596046448;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.5565217137336731;
	setAttr ".sc[1].scc" -type "float3" 1 0.84014845 0.71899998 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0.02 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Kelvin_v1_Shaded:rampShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:materialInfo1";
createNode file -n "Kelvin_v1_Shaded:file1";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone1.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture1";
createNode file -n "Kelvin_v1_Shaded:file2";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone2.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture2";
createNode file -n "Kelvin_v1_Shaded:file3";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone3.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture3";
createNode file -n "Kelvin_v1_Shaded:file4";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone4.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture4";
createNode rampShader -n "Kelvin_v1_Shaded:threeToneBrightnessShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0.0086956517770886421;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.50434780120849609;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.84347826242446899;
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
	setAttr ".spl" 0.20000000298023224;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.59130436182022095;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "Kelvin_v1_Shaded:rampShader2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Kelvin_v1_Shaded:materialInfo2";
createNode file -n "Kelvin_v1_Shaded:file5";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone1.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture5";
createNode file -n "Kelvin_v1_Shaded:file6";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone2.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture6";
createNode file -n "Kelvin_v1_Shaded:file7";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone3.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture7";
createNode file -n "Kelvin_v1_Shaded:file8";
	setAttr ".ftn" -type "string" "/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone4.jpg";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture8";
createNode partition -n "Kelvin_v1_Shaded:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode partition -n "Kelvin_v1_Shaded:Lightrig_v2_3:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode file -n "Kelvin_v1_Shaded:file9";
createNode place2dTexture -n "Kelvin_v1_Shaded:place2dTexture9";
createNode partition -n "Kelvin_v1_Shaded:camera2:mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
createNode partition -n "mtorPartition";
	addAttr -s false -ci true -sn "rgcnx" -ln "rgcnx" -at "message";
	addAttr -ci true -sn "sd" -ln "slimData" -dt "string";
	addAttr -ci true -sn "sr" -ln "slimRIB" -dt "string";
	addAttr -ci true -sn "rd" -ln "rlfData" -dt "string";
	setAttr ".sr" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 86 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 67 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
	setAttr -s 7 ".l";
select -ne :defaultTextureList1;
	setAttr -s 12 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 32;
	setAttr ".imfkey" -type "string" "png";
select -ne :defaultResolution;
	setAttr ".w" 1136;
	setAttr ".h" 640;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7749999761581421;
select -ne :defaultLightSet;
	setAttr -s 7 ".dsm";
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
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:rampShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Kelvin_v1_Shaded:rampShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:rampShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Kelvin_v1_Shaded:rampShader2SG.message" ":defaultLightSet.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:rampShader1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:rampShader2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" ":initialShadingGroup.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" ":initialParticleSE.message" "counterLightRShape.message";
relationship "ignore" ":lightLinker1" ":initialParticleSE.message" "counterLightLShape.message";
relationship "ignore" ":lightLinker1" ":initialShadingGroup.message" "counterLightLShape.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Diner_interior_Texturewip_4RNfosterParent1.msg" "Diner_interior_Texturewip_4RN.fp"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:WhiteChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:WhiteChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo2.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo4.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo5.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:materialInfo5.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:mtorPartition.rgcnx"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo4.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition1.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo5.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo5.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo6.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo7.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo7.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo8.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo8.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition2.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo9.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo9.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo10.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo11.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo11.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo12.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo12.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition3.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo13.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo13.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo14.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo15.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo15.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo16.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo16.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo17.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__materialInfo17.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo4.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Megan_v1_Model_FinalCandidate:mtorPartition.rgcnx"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:mtorPartition.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1.oc"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:materialInfo1.t"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.c" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.c"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.tf" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.tf"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.rf" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.rf"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.mu" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.mu"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.mv" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.mv"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.s" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.s"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.wu" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.wu"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.wv" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.wv"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.re" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.re"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.of" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.of"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.r" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.ro"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.n" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.n"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.vt1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.vt1"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.vt2" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.vt2"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.vt3" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.vt3"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.vc1" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.vc1"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.o" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.uv"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.ofs" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.fs"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:materialInfo1.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:mtorPartition.rgcnx"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_TeethLights:mtorPartition.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:WhiteChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:WhiteChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo2.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo4.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo5.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:materialInfo5.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:mtorPartition.rgcnx"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo4.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition1.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo5.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo5.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo6.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo7.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo7.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange1.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo8.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange1.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo8.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition2.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo9.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo9.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo10.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo11.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo11.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange2.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo12.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange2.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo12.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__mtorPartition3.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo13.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo13.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo14.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo15.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo15.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo16.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo16.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo17.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__materialInfo17.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__OrangeChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__OrangeChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__GrayChrome.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__GrayChrome.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo3.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__DrkOrange.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__DrkOrange.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__materialInfo4.m"
		;
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__mtorPartition4.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome3.oc" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.ss"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo13.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__materialInfo13.m"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo3.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo4.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo5.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo6.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:materialInfo7.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG.msg" "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:file1.oc" "Kelvin_v1_Shaded:kelvinBodyFourTone.clr[0].clrc"
		;
connectAttr "Kelvin_v1_Shaded:file2.oc" "Kelvin_v1_Shaded:kelvinBodyFourTone.clr[1].clrc"
		;
connectAttr "Kelvin_v1_Shaded:file3.oc" "Kelvin_v1_Shaded:kelvinBodyFourTone.clr[2].clrc"
		;
connectAttr "Kelvin_v1_Shaded:file4.oc" "Kelvin_v1_Shaded:kelvinBodyFourTone.clr[3].clrc"
		;
connectAttr "Kelvin_v1_Shaded:kelvinBodyFourTone.oc" "Kelvin_v1_Shaded:rampShader1SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:rampShader1SG.msg" "Kelvin_v1_Shaded:materialInfo1.sg"
		;
connectAttr "Kelvin_v1_Shaded:kelvinBodyFourTone.msg" "Kelvin_v1_Shaded:materialInfo1.m"
		;
connectAttr "Kelvin_v1_Shaded:kelvinBodyFourTone.msg" "Kelvin_v1_Shaded:materialInfo1.t"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture1.c" "Kelvin_v1_Shaded:file1.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.tf" "Kelvin_v1_Shaded:file1.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.rf" "Kelvin_v1_Shaded:file1.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.mu" "Kelvin_v1_Shaded:file1.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.mv" "Kelvin_v1_Shaded:file1.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.s" "Kelvin_v1_Shaded:file1.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.wu" "Kelvin_v1_Shaded:file1.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.wv" "Kelvin_v1_Shaded:file1.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.re" "Kelvin_v1_Shaded:file1.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.of" "Kelvin_v1_Shaded:file1.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.r" "Kelvin_v1_Shaded:file1.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.n" "Kelvin_v1_Shaded:file1.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.vt1" "Kelvin_v1_Shaded:file1.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.vt2" "Kelvin_v1_Shaded:file1.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.vt3" "Kelvin_v1_Shaded:file1.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.vc1" "Kelvin_v1_Shaded:file1.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.o" "Kelvin_v1_Shaded:file1.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture1.ofs" "Kelvin_v1_Shaded:file1.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.c" "Kelvin_v1_Shaded:file2.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.tf" "Kelvin_v1_Shaded:file2.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.rf" "Kelvin_v1_Shaded:file2.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.mu" "Kelvin_v1_Shaded:file2.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.mv" "Kelvin_v1_Shaded:file2.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.s" "Kelvin_v1_Shaded:file2.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.wu" "Kelvin_v1_Shaded:file2.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.wv" "Kelvin_v1_Shaded:file2.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.re" "Kelvin_v1_Shaded:file2.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.of" "Kelvin_v1_Shaded:file2.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.r" "Kelvin_v1_Shaded:file2.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.n" "Kelvin_v1_Shaded:file2.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.vt1" "Kelvin_v1_Shaded:file2.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.vt2" "Kelvin_v1_Shaded:file2.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.vt3" "Kelvin_v1_Shaded:file2.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.vc1" "Kelvin_v1_Shaded:file2.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.o" "Kelvin_v1_Shaded:file2.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture2.ofs" "Kelvin_v1_Shaded:file2.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.c" "Kelvin_v1_Shaded:file3.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.tf" "Kelvin_v1_Shaded:file3.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.rf" "Kelvin_v1_Shaded:file3.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.mu" "Kelvin_v1_Shaded:file3.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.mv" "Kelvin_v1_Shaded:file3.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.s" "Kelvin_v1_Shaded:file3.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.wu" "Kelvin_v1_Shaded:file3.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.wv" "Kelvin_v1_Shaded:file3.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.re" "Kelvin_v1_Shaded:file3.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.of" "Kelvin_v1_Shaded:file3.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.r" "Kelvin_v1_Shaded:file3.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.n" "Kelvin_v1_Shaded:file3.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.vt1" "Kelvin_v1_Shaded:file3.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.vt2" "Kelvin_v1_Shaded:file3.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.vt3" "Kelvin_v1_Shaded:file3.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.vc1" "Kelvin_v1_Shaded:file3.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.o" "Kelvin_v1_Shaded:file3.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture3.ofs" "Kelvin_v1_Shaded:file3.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.c" "Kelvin_v1_Shaded:file4.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.tf" "Kelvin_v1_Shaded:file4.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.rf" "Kelvin_v1_Shaded:file4.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.mu" "Kelvin_v1_Shaded:file4.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.mv" "Kelvin_v1_Shaded:file4.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.s" "Kelvin_v1_Shaded:file4.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.wu" "Kelvin_v1_Shaded:file4.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.wv" "Kelvin_v1_Shaded:file4.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.re" "Kelvin_v1_Shaded:file4.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.of" "Kelvin_v1_Shaded:file4.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.r" "Kelvin_v1_Shaded:file4.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.n" "Kelvin_v1_Shaded:file4.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.vt1" "Kelvin_v1_Shaded:file4.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.vt2" "Kelvin_v1_Shaded:file4.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.vt3" "Kelvin_v1_Shaded:file4.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.vc1" "Kelvin_v1_Shaded:file4.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.o" "Kelvin_v1_Shaded:file4.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture4.ofs" "Kelvin_v1_Shaded:file4.fs";
connectAttr "Kelvin_v1_Shaded:file5.oc" "Kelvin_v1_Shaded:threeToneBrightnessShader.clr[0].clrc"
		;
connectAttr "Kelvin_v1_Shaded:file6.oc" "Kelvin_v1_Shaded:threeToneBrightnessShader.clr[1].clrc"
		;
connectAttr "Kelvin_v1_Shaded:file7.oc" "Kelvin_v1_Shaded:threeToneBrightnessShader.clr[2].clrc"
		;
connectAttr "Kelvin_v1_Shaded:threeToneBrightnessShader.oc" "Kelvin_v1_Shaded:rampShader2SG.ss"
		;
connectAttr "Kelvin_v1_Shaded:rampShader2SG.msg" "Kelvin_v1_Shaded:materialInfo2.sg"
		;
connectAttr "Kelvin_v1_Shaded:threeToneBrightnessShader.msg" "Kelvin_v1_Shaded:materialInfo2.m"
		;
connectAttr "Kelvin_v1_Shaded:threeToneBrightnessShader.msg" "Kelvin_v1_Shaded:materialInfo2.t"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture5.c" "Kelvin_v1_Shaded:file5.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.tf" "Kelvin_v1_Shaded:file5.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.rf" "Kelvin_v1_Shaded:file5.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.mu" "Kelvin_v1_Shaded:file5.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.mv" "Kelvin_v1_Shaded:file5.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.s" "Kelvin_v1_Shaded:file5.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.wu" "Kelvin_v1_Shaded:file5.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.wv" "Kelvin_v1_Shaded:file5.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.re" "Kelvin_v1_Shaded:file5.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.of" "Kelvin_v1_Shaded:file5.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.r" "Kelvin_v1_Shaded:file5.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.n" "Kelvin_v1_Shaded:file5.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.vt1" "Kelvin_v1_Shaded:file5.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.vt2" "Kelvin_v1_Shaded:file5.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.vt3" "Kelvin_v1_Shaded:file5.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.vc1" "Kelvin_v1_Shaded:file5.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.o" "Kelvin_v1_Shaded:file5.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture5.ofs" "Kelvin_v1_Shaded:file5.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.c" "Kelvin_v1_Shaded:file6.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.tf" "Kelvin_v1_Shaded:file6.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.rf" "Kelvin_v1_Shaded:file6.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.mu" "Kelvin_v1_Shaded:file6.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.mv" "Kelvin_v1_Shaded:file6.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.s" "Kelvin_v1_Shaded:file6.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.wu" "Kelvin_v1_Shaded:file6.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.wv" "Kelvin_v1_Shaded:file6.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.re" "Kelvin_v1_Shaded:file6.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.of" "Kelvin_v1_Shaded:file6.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.r" "Kelvin_v1_Shaded:file6.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.n" "Kelvin_v1_Shaded:file6.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.vt1" "Kelvin_v1_Shaded:file6.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.vt2" "Kelvin_v1_Shaded:file6.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.vt3" "Kelvin_v1_Shaded:file6.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.vc1" "Kelvin_v1_Shaded:file6.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.o" "Kelvin_v1_Shaded:file6.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture6.ofs" "Kelvin_v1_Shaded:file6.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.c" "Kelvin_v1_Shaded:file7.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.tf" "Kelvin_v1_Shaded:file7.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.rf" "Kelvin_v1_Shaded:file7.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.mu" "Kelvin_v1_Shaded:file7.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.mv" "Kelvin_v1_Shaded:file7.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.s" "Kelvin_v1_Shaded:file7.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.wu" "Kelvin_v1_Shaded:file7.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.wv" "Kelvin_v1_Shaded:file7.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.re" "Kelvin_v1_Shaded:file7.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.of" "Kelvin_v1_Shaded:file7.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.r" "Kelvin_v1_Shaded:file7.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.n" "Kelvin_v1_Shaded:file7.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.vt1" "Kelvin_v1_Shaded:file7.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.vt2" "Kelvin_v1_Shaded:file7.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.vt3" "Kelvin_v1_Shaded:file7.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.vc1" "Kelvin_v1_Shaded:file7.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.o" "Kelvin_v1_Shaded:file7.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture7.ofs" "Kelvin_v1_Shaded:file7.fs";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.c" "Kelvin_v1_Shaded:file8.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.tf" "Kelvin_v1_Shaded:file8.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.rf" "Kelvin_v1_Shaded:file8.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.mu" "Kelvin_v1_Shaded:file8.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.mv" "Kelvin_v1_Shaded:file8.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.s" "Kelvin_v1_Shaded:file8.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.wu" "Kelvin_v1_Shaded:file8.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.wv" "Kelvin_v1_Shaded:file8.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.re" "Kelvin_v1_Shaded:file8.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.of" "Kelvin_v1_Shaded:file8.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.r" "Kelvin_v1_Shaded:file8.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.n" "Kelvin_v1_Shaded:file8.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.vt1" "Kelvin_v1_Shaded:file8.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.vt2" "Kelvin_v1_Shaded:file8.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.vt3" "Kelvin_v1_Shaded:file8.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.vc1" "Kelvin_v1_Shaded:file8.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.o" "Kelvin_v1_Shaded:file8.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture8.ofs" "Kelvin_v1_Shaded:file8.fs";
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:mtorPartition.rgcnx";
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:Lightrig_v2_3:mtorPartition.rgcnx"
		;
connectAttr "Kelvin_v1_Shaded:place2dTexture9.c" "Kelvin_v1_Shaded:file9.c";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.tf" "Kelvin_v1_Shaded:file9.tf";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.rf" "Kelvin_v1_Shaded:file9.rf";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.mu" "Kelvin_v1_Shaded:file9.mu";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.mv" "Kelvin_v1_Shaded:file9.mv";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.s" "Kelvin_v1_Shaded:file9.s";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.wu" "Kelvin_v1_Shaded:file9.wu";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.wv" "Kelvin_v1_Shaded:file9.wv";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.re" "Kelvin_v1_Shaded:file9.re";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.of" "Kelvin_v1_Shaded:file9.of";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.r" "Kelvin_v1_Shaded:file9.ro";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.n" "Kelvin_v1_Shaded:file9.n";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.vt1" "Kelvin_v1_Shaded:file9.vt1";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.vt2" "Kelvin_v1_Shaded:file9.vt2";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.vt3" "Kelvin_v1_Shaded:file9.vt3";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.vc1" "Kelvin_v1_Shaded:file9.vc1";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.o" "Kelvin_v1_Shaded:file9.uv";
connectAttr "Kelvin_v1_Shaded:place2dTexture9.ofs" "Kelvin_v1_Shaded:file9.fs";
connectAttr ":defaultRenderGlobals.msg" "Kelvin_v1_Shaded:camera2:mtorPartition.rgcnx"
		;
connectAttr ":defaultRenderGlobals.msg" "mtorPartition.rgcnx";
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong1SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong2SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong3SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong4SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG1.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong1SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong2SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong3SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong4SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__phong1SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:initialShadingGroup.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__pasted__phong1SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:pasted__phong1SG3.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_everythingUVyes:phong4SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:kelvin_ScreenMouthUVyes:phong5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Kelvin_v1_Shaded:rampShader1SG.pa" ":renderPartition.st" -na;
connectAttr "Kelvin_v1_Shaded:rampShader2SG.pa" ":renderPartition.st" -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:WhiteChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:phong5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__OrangeChrome3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__GrayChrome3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__DrkOrange3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__phong5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:surfaceShader1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:initialShadingGroup2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Spike_v4_ModelFinal:Spike_v1_Model08headFix:initialShadingGroup1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:WhiteChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:phong5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__OrangeChrome3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__GrayChrome3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__DrkOrange3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__phong5.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__OrangeChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__GrayChrome.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Kelvin_v1_ModelFinalCandidate:pasted__pasted__DrkOrange.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:pasted__pasted__OrangeChrome3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:kelvinBodyFourTone.msg" ":defaultShaderList1.s" -na
		;
connectAttr "Kelvin_v1_Shaded:threeToneBrightnessShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture6.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture7.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture8.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Kelvin_v1_Shaded:place2dTexture9.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "counterLightRShape.ltd" ":lightList1.l" -na;
connectAttr "counterLightLShape.ltd" ":lightList1.l" -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Kelvin_v1_Shaded:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Galactica_v1_Model_FinalCandidateCombined:groupId28.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Galactica_v1_Model_FinalCandidateCombined:groupId29.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "counterLightR.iog" ":defaultLightSet.dsm" -na;
connectAttr "counterLightL.iog" ":defaultLightSet.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Diner_interior_Texturewip_4RN\" \"\" \"/Users/publicuser/Documents/sprite sheet singles/Diner_interior_Texturewip_4.ma\" 470440198 \"/Users/aislynnkilgore/Desktop/Hampshire Div 3/Game Studio/Animation FIles/Animation_Reference File_v1/Diner Project Folder/Diner_interior_Texturewip_4.ma\" \"FileRef\"\n1\n\"|Diner_interior_Texturewip_4RNfosterParent1|counterLightR|counterLightRShape\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n2\n\"|Diner_interior_Texturewip_4RNfosterParent1|counterLightL|counterLightLShape\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n3\n\"Kelvin_v1_Shaded:Kelvin_v1_UVModelFinal:Kelvin_ScaledRefModel:Fred_v1_ModelFinal:file1\" \"fileTextureName\" \"/Users/publicuser/Documents/fred/perryPlayScreen.jpg\" 592780975 \"\" \"sourceImages\"\n4\n\"Kelvin_v1_Shaded:file1\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone1.jpg\" 3602203233 \"\" \"sourceImages\"\n5\n\"Kelvin_v1_Shaded:file2\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone2.jpg\" 2434087089 \"\" \"sourceImages\"\n6\n\"Kelvin_v1_Shaded:file3\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone3.jpg\" 2893353217 \"\" \"sourceImages\"\n7\n\"Kelvin_v1_Shaded:file4\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_2_Tone4.jpg\" 508939537 \"\" \"sourceImages\"\n8\n\"Kelvin_v1_Shaded:file5\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone1.jpg\" 1512039453 \"\" \"sourceImages\"\n9\n\"Kelvin_v1_Shaded:file6\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone2.jpg\" 499097293 \"\" \"sourceImages\"\n10\n\"Kelvin_v1_Shaded:file7\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone3.jpg\" 551532413 \"\" \"sourceImages\"\n11\n\"Kelvin_v1_Shaded:file8\" \"fileTextureName\" \"/Users/publicuser/Documents/sprite sheet singles/kelvin/Kelvin_v1_Textwip_mouthscreen_idlescreen_2_Tone4.jpg\" 2466212717 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Diner_interior_lighting_v1.ma
