//Maya ASCII 2015 scene
//Name: Trashcan_v1_RigFinal.ma
//Last modified: Mon, Nov 03, 2014 08:04:23 PM
//Codeset: UTF-8
file -rdi 1 -ns "Trashcan_v2_ModelUVFinal" -rfn "Trashcan_v2_ModelUVFinalRN"
		 -op "v=0;" "/Users/publicuser/Desktop/Trashcan-Rig/Trashcan_v2_ModelUVFinal.ma";
file -r -ns "Trashcan_v2_ModelUVFinal" -dr 1 -rfn "Trashcan_v2_ModelUVFinalRN" -op
		 "v=0;" "/Users/publicuser/Desktop/Trashcan-Rig/Trashcan_v2_ModelUVFinal.ma";
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.9522231990111565 4.4935339890730237 10.603372395569114 ;
	setAttr ".r" -type "double3" 344.66164727160771 -698.19999999981837 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 11.642260072382831;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 3.1763420104980469 0.072952002286911011 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.67117765739604829 100.1 0.75422314570570015 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.7856122526474474;
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
	setAttr ".ow" 22.880980621705127;
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
createNode transform -n "TrashCan_Rig";
createNode transform -n "WholeCan" -p "TrashCan_Rig";
createNode joint -n "Lid" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.6931671844843663 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Ball" -p "Lid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.1858092757445267 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Ball_parentConstraint1" -p "Ball";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 8.8817841970012523e-16 -2.9582283945787943e-31 ;
	setAttr ".rst" -type "double3" 0 1.4926420912601603 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Lid_parentConstraint1" -p "Lid";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -0.0064635528203211834 0 ;
	setAttr ".rst" -type "double3" 0 2.6931671844843663 0 ;
	setAttr -k on ".w0";
createNode joint -n "Base" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.1538587328805594 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Base_parentConstraint1" -p "Base";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -0.023132864117829222 0 ;
	setAttr ".rst" -type "double3" 0 -1.1538587328805594 0 ;
	setAttr -k on ".w0";
createNode joint -n "Lower_Ring" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.18882336343012 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Lower_Ring_parentConstraint1" -p "Lower_Ring";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -4.4408920985006262e-16 0 ;
	setAttr ".rst" -type "double3" 0 3.18882336343012 0 ;
	setAttr -k on ".w0";
createNode joint -n "Upper_Ring" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.6472755405341051 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Upper_Ring_parentConstraint1" -p "Upper_Ring";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-16 3.6977854932234928e-32 ;
	setAttr ".rst" -type "double3" 0 3.6472755405341046 0 ;
	setAttr -k on ".w0";
createNode joint -n "R_Eye" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.69311293119018613 2.7239443641761358 0.81728243670279732 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_Eye_parentConstraint1" -p "R_Eye";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Eye_ControlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.69311293119018613 2.7239443641761358 0.81728243670279732 ;
	setAttr -k on ".w0";
createNode joint -n "L_Eye" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.68933419846313426 2.7239443641761358 0.81798377530077382 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_Eye_parentConstraint1" -p "L_Eye";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Eye_ControlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.68933419846313426 2.7239443641761358 0.81798377530077382 ;
	setAttr -k on ".w0";
createNode transform -n "Base_Control" -p "WholeCan";
	setAttr ".rp" -type "double3" 0 -1.1307258687627302 0 ;
	setAttr ".sp" -type "double3" 0 -1.1307258687627302 0 ;
	setAttr ".mnsl" -type "double3" 1 1 1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".xsxe" yes;
	setAttr ".xsye" yes;
	setAttr ".xsze" yes;
createNode nurbsCurve -n "Base_ControlShape" -p "Base_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Squash" -p "Base_Control";
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
	setAttr ".mnsl" -type "double3" 1 1 1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".xsxe" yes;
	setAttr ".xsye" yes;
	setAttr ".xsze" yes;
createNode nurbsCurve -n "SquashShape" -p "Squash";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Lid_Control" -p "Base_Control";
	setAttr ".rp" -type "double3" 0 2.6996307373046875 0 ;
	setAttr ".sp" -type "double3" 0 2.6996307373046875 0 ;
	setAttr ".mnrl" -type "double3" 0 0 0 ;
	setAttr ".mxrl" -type "double3" 0 0 0 ;
	setAttr ".mnsl" -type "double3" 1 1 1 ;
	setAttr ".msxe" yes;
	setAttr ".msye" yes;
	setAttr ".msze" yes;
	setAttr ".xsxe" yes;
	setAttr ".xsye" yes;
	setAttr ".xsze" yes;
createNode nurbsCurve -n "Lid_ControlShape" -p "Lid_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "LowerRing_Control" -p "Lid_Control";
	setAttr ".rp" -type "double3" 0 3.1888233634301204 0 ;
	setAttr ".sp" -type "double3" 0 3.1888233634301204 0 ;
createNode nurbsCurve -n "LowerRing_ControlShape" -p "LowerRing_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "UpperRing_Control" -p "Lid_Control";
	setAttr ".rp" -type "double3" 0 3.6472755405341055 -3.6977854932234928e-32 ;
	setAttr ".sp" -type "double3" 0 3.6472755405341055 -1.2325951644078309e-32 ;
createNode nurbsCurve -n "UpperRing_ControlShape" -p "UpperRing_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "R_Eye_Control" -p "Lid_Control";
	setAttr ".rp" -type "double3" -0.69311293119018613 2.7239443641761358 0.81728243670279732 ;
	setAttr ".sp" -type "double3" -0.69311293119018613 2.7239443641761358 0.81728243670279732 ;
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 0 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 0 0 0 ;
	setAttr ".mxrl" -type "double3" 0 0 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "R_Eye_ControlShape" -p "R_Eye_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[5:10]" -type "double3" 0 0 0.19841671616471079 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Eye_Control" -p "Lid_Control";
	setAttr ".rp" -type "double3" 0.68933419846313426 2.7239443641761358 0.81798377530077382 ;
	setAttr ".sp" -type "double3" 0.68933419846313426 2.7239443641761358 0.81798377530077382 ;
	setAttr ".mntl" -type "double3" 0 0 0 ;
	setAttr ".mxtl" -type "double3" 0 0 0 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".mtze" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".xtze" yes;
	setAttr ".mnrl" -type "double3" 0 -45 0 ;
	setAttr ".mxrl" -type "double3" 0 45 0 ;
	setAttr ".mrxe" yes;
	setAttr ".mrze" yes;
	setAttr ".xrxe" yes;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "L_Eye_ControlShape" -p "L_Eye_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[5:10]" -type "double3" 0 0 0.2031070037470688 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Ball_Control" -p "Lid_Control";
	setAttr ".rp" -type "double3" 0 4.1858092757445258 2.9582283945787943e-31 ;
	setAttr ".sp" -type "double3" 0 4.1858092757445258 2.4651903288156619e-31 ;
createNode nurbsCurve -n "Ball_ControlShape" -p "Ball_Control";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "BottomSQ" -p "Base_Control";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 -0.81424441669326941 0 ;
	setAttr ".sp" -type "double3" 0 -0.81424441669326941 0 ;
createNode nurbsCurve -n "BottomSQShape" -p "BottomSQ";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode joint -n "Top_o_the_Bottom" -p "WholeCan";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint1_parentConstraint1" -p "Top_o_the_Bottom";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "SquashW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
createNode fosterParent -n "Trashcan_v2_ModelUVFinalRNfosterParent1";
createNode mesh -n "R_EyeShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59541599452495575 0.53379349038004875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_EyeShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52904600650072098 0.48012149799615145 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "TopShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46819448843598366 0.42346850503236055 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_RingShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "U_RingShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "BottomShapeDeformed" -p "Trashcan_v2_ModelUVFinalRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.22975549567490816 0.28769799880683422 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Trashcan_v2_ModelUVFinalRN";
	setAttr -s 12 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Trashcan_v2_ModelUVFinalRN"
		"Trashcan_v2_ModelUVFinalRN" 132
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface16.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[1]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:polySurface25.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[2]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:polySurface26.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[3]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:polySurface27.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[4]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface23.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[5]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|Trashcan_v2_ModelUVFinal:polySurface24.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[6]" ""
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "scaleZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "translateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "rotateZ"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleX"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleY"
		8 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "scaleZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "translateZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "rotateZ"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleX"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleY"
		9 "|Trashcan_v2_ModelUVFinal:Bottom" "scaleZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"translateZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"rotateZ"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleX"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleY"
		9 "|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"scaleZ"
		"Trashcan_v2_ModelUVFinalRN" 269
		0 "|Trashcan_v2_ModelUVFinal:Bottom" "|TrashCan_Rig" "-s -r "
		0 "|Trashcan_v2_ModelUVFinal:polySurface17" "|TrashCan_Rig" "-s -r "
		0 "|Trashcan_v2_ModelUVFinal:L_Eye" "|TrashCan_Rig" "-s -r "
		0 "|Trashcan_v2_ModelUVFinal:R_Eye" "|TrashCan_Rig" "-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|BottomShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" 
		"-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|U_RingShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|L_RingShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|TopShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|L_EyeShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" 
		"-s -r "
		0 "|Trashcan_v2_ModelUVFinalRNfosterParent1|R_EyeShapeDeformed" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" 
		"-s -r "
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miDeriveFromMaya" " 1"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miExportGeoShader" " 0"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom" "miProxyRenderable" " 1"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape" 
		"miMaxDisplace" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miDeriveFromMaya" 
		" 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miVisible" " 2"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miCaustic" " 5"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miGlobillum" " 5"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miExportGeoShader" 
		" 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17" "miProxyRenderable" 
		" 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miExportGeoShader" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22" 
		"miProxyRenderable" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miExportGeoShader" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring" 
		"miProxyRenderable" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape" 
		"miMaxDisplace" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miExportGeoShader" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring" 
		"miProxyRenderable" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape" 
		"miMaxDisplace" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miExportGeoShader" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top" 
		"miProxyRenderable" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape" 
		"miMaxDisplace" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miExportGeoShader" " 0"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye" "miProxyRenderable" " 1"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape" 
		"miMaxDisplace" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miDeriveFromMaya" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miHide" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miVisible" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miTrace" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miShadow" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miCaustic" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miGlobillum" " 5"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miExportGeoShader" " 0"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye" "miProxyRenderable" " 1"
		
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"intermediateObject" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miOverrideCaustics" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miCausticAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miCausticRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miOverrideGlobalIllumination" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miGlobillumAccuracy" " 64"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miGlobillumRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miOverrideFinalGather" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherRays" " 1000"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherMinRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherMaxRadius" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherFilter" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherView" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miOverrideSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miMinSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miMaxSamples" " 2"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miFinalGatherReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miTransparencyCast" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miTransparencyReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miReflectionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miRefractionReceive" " 1"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miShadingSamplesOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miShadingSamples" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miMaxDisplaceOverride" " 0"
		2 "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape" 
		"miMaxDisplace" " 0"
		2 "Trashcan_v2_ModelUVFinal:defaultRenderLayer" "globalIllum" " 0"
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[7]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:Bottom|Trashcan_v2_ModelUVFinal:BottomShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[8]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[9]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:U_Ring|Trashcan_v2_ModelUVFinal:U_RingShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[10]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[11]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:L_Ring|Trashcan_v2_ModelUVFinal:L_RingShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[12]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[13]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:polySurface17|Trashcan_v2_ModelUVFinal:polySurface22|Trashcan_v2_ModelUVFinal:Top|Trashcan_v2_ModelUVFinal:TopShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[14]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[15]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:L_Eye|Trashcan_v2_ModelUVFinal:L_EyeShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[16]" ""
		5 4 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye.drawOverride" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[17]" ""
		5 3 "Trashcan_v2_ModelUVFinalRN" "|TrashCan_Rig|Trashcan_v2_ModelUVFinal:R_Eye|Trashcan_v2_ModelUVFinal:R_EyeShape.worldMesh" 
		"Trashcan_v2_ModelUVFinalRN.placeHolderList[18]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 1\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 1\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode tweak -n "tweak2";
	setAttr -s 384 ".vl[0].vt";
	setAttr ".vl[0].vt[1008]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1009]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1010]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1011]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1012]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1013]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1014]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1015]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1016]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1017]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1018]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1019]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1020]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1021]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1022]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1023]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1024]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1025]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1026]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1027]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1028]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1029]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1030]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1031]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1032]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1033]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1034]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1035]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1036]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1037]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1038]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1039]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1040]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1041]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1042]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1043]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1044]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1045]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1046]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1047]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1048]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1049]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1050]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1051]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1052]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1053]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1054]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1055]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1056]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1057]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1058]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1059]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1060]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1061]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1062]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1063]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1064]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1065]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1066]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1067]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1068]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1069]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1070]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1071]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1072]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1073]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1074]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1075]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1076]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1077]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1078]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1079]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1080]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1081]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1082]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1083]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1084]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1085]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1086]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1087]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1088]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1089]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1090]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1091]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1092]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1093]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1094]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1095]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1096]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1097]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1098]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1099]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1100]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1101]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1102]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1103]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1104]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1105]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1106]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1107]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1108]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1109]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1110]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1111]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1112]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1113]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1114]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1115]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1116]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1117]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1118]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1119]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1120]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1121]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1122]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1123]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1124]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1125]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1126]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1127]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1128]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1129]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1130]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1131]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1132]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1133]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1134]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1135]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1136]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1137]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1138]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1139]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1140]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1141]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1142]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1143]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1144]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1145]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1146]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1147]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1148]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1149]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1150]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1151]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1152]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1153]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1154]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1155]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1156]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1157]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1158]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1159]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1160]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1161]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1162]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1163]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1164]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1165]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1166]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1167]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1168]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1169]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1170]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1171]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1172]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1173]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1174]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1175]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1176]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1177]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1178]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1179]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1180]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1181]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1182]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1183]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1184]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1185]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1186]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1187]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1188]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1189]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1190]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1191]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1192]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1193]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1194]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1195]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1196]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1197]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1198]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1199]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1200]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1201]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1202]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1203]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1204]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1205]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1206]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1207]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1208]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1209]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1210]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1211]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1212]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1213]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1214]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1215]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1216]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1217]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1218]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1219]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1220]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1221]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1222]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1223]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1224]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1225]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1226]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1227]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1228]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1229]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1230]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1231]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1232]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1233]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1234]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1235]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1236]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1237]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1238]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1239]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1240]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1241]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1242]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1243]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1244]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1245]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1246]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1247]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1248]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1249]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1250]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1251]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1252]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1253]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1254]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1255]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1256]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1257]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1258]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1259]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1260]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1261]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1262]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1263]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1264]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1265]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1266]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1267]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1268]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1269]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1270]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1271]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1272]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1273]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1274]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1275]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1276]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1277]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1278]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1279]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1280]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1281]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1282]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1283]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1284]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1285]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1286]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1287]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1288]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1289]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1290]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1291]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1292]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1293]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1294]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1295]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1296]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1297]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1298]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1299]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1300]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1301]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1302]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1303]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1304]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1305]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1306]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1307]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1308]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1309]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1310]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1311]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1312]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1313]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1314]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1315]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1316]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1317]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1318]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1319]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1320]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1321]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1322]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1323]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1324]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1325]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1326]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1327]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1328]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1329]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1330]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1331]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1332]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1333]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1334]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1335]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1336]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1337]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1338]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1339]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1340]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1341]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1342]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1343]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1344]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1345]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1346]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1347]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1348]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1349]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1350]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1351]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1352]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1353]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1354]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1355]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1356]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1357]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1358]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1359]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1360]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1361]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1362]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1363]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1364]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1365]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1366]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1367]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1368]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1369]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1370]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1371]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1372]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1373]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1374]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1375]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1376]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1377]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1378]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1379]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1380]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1381]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1382]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1383]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1384]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1385]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1386]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1387]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1388]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[1389]" -type "float3" 0 -0.054487467 0 ;
	setAttr ".vl[0].vt[2242]" -type "float3" 0 -0.054487467 0 ;
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 7 ".wm";
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1538587328805594
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.6931671844843663 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.4926420912601599 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.6931671844843663 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.4926420912601603 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.68933419846313426 2.7239443641761358
		 0.81798377530077382 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.69311293119018613 2.7239443641761358
		 0.81728243670279732 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 9 ".p";
	setAttr ".g[4]" yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	setAttr ".skm" 1;
	setAttr -s 400 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.6472755405341051 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  6;
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.6472755405341051
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster4";
	setAttr ".skm" 1;
	setAttr -s 400 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[0]"  1;
	setAttr ".wl[383].w[0]"  1;
	setAttr ".wl[384].w[0]"  1;
	setAttr ".wl[385].w[0]"  1;
	setAttr ".wl[386].w[0]"  1;
	setAttr ".wl[387].w[0]"  1;
	setAttr ".wl[388].w[0]"  1;
	setAttr ".wl[389].w[0]"  1;
	setAttr ".wl[390].w[0]"  1;
	setAttr ".wl[391].w[0]"  1;
	setAttr ".wl[392].w[0]"  1;
	setAttr ".wl[393].w[0]"  1;
	setAttr ".wl[394].w[0]"  1;
	setAttr ".wl[395].w[0]"  1;
	setAttr ".wl[396].w[0]"  1;
	setAttr ".wl[397].w[0]"  1;
	setAttr ".wl[398].w[0]"  1;
	setAttr ".wl[399].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.18882336343012 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  6;
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 3.18882336343012 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".bp" yes;
createNode tweak -n "tweak6";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak7";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.91720738764991028 0 1;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.21891849616862324 0 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.021175741186495 0 1;
createNode makeNurbCircle -n "makeNurbCircle6";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.4067004655264119 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry9";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.6893162253542009 3.0069778967854073 0.82574190841018458 1;
createNode makeNurbCircle -n "makeNurbCircle8";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 0.3;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.69487967594608469 3.0791808017961468 0.82528874360386351 1;
createNode makeNurbCircle -n "makeNurbCircle7";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 0.3;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 0.59007912120894324 0 0 0 0 0.59007912120894324 0 0
		 0 0 0.59007912120894324 0 0 3.1778265923477553 -3.8857805861880464e-16 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 0.4338629717556044 0 0 0 0 0.4338629717556044 0 0
		 0 0 0.4338629717556044 0 -6.6613381477509392e-16 3.6321032258901176 -1.1102230246251565e-16 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 0.21213208013139095 0 0 0 0 0.21213208013139095 0 0
		 0 0 0.21213208013139095 0 -1.2490009027033011e-16 4.1719613531218291 -3.3306690738754676e-16 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode makeNurbCircle -n "makeNurbCircle9";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4;
	setAttr ".tol" 1000000000000;
createNode transformGeometry -n "transformGeometry10";
	setAttr ".txf" -type "matrix" 1.3174382690816557 0 0 0 0 1.3174382690816557 0 0
		 0 0 1.3174382690816557 0 0 -0.81424441669326941 0 1;
createNode expression -n "JointX";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "JointZ";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "X_Scale_Nurb";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] =  1/(sqrt(.I[0]/2 + 1))";
createNode expression -n "Z_Scale_Nurb";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1/(sqrt(.I[0]/2 + 1))";
createNode expression -n "JointY";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "Y_Scale_Nurb";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 + .I[0]/2";
createNode skinCluster -n "skinCluster7";
	setAttr ".skm" 1;
	setAttr -s 1250 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[1]"  1;
	setAttr ".wl[133].w[1]"  1;
	setAttr ".wl[134].w[1]"  1;
	setAttr ".wl[135].w[1]"  1;
	setAttr ".wl[136].w[1]"  1;
	setAttr ".wl[137].w[1]"  1;
	setAttr ".wl[138].w[1]"  1;
	setAttr ".wl[139].w[1]"  1;
	setAttr ".wl[140].w[1]"  1;
	setAttr ".wl[141].w[1]"  1;
	setAttr ".wl[142].w[1]"  1;
	setAttr ".wl[143].w[1]"  1;
	setAttr ".wl[144].w[1]"  1;
	setAttr ".wl[145].w[1]"  1;
	setAttr ".wl[146].w[1]"  1;
	setAttr ".wl[147].w[1]"  1;
	setAttr ".wl[148].w[1]"  1;
	setAttr ".wl[149].w[1]"  1;
	setAttr ".wl[150].w[1]"  1;
	setAttr ".wl[151].w[1]"  1;
	setAttr ".wl[152].w[1]"  1;
	setAttr ".wl[153].w[1]"  1;
	setAttr ".wl[154].w[1]"  1;
	setAttr ".wl[155].w[1]"  1;
	setAttr ".wl[156].w[1]"  1;
	setAttr ".wl[157].w[1]"  1;
	setAttr ".wl[158].w[1]"  1;
	setAttr ".wl[159].w[1]"  1;
	setAttr ".wl[160].w[1]"  1;
	setAttr ".wl[161].w[1]"  1;
	setAttr ".wl[162].w[1]"  1;
	setAttr ".wl[163].w[1]"  1;
	setAttr ".wl[164].w[1]"  1;
	setAttr ".wl[165].w[1]"  1;
	setAttr ".wl[166].w[1]"  1;
	setAttr ".wl[167].w[1]"  1;
	setAttr ".wl[168].w[1]"  1;
	setAttr ".wl[169].w[1]"  1;
	setAttr ".wl[170].w[1]"  1;
	setAttr ".wl[171].w[1]"  1;
	setAttr ".wl[172].w[1]"  1;
	setAttr ".wl[173].w[1]"  1;
	setAttr ".wl[174].w[1]"  1;
	setAttr ".wl[175].w[1]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[1]"  1;
	setAttr ".wl[281].w[1]"  1;
	setAttr ".wl[282].w[1]"  1;
	setAttr ".wl[283].w[1]"  1;
	setAttr ".wl[284].w[1]"  1;
	setAttr ".wl[285].w[1]"  1;
	setAttr ".wl[286].w[1]"  1;
	setAttr ".wl[287].w[1]"  1;
	setAttr ".wl[288].w[1]"  1;
	setAttr ".wl[289].w[1]"  1;
	setAttr ".wl[290].w[1]"  1;
	setAttr ".wl[291].w[1]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[1]"  1;
	setAttr ".wl[349].w[1]"  1;
	setAttr ".wl[350].w[1]"  1;
	setAttr ".wl[351].w[1]"  1;
	setAttr ".wl[352].w[1]"  1;
	setAttr ".wl[353].w[1]"  1;
	setAttr ".wl[354].w[1]"  1;
	setAttr ".wl[355].w[1]"  1;
	setAttr ".wl[356].w[1]"  1;
	setAttr ".wl[357].w[1]"  1;
	setAttr ".wl[358].w[1]"  1;
	setAttr ".wl[359].w[1]"  1;
	setAttr ".wl[360].w[1]"  1;
	setAttr ".wl[361].w[1]"  1;
	setAttr ".wl[362].w[1]"  1;
	setAttr ".wl[363].w[1]"  1;
	setAttr ".wl[364].w[1]"  1;
	setAttr ".wl[365].w[1]"  1;
	setAttr ".wl[366].w[1]"  1;
	setAttr ".wl[367].w[1]"  1;
	setAttr ".wl[368].w[1]"  1;
	setAttr ".wl[369].w[1]"  1;
	setAttr ".wl[370].w[1]"  1;
	setAttr ".wl[371].w[1]"  1;
	setAttr ".wl[372].w[1]"  1;
	setAttr ".wl[373].w[1]"  1;
	setAttr ".wl[374].w[1]"  1;
	setAttr ".wl[375].w[1]"  1;
	setAttr ".wl[376].w[1]"  1;
	setAttr ".wl[377].w[1]"  1;
	setAttr ".wl[378].w[1]"  1;
	setAttr ".wl[379].w[1]"  1;
	setAttr ".wl[380].w[1]"  1;
	setAttr ".wl[381].w[1]"  1;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr ".wl[386].w[1]"  1;
	setAttr ".wl[387].w[1]"  1;
	setAttr ".wl[388].w[1]"  1;
	setAttr ".wl[389].w[1]"  1;
	setAttr ".wl[390].w[1]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[1]"  1;
	setAttr ".wl[393].w[1]"  1;
	setAttr ".wl[394].w[1]"  1;
	setAttr ".wl[395].w[1]"  1;
	setAttr ".wl[396].w[1]"  1;
	setAttr ".wl[397].w[1]"  1;
	setAttr ".wl[398].w[1]"  1;
	setAttr ".wl[399].w[1]"  1;
	setAttr ".wl[400].w[1]"  1;
	setAttr ".wl[401].w[1]"  1;
	setAttr ".wl[402].w[1]"  1;
	setAttr ".wl[403].w[1]"  1;
	setAttr ".wl[404].w[1]"  1;
	setAttr ".wl[405].w[1]"  1;
	setAttr ".wl[406].w[1]"  1;
	setAttr ".wl[407].w[1]"  1;
	setAttr ".wl[408].w[1]"  1;
	setAttr ".wl[409].w[1]"  1;
	setAttr ".wl[410].w[1]"  1;
	setAttr ".wl[411].w[1]"  1;
	setAttr ".wl[412].w[1]"  1;
	setAttr ".wl[413].w[1]"  1;
	setAttr ".wl[414].w[1]"  1;
	setAttr ".wl[415].w[1]"  1;
	setAttr ".wl[416].w[1]"  1;
	setAttr ".wl[417].w[1]"  1;
	setAttr ".wl[418].w[1]"  1;
	setAttr ".wl[419].w[1]"  1;
	setAttr ".wl[420].w[1]"  1;
	setAttr ".wl[421].w[1]"  1;
	setAttr ".wl[422].w[1]"  1;
	setAttr ".wl[423].w[1]"  1;
	setAttr ".wl[424].w[1]"  1;
	setAttr ".wl[425].w[1]"  1;
	setAttr ".wl[426].w[1]"  1;
	setAttr ".wl[427].w[1]"  1;
	setAttr ".wl[428].w[1]"  1;
	setAttr ".wl[429].w[1]"  1;
	setAttr ".wl[430].w[1]"  1;
	setAttr ".wl[431].w[1]"  1;
	setAttr ".wl[432].w[1]"  1;
	setAttr ".wl[433].w[1]"  1;
	setAttr ".wl[434].w[1]"  1;
	setAttr ".wl[435].w[1]"  1;
	setAttr ".wl[436].w[1]"  1;
	setAttr ".wl[437].w[1]"  1;
	setAttr ".wl[438].w[1]"  1;
	setAttr ".wl[439].w[1]"  1;
	setAttr ".wl[440].w[1]"  1;
	setAttr ".wl[441].w[1]"  1;
	setAttr ".wl[442].w[1]"  1;
	setAttr ".wl[443].w[1]"  1;
	setAttr ".wl[444].w[1]"  1;
	setAttr ".wl[445].w[1]"  1;
	setAttr ".wl[446].w[1]"  1;
	setAttr ".wl[447].w[1]"  1;
	setAttr ".wl[448].w[1]"  1;
	setAttr ".wl[449].w[1]"  1;
	setAttr ".wl[450].w[1]"  1;
	setAttr ".wl[451].w[1]"  1;
	setAttr ".wl[452].w[1]"  1;
	setAttr ".wl[453].w[1]"  1;
	setAttr ".wl[454].w[1]"  1;
	setAttr ".wl[455].w[1]"  1;
	setAttr ".wl[456].w[1]"  1;
	setAttr ".wl[457].w[1]"  1;
	setAttr ".wl[458].w[1]"  1;
	setAttr ".wl[459].w[1]"  1;
	setAttr ".wl[460].w[1]"  1;
	setAttr ".wl[461].w[1]"  1;
	setAttr ".wl[462].w[1]"  1;
	setAttr ".wl[463].w[1]"  1;
	setAttr ".wl[464].w[1]"  1;
	setAttr ".wl[465].w[1]"  1;
	setAttr ".wl[466].w[1]"  1;
	setAttr ".wl[467].w[1]"  1;
	setAttr ".wl[468].w[1]"  1;
	setAttr ".wl[469].w[1]"  1;
	setAttr ".wl[470].w[1]"  1;
	setAttr ".wl[471].w[1]"  1;
	setAttr ".wl[472].w[1]"  1;
	setAttr ".wl[473].w[1]"  1;
	setAttr ".wl[474].w[1]"  1;
	setAttr ".wl[475].w[1]"  1;
	setAttr ".wl[476].w[1]"  1;
	setAttr ".wl[477].w[1]"  1;
	setAttr ".wl[478].w[1]"  1;
	setAttr ".wl[479].w[1]"  1;
	setAttr ".wl[480].w[1]"  1;
	setAttr ".wl[481].w[1]"  1;
	setAttr ".wl[482].w[1]"  1;
	setAttr ".wl[483].w[1]"  1;
	setAttr ".wl[484].w[1]"  1;
	setAttr ".wl[485].w[1]"  1;
	setAttr ".wl[486].w[1]"  1;
	setAttr ".wl[487].w[1]"  1;
	setAttr ".wl[488].w[1]"  1;
	setAttr ".wl[489].w[1]"  1;
	setAttr ".wl[490].w[1]"  1;
	setAttr ".wl[491].w[1]"  1;
	setAttr ".wl[492].w[1]"  1;
	setAttr ".wl[493].w[1]"  1;
	setAttr ".wl[494].w[1]"  1;
	setAttr ".wl[495].w[1]"  1;
	setAttr ".wl[496].w[1]"  1;
	setAttr ".wl[497].w[1]"  1;
	setAttr ".wl[498].w[1]"  1;
	setAttr -s 2 ".wl[499].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[500].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[501].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[502].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[503].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[504].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[505].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[506].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[507].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[508].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[509].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[510].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[511].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[512].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[513].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[514].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[515].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[516].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[517].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[518].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[519].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[520].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[521].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[522].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[523].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[524].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[525].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[526].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[527].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[528].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[529].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[530].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[531].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[532].w[0:1]"  0.1 0.9;
	setAttr ".wl[533].w[1]"  1;
	setAttr ".wl[534].w[1]"  1;
	setAttr ".wl[535].w[1]"  1;
	setAttr ".wl[536].w[1]"  1;
	setAttr ".wl[537].w[1]"  1;
	setAttr ".wl[538].w[1]"  1;
	setAttr ".wl[539].w[1]"  1;
	setAttr ".wl[540].w[1]"  1;
	setAttr ".wl[541].w[1]"  1;
	setAttr ".wl[542].w[1]"  1;
	setAttr ".wl[543].w[1]"  1;
	setAttr ".wl[544].w[1]"  1;
	setAttr ".wl[545].w[1]"  1;
	setAttr ".wl[546].w[1]"  1;
	setAttr ".wl[547].w[1]"  1;
	setAttr ".wl[548].w[1]"  1;
	setAttr ".wl[549].w[1]"  1;
	setAttr ".wl[550].w[0]"  1;
	setAttr ".wl[551].w[0]"  1;
	setAttr ".wl[552].w[0]"  1;
	setAttr ".wl[553].w[0]"  1;
	setAttr -s 2 ".wl[554].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[555].w[0:1]"  0.5 0.5;
	setAttr ".wl[556].w[0]"  1;
	setAttr ".wl[557].w[0]"  1;
	setAttr -s 2 ".wl[558].w[0:1]"  0.5 0.5;
	setAttr ".wl[559].w[0]"  1;
	setAttr -s 2 ".wl[560].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[561].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[562].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[563].w[0:1]"  0.1 0.9;
	setAttr ".wl[564].w[1]"  1;
	setAttr -s 2 ".wl[565].w[0:1]"  0.1 0.9;
	setAttr -s 2 ".wl[566].w[0:1]"  0.1 0.9;
	setAttr ".wl[567].w[1]"  1;
	setAttr ".wl[568].w[1]"  1;
	setAttr ".wl[569].w[1]"  1;
	setAttr ".wl[570].w[1]"  1;
	setAttr ".wl[571].w[1]"  1;
	setAttr ".wl[572].w[1]"  1;
	setAttr ".wl[573].w[1]"  1;
	setAttr ".wl[574].w[1]"  1;
	setAttr ".wl[575].w[1]"  1;
	setAttr ".wl[576].w[1]"  1;
	setAttr ".wl[577].w[1]"  1;
	setAttr ".wl[578].w[1]"  1;
	setAttr ".wl[579].w[1]"  1;
	setAttr ".wl[580].w[1]"  1;
	setAttr ".wl[581].w[1]"  1;
	setAttr ".wl[582].w[1]"  1;
	setAttr ".wl[583].w[1]"  1;
	setAttr ".wl[584].w[1]"  1;
	setAttr ".wl[585].w[1]"  1;
	setAttr ".wl[586].w[1]"  1;
	setAttr ".wl[587].w[1]"  1;
	setAttr ".wl[588].w[1]"  1;
	setAttr ".wl[589].w[1]"  1;
	setAttr ".wl[590].w[1]"  1;
	setAttr ".wl[591].w[1]"  1;
	setAttr ".wl[592].w[1]"  1;
	setAttr ".wl[593].w[1]"  1;
	setAttr ".wl[594].w[1]"  1;
	setAttr ".wl[595].w[1]"  1;
	setAttr ".wl[596].w[1]"  1;
	setAttr ".wl[597].w[1]"  1;
	setAttr ".wl[598].w[1]"  1;
	setAttr ".wl[599].w[1]"  1;
	setAttr ".wl[600].w[1]"  1;
	setAttr ".wl[601].w[1]"  1;
	setAttr ".wl[602].w[1]"  1;
	setAttr ".wl[603].w[1]"  1;
	setAttr ".wl[604].w[1]"  1;
	setAttr ".wl[605].w[1]"  1;
	setAttr ".wl[606].w[1]"  1;
	setAttr ".wl[607].w[1]"  1;
	setAttr ".wl[608].w[1]"  1;
	setAttr ".wl[609].w[1]"  1;
	setAttr ".wl[610].w[1]"  1;
	setAttr ".wl[611].w[1]"  1;
	setAttr ".wl[612].w[1]"  1;
	setAttr ".wl[613].w[1]"  1;
	setAttr ".wl[614].w[1]"  1;
	setAttr ".wl[615].w[1]"  1;
	setAttr ".wl[616].w[1]"  1;
	setAttr ".wl[617].w[1]"  1;
	setAttr ".wl[618].w[1]"  1;
	setAttr ".wl[619].w[1]"  1;
	setAttr ".wl[620].w[1]"  1;
	setAttr ".wl[621].w[1]"  1;
	setAttr ".wl[622].w[1]"  1;
	setAttr ".wl[623].w[1]"  1;
	setAttr ".wl[624].w[1]"  1;
	setAttr ".wl[625].w[1]"  1;
	setAttr ".wl[626].w[1]"  1;
	setAttr ".wl[627].w[1]"  1;
	setAttr ".wl[628].w[1]"  1;
	setAttr ".wl[629].w[1]"  1;
	setAttr ".wl[630].w[1]"  1;
	setAttr ".wl[631].w[1]"  1;
	setAttr ".wl[632].w[1]"  1;
	setAttr ".wl[633].w[1]"  1;
	setAttr ".wl[634].w[1]"  1;
	setAttr ".wl[635].w[1]"  1;
	setAttr ".wl[636].w[1]"  1;
	setAttr ".wl[637].w[1]"  1;
	setAttr ".wl[638].w[1]"  1;
	setAttr ".wl[639].w[1]"  1;
	setAttr ".wl[640].w[1]"  1;
	setAttr ".wl[641].w[1]"  1;
	setAttr ".wl[642].w[1]"  1;
	setAttr ".wl[643].w[1]"  1;
	setAttr ".wl[644].w[1]"  1;
	setAttr ".wl[645].w[1]"  1;
	setAttr ".wl[646].w[1]"  1;
	setAttr ".wl[647].w[1]"  1;
	setAttr ".wl[648].w[1]"  1;
	setAttr ".wl[649].w[1]"  1;
	setAttr ".wl[650].w[1]"  1;
	setAttr ".wl[651].w[1]"  1;
	setAttr ".wl[652].w[0]"  1;
	setAttr ".wl[653].w[0]"  1;
	setAttr ".wl[654].w[0]"  1;
	setAttr ".wl[655].w[0]"  1;
	setAttr ".wl[656].w[0]"  1;
	setAttr ".wl[657].w[0]"  1;
	setAttr ".wl[658].w[0]"  1;
	setAttr ".wl[659].w[0]"  1;
	setAttr ".wl[660].w[0]"  1;
	setAttr ".wl[661].w[0]"  1;
	setAttr ".wl[662].w[0]"  1;
	setAttr ".wl[663].w[0]"  1;
	setAttr ".wl[664].w[0]"  1;
	setAttr ".wl[665].w[0]"  1;
	setAttr ".wl[666].w[0]"  1;
	setAttr ".wl[667].w[0]"  1;
	setAttr ".wl[668].w[0]"  1;
	setAttr ".wl[669].w[0]"  1;
	setAttr ".wl[670].w[0]"  1;
	setAttr ".wl[671].w[0]"  1;
	setAttr ".wl[672].w[0]"  1;
	setAttr ".wl[673].w[0]"  1;
	setAttr ".wl[674].w[0]"  1;
	setAttr ".wl[675].w[0]"  1;
	setAttr ".wl[676].w[0]"  1;
	setAttr ".wl[677].w[1]"  1;
	setAttr ".wl[678].w[1]"  1;
	setAttr ".wl[679].w[1]"  1;
	setAttr ".wl[680].w[1]"  1;
	setAttr ".wl[681].w[1]"  1;
	setAttr ".wl[682].w[1]"  1;
	setAttr ".wl[683].w[1]"  1;
	setAttr ".wl[684].w[1]"  1;
	setAttr ".wl[685].w[1]"  1;
	setAttr ".wl[686].w[1]"  1;
	setAttr ".wl[687].w[1]"  1;
	setAttr ".wl[688].w[1]"  1;
	setAttr ".wl[689].w[1]"  1;
	setAttr ".wl[690].w[1]"  1;
	setAttr ".wl[691].w[1]"  1;
	setAttr ".wl[692].w[1]"  1;
	setAttr ".wl[693].w[1]"  1;
	setAttr ".wl[694].w[1]"  1;
	setAttr ".wl[695].w[1]"  1;
	setAttr ".wl[696].w[1]"  1;
	setAttr ".wl[697].w[1]"  1;
	setAttr ".wl[698].w[1]"  1;
	setAttr ".wl[699].w[1]"  1;
	setAttr ".wl[700].w[0]"  1;
	setAttr ".wl[701].w[0]"  1;
	setAttr ".wl[702].w[0]"  1;
	setAttr ".wl[703].w[0]"  1;
	setAttr ".wl[704].w[0]"  1;
	setAttr ".wl[705].w[0]"  1;
	setAttr ".wl[706].w[0]"  1;
	setAttr ".wl[707].w[0]"  1;
	setAttr ".wl[708].w[0]"  1;
	setAttr ".wl[709].w[0]"  1;
	setAttr ".wl[710].w[0]"  1;
	setAttr ".wl[711].w[0]"  1;
	setAttr ".wl[712].w[0]"  1;
	setAttr ".wl[713].w[0]"  1;
	setAttr ".wl[714].w[0]"  1;
	setAttr ".wl[715].w[0]"  1;
	setAttr ".wl[716].w[0]"  1;
	setAttr ".wl[717].w[0]"  1;
	setAttr ".wl[718].w[0]"  1;
	setAttr ".wl[719].w[0]"  1;
	setAttr ".wl[720].w[0]"  1;
	setAttr ".wl[721].w[0]"  1;
	setAttr ".wl[722].w[0]"  1;
	setAttr ".wl[723].w[0]"  1;
	setAttr ".wl[724].w[0]"  1;
	setAttr ".wl[725].w[0]"  1;
	setAttr ".wl[726].w[0]"  1;
	setAttr ".wl[727].w[0]"  1;
	setAttr ".wl[728].w[0]"  1;
	setAttr ".wl[729].w[0]"  1;
	setAttr ".wl[730].w[0]"  1;
	setAttr ".wl[731].w[0]"  1;
	setAttr ".wl[732].w[0]"  1;
	setAttr ".wl[733].w[0]"  1;
	setAttr ".wl[734].w[0]"  1;
	setAttr ".wl[735].w[0]"  1;
	setAttr ".wl[736].w[0]"  1;
	setAttr ".wl[737].w[0]"  1;
	setAttr ".wl[738].w[0]"  1;
	setAttr ".wl[739].w[0]"  1;
	setAttr ".wl[740].w[0]"  1;
	setAttr ".wl[741].w[0]"  1;
	setAttr ".wl[742].w[0]"  1;
	setAttr ".wl[743].w[0]"  1;
	setAttr ".wl[744].w[0]"  1;
	setAttr ".wl[745].w[0]"  1;
	setAttr ".wl[746].w[0]"  1;
	setAttr ".wl[747].w[0]"  1;
	setAttr ".wl[748].w[0]"  1;
	setAttr ".wl[749].w[0]"  1;
	setAttr ".wl[750].w[0]"  1;
	setAttr ".wl[751].w[0]"  1;
	setAttr ".wl[752].w[0]"  1;
	setAttr ".wl[753].w[0]"  1;
	setAttr ".wl[754].w[0]"  1;
	setAttr ".wl[755].w[0]"  1;
	setAttr ".wl[756].w[0]"  1;
	setAttr ".wl[757].w[0]"  1;
	setAttr ".wl[758].w[0]"  1;
	setAttr ".wl[759].w[0]"  1;
	setAttr ".wl[760].w[0]"  1;
	setAttr ".wl[761].w[0]"  1;
	setAttr ".wl[762].w[0]"  1;
	setAttr ".wl[763].w[0]"  1;
	setAttr ".wl[764].w[0]"  1;
	setAttr ".wl[765].w[0]"  1;
	setAttr ".wl[766].w[0]"  1;
	setAttr ".wl[767].w[0]"  1;
	setAttr ".wl[768].w[0]"  1;
	setAttr ".wl[769].w[0]"  1;
	setAttr ".wl[770].w[0]"  1;
	setAttr ".wl[771].w[0]"  1;
	setAttr ".wl[772].w[0]"  1;
	setAttr ".wl[773].w[0]"  1;
	setAttr ".wl[774].w[0]"  1;
	setAttr ".wl[775].w[0]"  1;
	setAttr ".wl[776].w[1]"  1;
	setAttr ".wl[777].w[1]"  1;
	setAttr ".wl[778].w[1]"  1;
	setAttr ".wl[779].w[1]"  1;
	setAttr ".wl[780].w[1]"  1;
	setAttr ".wl[781].w[1]"  1;
	setAttr ".wl[782].w[1]"  1;
	setAttr ".wl[783].w[1]"  1;
	setAttr ".wl[784].w[1]"  1;
	setAttr ".wl[785].w[1]"  1;
	setAttr ".wl[786].w[1]"  1;
	setAttr ".wl[787].w[1]"  1;
	setAttr ".wl[788].w[1]"  1;
	setAttr ".wl[789].w[1]"  1;
	setAttr ".wl[790].w[1]"  1;
	setAttr ".wl[791].w[1]"  1;
	setAttr ".wl[792].w[1]"  1;
	setAttr ".wl[793].w[1]"  1;
	setAttr ".wl[794].w[1]"  1;
	setAttr ".wl[795].w[1]"  1;
	setAttr ".wl[796].w[1]"  1;
	setAttr ".wl[797].w[1]"  1;
	setAttr ".wl[798].w[1]"  1;
	setAttr ".wl[799].w[1]"  1;
	setAttr ".wl[800].w[1]"  1;
	setAttr ".wl[801].w[1]"  1;
	setAttr ".wl[802].w[1]"  1;
	setAttr ".wl[803].w[1]"  1;
	setAttr ".wl[804].w[1]"  1;
	setAttr ".wl[805].w[1]"  1;
	setAttr ".wl[806].w[1]"  1;
	setAttr ".wl[807].w[1]"  1;
	setAttr ".wl[808].w[1]"  1;
	setAttr ".wl[809].w[1]"  1;
	setAttr ".wl[810].w[1]"  1;
	setAttr ".wl[811].w[1]"  1;
	setAttr ".wl[812].w[1]"  1;
	setAttr ".wl[813].w[1]"  1;
	setAttr ".wl[814].w[1]"  1;
	setAttr ".wl[815].w[1]"  1;
	setAttr ".wl[816].w[1]"  1;
	setAttr ".wl[817].w[1]"  1;
	setAttr ".wl[818].w[1]"  1;
	setAttr ".wl[819].w[1]"  1;
	setAttr ".wl[820].w[1]"  1;
	setAttr ".wl[821].w[1]"  1;
	setAttr ".wl[822].w[1]"  1;
	setAttr ".wl[823].w[1]"  1;
	setAttr ".wl[824].w[1]"  1;
	setAttr ".wl[825].w[1]"  1;
	setAttr ".wl[826].w[1]"  1;
	setAttr ".wl[827].w[1]"  1;
	setAttr ".wl[828].w[1]"  1;
	setAttr ".wl[829].w[1]"  1;
	setAttr ".wl[830].w[1]"  1;
	setAttr ".wl[831].w[1]"  1;
	setAttr ".wl[832].w[1]"  1;
	setAttr ".wl[833].w[1]"  1;
	setAttr ".wl[834].w[1]"  1;
	setAttr ".wl[835].w[1]"  1;
	setAttr ".wl[836].w[1]"  1;
	setAttr ".wl[837].w[1]"  1;
	setAttr ".wl[838].w[1]"  1;
	setAttr ".wl[839].w[1]"  1;
	setAttr ".wl[840].w[1]"  1;
	setAttr ".wl[841].w[1]"  1;
	setAttr ".wl[842].w[1]"  1;
	setAttr ".wl[843].w[1]"  1;
	setAttr ".wl[844].w[1]"  1;
	setAttr ".wl[845].w[1]"  1;
	setAttr ".wl[846].w[1]"  1;
	setAttr ".wl[847].w[1]"  1;
	setAttr ".wl[848].w[1]"  1;
	setAttr ".wl[849].w[1]"  1;
	setAttr ".wl[850].w[1]"  1;
	setAttr ".wl[851].w[1]"  1;
	setAttr ".wl[852].w[1]"  1;
	setAttr ".wl[853].w[1]"  1;
	setAttr ".wl[854].w[1]"  1;
	setAttr ".wl[855].w[1]"  1;
	setAttr ".wl[856].w[1]"  1;
	setAttr ".wl[857].w[1]"  1;
	setAttr ".wl[858].w[1]"  1;
	setAttr ".wl[859].w[1]"  1;
	setAttr ".wl[860].w[1]"  1;
	setAttr ".wl[861].w[1]"  1;
	setAttr ".wl[862].w[1]"  1;
	setAttr ".wl[863].w[1]"  1;
	setAttr ".wl[864].w[1]"  1;
	setAttr ".wl[865].w[1]"  1;
	setAttr ".wl[866].w[1]"  1;
	setAttr ".wl[867].w[1]"  1;
	setAttr ".wl[868].w[1]"  1;
	setAttr ".wl[869].w[1]"  1;
	setAttr ".wl[870].w[1]"  1;
	setAttr ".wl[871].w[1]"  1;
	setAttr ".wl[872].w[1]"  1;
	setAttr ".wl[873].w[1]"  1;
	setAttr ".wl[874].w[1]"  1;
	setAttr ".wl[875].w[1]"  1;
	setAttr ".wl[876].w[1]"  1;
	setAttr ".wl[877].w[1]"  1;
	setAttr ".wl[878].w[1]"  1;
	setAttr ".wl[879].w[1]"  1;
	setAttr ".wl[880].w[1]"  1;
	setAttr ".wl[881].w[1]"  1;
	setAttr ".wl[882].w[1]"  1;
	setAttr ".wl[883].w[1]"  1;
	setAttr ".wl[884].w[1]"  1;
	setAttr ".wl[885].w[1]"  1;
	setAttr ".wl[886].w[1]"  1;
	setAttr ".wl[887].w[1]"  1;
	setAttr ".wl[888].w[1]"  1;
	setAttr ".wl[889].w[1]"  1;
	setAttr ".wl[890].w[1]"  1;
	setAttr ".wl[891].w[1]"  1;
	setAttr ".wl[892].w[1]"  1;
	setAttr ".wl[893].w[1]"  1;
	setAttr ".wl[894].w[1]"  1;
	setAttr ".wl[895].w[1]"  1;
	setAttr ".wl[896].w[1]"  1;
	setAttr ".wl[897].w[1]"  1;
	setAttr ".wl[898].w[1]"  1;
	setAttr ".wl[899].w[1]"  1;
	setAttr ".wl[900].w[1]"  1;
	setAttr ".wl[901].w[1]"  1;
	setAttr ".wl[902].w[1]"  1;
	setAttr ".wl[903].w[1]"  1;
	setAttr ".wl[904].w[1]"  1;
	setAttr ".wl[905].w[1]"  1;
	setAttr ".wl[906].w[1]"  1;
	setAttr ".wl[907].w[1]"  1;
	setAttr ".wl[908].w[1]"  1;
	setAttr ".wl[909].w[1]"  1;
	setAttr ".wl[910].w[1]"  1;
	setAttr ".wl[911].w[1]"  1;
	setAttr ".wl[912].w[1]"  1;
	setAttr ".wl[913].w[1]"  1;
	setAttr ".wl[914].w[1]"  1;
	setAttr ".wl[915].w[1]"  1;
	setAttr ".wl[916].w[1]"  1;
	setAttr ".wl[917].w[1]"  1;
	setAttr ".wl[918].w[1]"  1;
	setAttr ".wl[919].w[1]"  1;
	setAttr ".wl[920].w[1]"  1;
	setAttr ".wl[921].w[1]"  1;
	setAttr ".wl[922].w[1]"  1;
	setAttr ".wl[923].w[1]"  1;
	setAttr ".wl[924].w[1]"  1;
	setAttr ".wl[925].w[1]"  1;
	setAttr ".wl[926].w[1]"  1;
	setAttr ".wl[927].w[1]"  1;
	setAttr ".wl[928].w[1]"  1;
	setAttr ".wl[929].w[1]"  1;
	setAttr ".wl[930].w[1]"  1;
	setAttr ".wl[931].w[1]"  1;
	setAttr ".wl[932].w[1]"  1;
	setAttr ".wl[933].w[1]"  1;
	setAttr ".wl[934].w[1]"  1;
	setAttr ".wl[935].w[1]"  1;
	setAttr ".wl[936].w[1]"  1;
	setAttr ".wl[937].w[1]"  1;
	setAttr ".wl[938].w[1]"  1;
	setAttr ".wl[939].w[1]"  1;
	setAttr ".wl[940].w[1]"  1;
	setAttr ".wl[941].w[1]"  1;
	setAttr ".wl[942].w[1]"  1;
	setAttr ".wl[943].w[1]"  1;
	setAttr ".wl[944].w[1]"  1;
	setAttr ".wl[945].w[1]"  1;
	setAttr ".wl[946].w[1]"  1;
	setAttr ".wl[947].w[1]"  1;
	setAttr ".wl[948].w[1]"  1;
	setAttr ".wl[949].w[1]"  1;
	setAttr ".wl[950].w[1]"  1;
	setAttr ".wl[951].w[1]"  1;
	setAttr ".wl[952].w[1]"  1;
	setAttr ".wl[953].w[1]"  1;
	setAttr ".wl[954].w[1]"  1;
	setAttr ".wl[955].w[1]"  1;
	setAttr ".wl[956].w[1]"  1;
	setAttr ".wl[957].w[1]"  1;
	setAttr ".wl[958].w[1]"  1;
	setAttr ".wl[959].w[1]"  1;
	setAttr ".wl[960].w[1]"  1;
	setAttr ".wl[961].w[1]"  1;
	setAttr ".wl[962].w[1]"  1;
	setAttr ".wl[963].w[1]"  1;
	setAttr ".wl[964].w[1]"  1;
	setAttr ".wl[965].w[1]"  1;
	setAttr ".wl[966].w[1]"  1;
	setAttr ".wl[967].w[1]"  1;
	setAttr ".wl[968].w[1]"  1;
	setAttr ".wl[969].w[1]"  1;
	setAttr ".wl[970].w[1]"  1;
	setAttr ".wl[971].w[1]"  1;
	setAttr ".wl[972].w[1]"  1;
	setAttr ".wl[973].w[1]"  1;
	setAttr ".wl[974].w[1]"  1;
	setAttr ".wl[975].w[1]"  1;
	setAttr ".wl[976].w[1]"  1;
	setAttr ".wl[977].w[1]"  1;
	setAttr ".wl[978].w[1]"  1;
	setAttr ".wl[979].w[1]"  1;
	setAttr ".wl[980].w[1]"  1;
	setAttr ".wl[981].w[1]"  1;
	setAttr ".wl[982].w[1]"  1;
	setAttr ".wl[983].w[1]"  1;
	setAttr ".wl[984].w[1]"  1;
	setAttr ".wl[985].w[1]"  1;
	setAttr ".wl[986].w[1]"  1;
	setAttr ".wl[987].w[1]"  1;
	setAttr ".wl[988].w[1]"  1;
	setAttr ".wl[989].w[1]"  1;
	setAttr ".wl[990].w[1]"  1;
	setAttr ".wl[991].w[1]"  1;
	setAttr ".wl[992].w[1]"  1;
	setAttr ".wl[993].w[1]"  1;
	setAttr ".wl[994].w[1]"  1;
	setAttr ".wl[995].w[1]"  1;
	setAttr ".wl[996].w[1]"  1;
	setAttr ".wl[997].w[1]"  1;
	setAttr ".wl[998].w[1]"  1;
	setAttr ".wl[999].w[1]"  1;
	setAttr ".wl[1000].w[1]"  1;
	setAttr ".wl[1001].w[1]"  1;
	setAttr ".wl[1002].w[1]"  1;
	setAttr ".wl[1003].w[1]"  1;
	setAttr ".wl[1004].w[1]"  1;
	setAttr ".wl[1005].w[1]"  1;
	setAttr ".wl[1006].w[1]"  1;
	setAttr ".wl[1007].w[1]"  1;
	setAttr ".wl[1008].w[1]"  1;
	setAttr ".wl[1009].w[1]"  1;
	setAttr ".wl[1010].w[1]"  1;
	setAttr ".wl[1011].w[1]"  1;
	setAttr ".wl[1012].w[1]"  1;
	setAttr ".wl[1013].w[1]"  1;
	setAttr ".wl[1014].w[1]"  1;
	setAttr ".wl[1015].w[1]"  1;
	setAttr ".wl[1016].w[1]"  1;
	setAttr ".wl[1017].w[1]"  1;
	setAttr ".wl[1018].w[1]"  1;
	setAttr ".wl[1019].w[1]"  1;
	setAttr ".wl[1020].w[1]"  1;
	setAttr ".wl[1021].w[1]"  1;
	setAttr ".wl[1022].w[1]"  1;
	setAttr ".wl[1023].w[1]"  1;
	setAttr ".wl[1024].w[1]"  1;
	setAttr ".wl[1025].w[1]"  1;
	setAttr ".wl[1026].w[1]"  1;
	setAttr ".wl[1027].w[1]"  1;
	setAttr ".wl[1028].w[1]"  1;
	setAttr ".wl[1029].w[1]"  1;
	setAttr ".wl[1030].w[1]"  1;
	setAttr ".wl[1031].w[1]"  1;
	setAttr ".wl[1032].w[1]"  1;
	setAttr ".wl[1033].w[1]"  1;
	setAttr ".wl[1034].w[1]"  1;
	setAttr ".wl[1035].w[1]"  1;
	setAttr ".wl[1036].w[1]"  1;
	setAttr ".wl[1037].w[1]"  1;
	setAttr ".wl[1038].w[1]"  1;
	setAttr ".wl[1039].w[1]"  1;
	setAttr ".wl[1040].w[1]"  1;
	setAttr ".wl[1041].w[1]"  1;
	setAttr ".wl[1042].w[1]"  1;
	setAttr ".wl[1043].w[1]"  1;
	setAttr ".wl[1044].w[1]"  1;
	setAttr ".wl[1045].w[1]"  1;
	setAttr ".wl[1046].w[1]"  1;
	setAttr ".wl[1047].w[1]"  1;
	setAttr ".wl[1048].w[1]"  1;
	setAttr ".wl[1049].w[1]"  1;
	setAttr ".wl[1050].w[1]"  1;
	setAttr ".wl[1051].w[1]"  1;
	setAttr ".wl[1052].w[1]"  1;
	setAttr ".wl[1053].w[1]"  1;
	setAttr ".wl[1054].w[1]"  1;
	setAttr ".wl[1055].w[1]"  1;
	setAttr ".wl[1056].w[1]"  1;
	setAttr ".wl[1057].w[1]"  1;
	setAttr ".wl[1058].w[1]"  1;
	setAttr ".wl[1059].w[1]"  1;
	setAttr ".wl[1060].w[1]"  1;
	setAttr ".wl[1061].w[1]"  1;
	setAttr ".wl[1062].w[1]"  1;
	setAttr ".wl[1063].w[1]"  1;
	setAttr ".wl[1064].w[1]"  1;
	setAttr ".wl[1065].w[1]"  1;
	setAttr ".wl[1066].w[1]"  1;
	setAttr ".wl[1067].w[1]"  1;
	setAttr ".wl[1068].w[1]"  1;
	setAttr ".wl[1069].w[1]"  1;
	setAttr ".wl[1070].w[1]"  1;
	setAttr ".wl[1071].w[1]"  1;
	setAttr ".wl[1072].w[1]"  1;
	setAttr ".wl[1073].w[1]"  1;
	setAttr ".wl[1074].w[1]"  1;
	setAttr ".wl[1075].w[1]"  1;
	setAttr ".wl[1076].w[1]"  1;
	setAttr ".wl[1077].w[1]"  1;
	setAttr ".wl[1078].w[1]"  1;
	setAttr ".wl[1079].w[1]"  1;
	setAttr ".wl[1080].w[1]"  1;
	setAttr ".wl[1081].w[1]"  1;
	setAttr ".wl[1082].w[1]"  1;
	setAttr ".wl[1083].w[1]"  1;
	setAttr ".wl[1084].w[1]"  1;
	setAttr ".wl[1085].w[1]"  1;
	setAttr ".wl[1086].w[1]"  1;
	setAttr ".wl[1087].w[1]"  1;
	setAttr ".wl[1088].w[1]"  1;
	setAttr ".wl[1089].w[1]"  1;
	setAttr ".wl[1090].w[1]"  1;
	setAttr ".wl[1091].w[1]"  1;
	setAttr ".wl[1092].w[1]"  1;
	setAttr ".wl[1093].w[1]"  1;
	setAttr ".wl[1094].w[1]"  1;
	setAttr ".wl[1095].w[1]"  1;
	setAttr ".wl[1096].w[1]"  1;
	setAttr ".wl[1097].w[1]"  1;
	setAttr ".wl[1098].w[1]"  1;
	setAttr ".wl[1099].w[1]"  1;
	setAttr ".wl[1100].w[1]"  1;
	setAttr ".wl[1101].w[1]"  1;
	setAttr ".wl[1102].w[1]"  1;
	setAttr ".wl[1103].w[1]"  1;
	setAttr ".wl[1104].w[1]"  1;
	setAttr ".wl[1105].w[1]"  1;
	setAttr ".wl[1106].w[1]"  1;
	setAttr ".wl[1107].w[1]"  1;
	setAttr ".wl[1108].w[1]"  1;
	setAttr ".wl[1109].w[1]"  1;
	setAttr ".wl[1110].w[1]"  1;
	setAttr ".wl[1111].w[1]"  1;
	setAttr ".wl[1112].w[1]"  1;
	setAttr ".wl[1113].w[1]"  1;
	setAttr ".wl[1114].w[1]"  1;
	setAttr ".wl[1115].w[1]"  1;
	setAttr ".wl[1116].w[1]"  1;
	setAttr ".wl[1117].w[1]"  1;
	setAttr ".wl[1118].w[1]"  1;
	setAttr ".wl[1119].w[1]"  1;
	setAttr ".wl[1120].w[1]"  1;
	setAttr ".wl[1121].w[1]"  1;
	setAttr ".wl[1122].w[1]"  1;
	setAttr ".wl[1123].w[1]"  1;
	setAttr ".wl[1124].w[1]"  1;
	setAttr ".wl[1125].w[1]"  1;
	setAttr ".wl[1126].w[1]"  1;
	setAttr ".wl[1127].w[1]"  1;
	setAttr ".wl[1128].w[1]"  1;
	setAttr ".wl[1129].w[1]"  1;
	setAttr ".wl[1130].w[1]"  1;
	setAttr ".wl[1131].w[1]"  1;
	setAttr ".wl[1132].w[1]"  1;
	setAttr ".wl[1133].w[1]"  1;
	setAttr ".wl[1134].w[1]"  1;
	setAttr ".wl[1135].w[1]"  1;
	setAttr ".wl[1136].w[1]"  1;
	setAttr ".wl[1137].w[1]"  1;
	setAttr ".wl[1138].w[1]"  1;
	setAttr ".wl[1139].w[1]"  1;
	setAttr ".wl[1140].w[1]"  1;
	setAttr ".wl[1141].w[1]"  1;
	setAttr ".wl[1142].w[1]"  1;
	setAttr ".wl[1143].w[1]"  1;
	setAttr ".wl[1144].w[1]"  1;
	setAttr ".wl[1145].w[1]"  1;
	setAttr ".wl[1146].w[1]"  1;
	setAttr ".wl[1147].w[1]"  1;
	setAttr ".wl[1148].w[1]"  1;
	setAttr ".wl[1149].w[1]"  1;
	setAttr ".wl[1150].w[1]"  1;
	setAttr ".wl[1151].w[1]"  1;
	setAttr ".wl[1152].w[1]"  1;
	setAttr ".wl[1153].w[1]"  1;
	setAttr ".wl[1154].w[1]"  1;
	setAttr ".wl[1155].w[1]"  1;
	setAttr ".wl[1156].w[1]"  1;
	setAttr ".wl[1157].w[1]"  1;
	setAttr ".wl[1158].w[1]"  1;
	setAttr ".wl[1159].w[1]"  1;
	setAttr ".wl[1160].w[1]"  1;
	setAttr ".wl[1161].w[1]"  1;
	setAttr ".wl[1162].w[1]"  1;
	setAttr ".wl[1163].w[1]"  1;
	setAttr ".wl[1164].w[1]"  1;
	setAttr ".wl[1165].w[1]"  1;
	setAttr ".wl[1166].w[1]"  1;
	setAttr ".wl[1167].w[1]"  1;
	setAttr ".wl[1168].w[1]"  1;
	setAttr ".wl[1169].w[1]"  1;
	setAttr ".wl[1170].w[1]"  1;
	setAttr ".wl[1171].w[1]"  1;
	setAttr ".wl[1172].w[1]"  1;
	setAttr ".wl[1173].w[1]"  1;
	setAttr ".wl[1174].w[1]"  1;
	setAttr ".wl[1175].w[1]"  1;
	setAttr ".wl[1176].w[1]"  1;
	setAttr ".wl[1177].w[1]"  1;
	setAttr ".wl[1178].w[1]"  1;
	setAttr ".wl[1179].w[1]"  1;
	setAttr ".wl[1180].w[1]"  1;
	setAttr ".wl[1181].w[1]"  1;
	setAttr ".wl[1182].w[1]"  1;
	setAttr ".wl[1183].w[1]"  1;
	setAttr ".wl[1184].w[1]"  1;
	setAttr ".wl[1185].w[1]"  1;
	setAttr ".wl[1186].w[1]"  1;
	setAttr ".wl[1187].w[1]"  1;
	setAttr ".wl[1188].w[1]"  1;
	setAttr ".wl[1189].w[1]"  1;
	setAttr ".wl[1190].w[1]"  1;
	setAttr ".wl[1191].w[1]"  1;
	setAttr ".wl[1192].w[1]"  1;
	setAttr ".wl[1193].w[1]"  1;
	setAttr ".wl[1194].w[1]"  1;
	setAttr ".wl[1195].w[1]"  1;
	setAttr ".wl[1196].w[1]"  1;
	setAttr ".wl[1197].w[1]"  1;
	setAttr ".wl[1198].w[1]"  1;
	setAttr ".wl[1199].w[1]"  1;
	setAttr ".wl[1200].w[1]"  1;
	setAttr ".wl[1201].w[1]"  1;
	setAttr ".wl[1202].w[1]"  1;
	setAttr ".wl[1203].w[1]"  1;
	setAttr ".wl[1204].w[1]"  1;
	setAttr ".wl[1205].w[1]"  1;
	setAttr ".wl[1206].w[1]"  1;
	setAttr ".wl[1207].w[1]"  1;
	setAttr ".wl[1208].w[1]"  1;
	setAttr ".wl[1209].w[1]"  1;
	setAttr ".wl[1210].w[1]"  1;
	setAttr ".wl[1211].w[1]"  1;
	setAttr ".wl[1212].w[1]"  1;
	setAttr ".wl[1213].w[1]"  1;
	setAttr ".wl[1214].w[1]"  1;
	setAttr ".wl[1215].w[1]"  1;
	setAttr ".wl[1216].w[1]"  1;
	setAttr ".wl[1217].w[1]"  1;
	setAttr ".wl[1218].w[1]"  1;
	setAttr ".wl[1219].w[1]"  1;
	setAttr ".wl[1220].w[1]"  1;
	setAttr ".wl[1221].w[1]"  1;
	setAttr ".wl[1222].w[1]"  1;
	setAttr ".wl[1223].w[1]"  1;
	setAttr ".wl[1224].w[1]"  1;
	setAttr ".wl[1225].w[1]"  1;
	setAttr ".wl[1226].w[1]"  1;
	setAttr ".wl[1227].w[1]"  1;
	setAttr ".wl[1228].w[1]"  1;
	setAttr ".wl[1229].w[1]"  1;
	setAttr ".wl[1230].w[1]"  1;
	setAttr ".wl[1231].w[1]"  1;
	setAttr ".wl[1232].w[1]"  1;
	setAttr ".wl[1233].w[1]"  1;
	setAttr ".wl[1234].w[1]"  1;
	setAttr ".wl[1235].w[1]"  1;
	setAttr ".wl[1236].w[1]"  1;
	setAttr ".wl[1237].w[1]"  1;
	setAttr ".wl[1238].w[1]"  1;
	setAttr ".wl[1239].w[1]"  1;
	setAttr ".wl[1240].w[1]"  1;
	setAttr ".wl[1241].w[1]"  1;
	setAttr ".wl[1242].w[1]"  1;
	setAttr ".wl[1243].w[1]"  1;
	setAttr ".wl[1244].w[1]"  1;
	setAttr ".wl[1245].w[1]"  1;
	setAttr ".wl[1246].w[1]"  1;
	setAttr ".wl[1247].w[1]"  1;
	setAttr ".wl[1248].w[1]"  1;
	setAttr ".wl[1249].w[1]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.1538587328805594 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  6 6;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak8";
	setAttr -s 41 ".vl[0].vt";
	setAttr ".vl[0].vt[220]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[221]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[222]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[223]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[224]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[226]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[228]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[229]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[231]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[232]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[233]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[234]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[235]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[236]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[237]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[238]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[239]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[240]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[241]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[242]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[243]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[244]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[245]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[246]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[247]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[248]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[249]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[250]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[251]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[252]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[253]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[254]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[255]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[257]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[258]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[259]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[260]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[261]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[262]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".vl[0].vt[263]" -type "float3" 0 7.4505806e-09 0 ;
createNode objectSet -n "skinCluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster8";
	setAttr ".skm" 1;
	setAttr -s 2243 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[1].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[2].w[2]"  1;
	setAttr ".wl[3].w[2]"  1;
	setAttr -s 2 ".wl[4].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[5].w[2]"  1;
	setAttr -s 2 ".wl[6].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[7].w[2]"  1;
	setAttr -s 2 ".wl[8].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[9].w[2]"  1;
	setAttr -s 2 ".wl[10].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[11].w[2]"  1;
	setAttr -s 2 ".wl[12].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[13].w[2]"  1;
	setAttr -s 2 ".wl[14].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[15].w[2]"  1;
	setAttr -s 2 ".wl[16].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[17].w[2]"  1;
	setAttr -s 2 ".wl[18].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[19].w[2]"  1;
	setAttr -s 2 ".wl[20].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[21].w[2]"  1;
	setAttr -s 2 ".wl[22].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[23].w[2]"  1;
	setAttr -s 2 ".wl[24].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[25].w[2]"  1;
	setAttr -s 2 ".wl[26].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[27].w[2]"  1;
	setAttr -s 2 ".wl[28].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[29].w[2]"  1;
	setAttr -s 2 ".wl[30].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[31].w[2]"  1;
	setAttr ".wl[32].w[2]"  1;
	setAttr ".wl[33].w[2]"  1;
	setAttr ".wl[34].w[2]"  1;
	setAttr ".wl[35].w[2]"  1;
	setAttr ".wl[36].w[2]"  1;
	setAttr ".wl[37].w[2]"  1;
	setAttr ".wl[38].w[2]"  1;
	setAttr ".wl[39].w[2]"  1;
	setAttr ".wl[40].w[2]"  1;
	setAttr ".wl[41].w[2]"  1;
	setAttr ".wl[42].w[2]"  1;
	setAttr ".wl[43].w[2]"  1;
	setAttr ".wl[44].w[2]"  1;
	setAttr ".wl[45].w[2]"  1;
	setAttr ".wl[46].w[2]"  1;
	setAttr ".wl[47].w[2]"  1;
	setAttr ".wl[48].w[2]"  1;
	setAttr -s 2 ".wl[49].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[50].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[51].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[52].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[53].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[54].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[55].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[56].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[57].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[58].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[59].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[60].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[61].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[62].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[63].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[64].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[65].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[66].w[2]"  1;
	setAttr ".wl[67].w[2]"  1;
	setAttr ".wl[68].w[2]"  1;
	setAttr ".wl[69].w[2]"  1;
	setAttr ".wl[70].w[2]"  1;
	setAttr ".wl[71].w[2]"  1;
	setAttr ".wl[72].w[2]"  1;
	setAttr ".wl[73].w[2]"  1;
	setAttr ".wl[74].w[2]"  1;
	setAttr ".wl[75].w[2]"  1;
	setAttr ".wl[76].w[2]"  1;
	setAttr ".wl[77].w[2]"  1;
	setAttr ".wl[78].w[2]"  1;
	setAttr ".wl[79].w[2]"  1;
	setAttr ".wl[80].w[2]"  1;
	setAttr ".wl[81].w[2]"  1;
	setAttr -s 2 ".wl[82].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[83].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[84].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[85].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[86].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[87].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[88].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[89].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[90].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[91].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[92].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[93].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[94].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[95].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[96].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[97].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[98].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[99].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[100].w[2]"  1;
	setAttr ".wl[101].w[2]"  1;
	setAttr -s 2 ".wl[102].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[103].w[2]"  1;
	setAttr -s 2 ".wl[104].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[105].w[2]"  1;
	setAttr -s 2 ".wl[106].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[107].w[2]"  1;
	setAttr -s 2 ".wl[108].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[109].w[2]"  1;
	setAttr -s 2 ".wl[110].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[111].w[2]"  1;
	setAttr -s 2 ".wl[112].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[113].w[2]"  1;
	setAttr -s 2 ".wl[114].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[115].w[2]"  1;
	setAttr -s 2 ".wl[116].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[117].w[2]"  1;
	setAttr -s 2 ".wl[118].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[119].w[2]"  1;
	setAttr -s 2 ".wl[120].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[121].w[2]"  1;
	setAttr -s 2 ".wl[122].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[123].w[2]"  1;
	setAttr -s 2 ".wl[124].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[125].w[2]"  1;
	setAttr -s 2 ".wl[126].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[127].w[2]"  1;
	setAttr -s 2 ".wl[128].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[129].w[2]"  1;
	setAttr ".wl[130].w[2]"  1;
	setAttr ".wl[131].w[2]"  1;
	setAttr ".wl[132].w[2]"  1;
	setAttr ".wl[133].w[2]"  1;
	setAttr ".wl[134].w[2]"  1;
	setAttr ".wl[135].w[2]"  1;
	setAttr ".wl[136].w[2]"  1;
	setAttr ".wl[137].w[2]"  1;
	setAttr ".wl[138].w[2]"  1;
	setAttr ".wl[139].w[2]"  1;
	setAttr ".wl[140].w[2]"  1;
	setAttr ".wl[141].w[2]"  1;
	setAttr ".wl[142].w[2]"  1;
	setAttr ".wl[143].w[2]"  1;
	setAttr ".wl[144].w[2]"  1;
	setAttr ".wl[145].w[2]"  1;
	setAttr ".wl[146].w[2]"  1;
	setAttr -s 2 ".wl[147].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[148].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[149].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[150].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[151].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[152].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[153].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[154].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[155].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[156].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[157].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[158].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[159].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[160].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[161].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[162].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[163].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[164].w[2]"  1;
	setAttr ".wl[165].w[2]"  1;
	setAttr ".wl[166].w[2]"  1;
	setAttr ".wl[167].w[2]"  1;
	setAttr ".wl[168].w[2]"  1;
	setAttr ".wl[169].w[2]"  1;
	setAttr ".wl[170].w[2]"  1;
	setAttr ".wl[171].w[2]"  1;
	setAttr ".wl[172].w[2]"  1;
	setAttr ".wl[173].w[2]"  1;
	setAttr ".wl[174].w[2]"  1;
	setAttr ".wl[175].w[2]"  1;
	setAttr ".wl[176].w[2]"  1;
	setAttr ".wl[177].w[2]"  1;
	setAttr ".wl[178].w[2]"  1;
	setAttr ".wl[179].w[2]"  1;
	setAttr -s 2 ".wl[180].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[181].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[182].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[183].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[184].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[185].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[186].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[187].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[188].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[189].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[190].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[191].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[192].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[193].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[194].w[0:1]"  0.9 0.099999999999999978;
	setAttr -s 2 ".wl[195].w[0:1]"  0.9 0.099999999999999978;
	setAttr ".wl[196].w[2]"  1;
	setAttr ".wl[197].w[2]"  1;
	setAttr ".wl[198].w[2]"  1;
	setAttr ".wl[199].w[2]"  1;
	setAttr ".wl[200].w[2]"  1;
	setAttr ".wl[201].w[2]"  1;
	setAttr ".wl[202].w[2]"  1;
	setAttr ".wl[203].w[2]"  1;
	setAttr ".wl[204].w[2]"  1;
	setAttr ".wl[205].w[2]"  1;
	setAttr ".wl[206].w[2]"  1;
	setAttr ".wl[207].w[2]"  1;
	setAttr ".wl[208].w[2]"  1;
	setAttr ".wl[209].w[2]"  1;
	setAttr ".wl[210].w[2]"  1;
	setAttr ".wl[211].w[2]"  1;
	setAttr ".wl[212].w[2]"  1;
	setAttr ".wl[213].w[2]"  1;
	setAttr ".wl[214].w[2]"  1;
	setAttr ".wl[215].w[2]"  1;
	setAttr ".wl[216].w[2]"  1;
	setAttr ".wl[217].w[2]"  1;
	setAttr ".wl[218].w[2]"  1;
	setAttr ".wl[219].w[2]"  1;
	setAttr ".wl[220].w[2]"  1;
	setAttr ".wl[221].w[2]"  1;
	setAttr ".wl[222].w[2]"  1;
	setAttr ".wl[223].w[2]"  1;
	setAttr ".wl[224].w[2]"  1;
	setAttr ".wl[225].w[2]"  1;
	setAttr ".wl[226].w[2]"  1;
	setAttr ".wl[227].w[2]"  1;
	setAttr ".wl[228].w[2]"  1;
	setAttr ".wl[229].w[2]"  1;
	setAttr ".wl[230].w[2]"  1;
	setAttr ".wl[231].w[2]"  1;
	setAttr ".wl[232].w[2]"  1;
	setAttr ".wl[233].w[2]"  1;
	setAttr ".wl[234].w[2]"  1;
	setAttr ".wl[235].w[2]"  1;
	setAttr ".wl[236].w[2]"  1;
	setAttr ".wl[237].w[2]"  1;
	setAttr ".wl[238].w[2]"  1;
	setAttr ".wl[239].w[2]"  1;
	setAttr ".wl[240].w[2]"  1;
	setAttr ".wl[241].w[2]"  1;
	setAttr ".wl[242].w[2]"  1;
	setAttr ".wl[243].w[2]"  1;
	setAttr ".wl[244].w[2]"  1;
	setAttr ".wl[245].w[2]"  1;
	setAttr ".wl[246].w[2]"  1;
	setAttr ".wl[247].w[2]"  1;
	setAttr ".wl[248].w[2]"  1;
	setAttr ".wl[249].w[2]"  1;
	setAttr ".wl[250].w[2]"  1;
	setAttr ".wl[251].w[2]"  1;
	setAttr ".wl[252].w[2]"  1;
	setAttr ".wl[253].w[2]"  1;
	setAttr ".wl[254].w[2]"  1;
	setAttr ".wl[255].w[2]"  1;
	setAttr ".wl[256].w[2]"  1;
	setAttr ".wl[257].w[2]"  1;
	setAttr ".wl[258].w[2]"  1;
	setAttr ".wl[259].w[2]"  1;
	setAttr ".wl[260].w[2]"  1;
	setAttr ".wl[261].w[2]"  1;
	setAttr ".wl[262].w[2]"  1;
	setAttr ".wl[263].w[2]"  1;
	setAttr ".wl[264].w[2]"  1;
	setAttr ".wl[265].w[2]"  1;
	setAttr ".wl[266].w[2]"  1;
	setAttr ".wl[267].w[2]"  1;
	setAttr ".wl[268].w[2]"  1;
	setAttr ".wl[269].w[2]"  1;
	setAttr ".wl[270].w[2]"  1;
	setAttr ".wl[271].w[2]"  1;
	setAttr ".wl[272].w[2]"  1;
	setAttr ".wl[273].w[2]"  1;
	setAttr ".wl[274].w[2]"  1;
	setAttr ".wl[275].w[2]"  1;
	setAttr ".wl[276].w[2]"  1;
	setAttr ".wl[277].w[2]"  1;
	setAttr ".wl[278].w[2]"  1;
	setAttr ".wl[279].w[2]"  1;
	setAttr ".wl[280].w[2]"  1;
	setAttr ".wl[281].w[2]"  1;
	setAttr ".wl[282].w[2]"  1;
	setAttr ".wl[283].w[2]"  1;
	setAttr ".wl[284].w[2]"  1;
	setAttr ".wl[285].w[2]"  1;
	setAttr ".wl[286].w[2]"  1;
	setAttr ".wl[287].w[2]"  1;
	setAttr ".wl[288].w[2]"  1;
	setAttr ".wl[289].w[2]"  1;
	setAttr ".wl[290].w[2]"  1;
	setAttr ".wl[291].w[2]"  1;
	setAttr ".wl[292].w[2]"  1;
	setAttr ".wl[293].w[2]"  1;
	setAttr ".wl[294].w[2]"  1;
	setAttr ".wl[295].w[2]"  1;
	setAttr ".wl[296].w[2]"  1;
	setAttr ".wl[297].w[2]"  1;
	setAttr ".wl[298].w[2]"  1;
	setAttr ".wl[299].w[2]"  1;
	setAttr ".wl[300].w[2]"  1;
	setAttr ".wl[301].w[2]"  1;
	setAttr ".wl[302].w[2]"  1;
	setAttr ".wl[303].w[2]"  1;
	setAttr ".wl[304].w[2]"  1;
	setAttr ".wl[305].w[2]"  1;
	setAttr ".wl[306].w[2]"  1;
	setAttr ".wl[307].w[2]"  1;
	setAttr ".wl[308].w[2]"  1;
	setAttr ".wl[309].w[2]"  1;
	setAttr ".wl[310].w[2]"  1;
	setAttr ".wl[311].w[2]"  1;
	setAttr ".wl[312].w[2]"  1;
	setAttr ".wl[313].w[2]"  1;
	setAttr ".wl[314].w[2]"  1;
	setAttr ".wl[315].w[2]"  1;
	setAttr ".wl[316].w[2]"  1;
	setAttr ".wl[317].w[2]"  1;
	setAttr ".wl[318].w[2]"  1;
	setAttr ".wl[319].w[2]"  1;
	setAttr ".wl[320].w[2]"  1;
	setAttr ".wl[321].w[2]"  1;
	setAttr ".wl[322].w[2]"  1;
	setAttr ".wl[323].w[2]"  1;
	setAttr ".wl[324].w[2]"  1;
	setAttr ".wl[325].w[2]"  1;
	setAttr ".wl[326].w[2]"  1;
	setAttr ".wl[327].w[2]"  1;
	setAttr ".wl[328].w[2]"  1;
	setAttr ".wl[329].w[2]"  1;
	setAttr ".wl[330].w[2]"  1;
	setAttr ".wl[331].w[2]"  1;
	setAttr ".wl[332].w[2]"  1;
	setAttr ".wl[333].w[2]"  1;
	setAttr ".wl[334].w[2]"  1;
	setAttr ".wl[335].w[2]"  1;
	setAttr ".wl[336].w[2]"  1;
	setAttr ".wl[337].w[2]"  1;
	setAttr ".wl[338].w[2]"  1;
	setAttr ".wl[339].w[2]"  1;
	setAttr ".wl[340].w[2]"  1;
	setAttr ".wl[341].w[2]"  1;
	setAttr ".wl[342].w[2]"  1;
	setAttr ".wl[343].w[2]"  1;
	setAttr ".wl[344].w[2]"  1;
	setAttr ".wl[345].w[2]"  1;
	setAttr ".wl[346].w[2]"  1;
	setAttr ".wl[347].w[2]"  1;
	setAttr ".wl[348].w[2]"  1;
	setAttr ".wl[349].w[2]"  1;
	setAttr ".wl[350].w[2]"  1;
	setAttr ".wl[351].w[2]"  1;
	setAttr ".wl[352].w[2]"  1;
	setAttr ".wl[353].w[2]"  1;
	setAttr ".wl[354].w[2]"  1;
	setAttr ".wl[355].w[2]"  1;
	setAttr ".wl[356].w[2]"  1;
	setAttr ".wl[357].w[2]"  1;
	setAttr ".wl[358].w[2]"  1;
	setAttr ".wl[359].w[2]"  1;
	setAttr ".wl[360].w[2]"  1;
	setAttr ".wl[361].w[2]"  1;
	setAttr ".wl[362].w[2]"  1;
	setAttr ".wl[363].w[2]"  1;
	setAttr ".wl[364].w[2]"  1;
	setAttr ".wl[365].w[2]"  1;
	setAttr ".wl[366].w[2]"  1;
	setAttr ".wl[367].w[2]"  1;
	setAttr ".wl[368].w[2]"  1;
	setAttr ".wl[369].w[2]"  1;
	setAttr ".wl[370].w[2]"  1;
	setAttr ".wl[371].w[2]"  1;
	setAttr ".wl[372].w[2]"  1;
	setAttr ".wl[373].w[2]"  1;
	setAttr ".wl[374].w[2]"  1;
	setAttr ".wl[375].w[2]"  1;
	setAttr ".wl[376].w[2]"  1;
	setAttr ".wl[377].w[2]"  1;
	setAttr ".wl[378].w[2]"  1;
	setAttr ".wl[379].w[2]"  1;
	setAttr ".wl[380].w[2]"  1;
	setAttr ".wl[381].w[2]"  1;
	setAttr ".wl[382].w[2]"  1;
	setAttr ".wl[383].w[2]"  1;
	setAttr ".wl[384].w[2]"  1;
	setAttr ".wl[385].w[2]"  1;
	setAttr ".wl[386].w[2]"  1;
	setAttr ".wl[387].w[2]"  1;
	setAttr ".wl[388].w[2]"  1;
	setAttr ".wl[389].w[2]"  1;
	setAttr ".wl[390].w[2]"  1;
	setAttr ".wl[391].w[2]"  1;
	setAttr ".wl[392].w[2]"  1;
	setAttr ".wl[393].w[2]"  1;
	setAttr ".wl[394].w[2]"  1;
	setAttr ".wl[395].w[2]"  1;
	setAttr ".wl[396].w[2]"  1;
	setAttr ".wl[397].w[2]"  1;
	setAttr ".wl[398].w[2]"  1;
	setAttr ".wl[399].w[2]"  1;
	setAttr ".wl[400].w[2]"  1;
	setAttr ".wl[401].w[2]"  1;
	setAttr ".wl[402].w[2]"  1;
	setAttr ".wl[403].w[2]"  1;
	setAttr ".wl[404].w[2]"  1;
	setAttr ".wl[405].w[2]"  1;
	setAttr ".wl[406].w[2]"  1;
	setAttr ".wl[407].w[2]"  1;
	setAttr ".wl[408].w[2]"  1;
	setAttr ".wl[409].w[2]"  1;
	setAttr ".wl[410].w[2]"  1;
	setAttr ".wl[411].w[2]"  1;
	setAttr ".wl[412].w[2]"  1;
	setAttr ".wl[413].w[2]"  1;
	setAttr ".wl[414].w[2]"  1;
	setAttr ".wl[415].w[2]"  1;
	setAttr ".wl[416].w[2]"  1;
	setAttr ".wl[417].w[2]"  1;
	setAttr ".wl[418].w[2]"  1;
	setAttr ".wl[419].w[2]"  1;
	setAttr ".wl[420].w[2]"  1;
	setAttr ".wl[421].w[2]"  1;
	setAttr ".wl[422].w[2]"  1;
	setAttr ".wl[423].w[2]"  1;
	setAttr ".wl[424].w[2]"  1;
	setAttr ".wl[425].w[2]"  1;
	setAttr ".wl[426].w[2]"  1;
	setAttr ".wl[427].w[2]"  1;
	setAttr ".wl[428].w[2]"  1;
	setAttr ".wl[429].w[2]"  1;
	setAttr ".wl[430].w[2]"  1;
	setAttr ".wl[431].w[2]"  1;
	setAttr ".wl[432].w[2]"  1;
	setAttr ".wl[433].w[2]"  1;
	setAttr ".wl[434].w[2]"  1;
	setAttr ".wl[435].w[2]"  1;
	setAttr ".wl[436].w[2]"  1;
	setAttr ".wl[437].w[2]"  1;
	setAttr ".wl[438].w[2]"  1;
	setAttr ".wl[439].w[2]"  1;
	setAttr ".wl[440].w[2]"  1;
	setAttr ".wl[441].w[2]"  1;
	setAttr ".wl[442].w[2]"  1;
	setAttr ".wl[443].w[2]"  1;
	setAttr ".wl[444].w[2]"  1;
	setAttr ".wl[445].w[2]"  1;
	setAttr ".wl[446].w[2]"  1;
	setAttr ".wl[447].w[2]"  1;
	setAttr ".wl[448].w[2]"  1;
	setAttr ".wl[449].w[2]"  1;
	setAttr ".wl[450].w[2]"  1;
	setAttr ".wl[451].w[2]"  1;
	setAttr ".wl[452].w[2]"  1;
	setAttr ".wl[453].w[2]"  1;
	setAttr ".wl[454].w[2]"  1;
	setAttr ".wl[455].w[2]"  1;
	setAttr ".wl[456].w[2]"  1;
	setAttr ".wl[457].w[2]"  1;
	setAttr ".wl[458].w[2]"  1;
	setAttr ".wl[459].w[2]"  1;
	setAttr ".wl[460].w[2]"  1;
	setAttr ".wl[461].w[2]"  1;
	setAttr ".wl[462].w[2]"  1;
	setAttr ".wl[463].w[2]"  1;
	setAttr ".wl[464].w[2]"  1;
	setAttr ".wl[465].w[2]"  1;
	setAttr ".wl[466].w[2]"  1;
	setAttr ".wl[467].w[2]"  1;
	setAttr ".wl[468].w[2]"  1;
	setAttr ".wl[469].w[2]"  1;
	setAttr ".wl[470].w[2]"  1;
	setAttr ".wl[471].w[2]"  1;
	setAttr ".wl[472].w[2]"  1;
	setAttr ".wl[473].w[2]"  1;
	setAttr ".wl[474].w[2]"  1;
	setAttr ".wl[475].w[2]"  1;
	setAttr ".wl[476].w[2]"  1;
	setAttr ".wl[477].w[2]"  1;
	setAttr ".wl[478].w[2]"  1;
	setAttr ".wl[479].w[2]"  1;
	setAttr ".wl[480].w[2]"  1;
	setAttr ".wl[481].w[2]"  1;
	setAttr ".wl[482].w[2]"  1;
	setAttr ".wl[483].w[2]"  1;
	setAttr ".wl[484].w[2]"  1;
	setAttr ".wl[485].w[2]"  1;
	setAttr ".wl[486].w[2]"  1;
	setAttr ".wl[487].w[2]"  1;
	setAttr ".wl[488].w[2]"  1;
	setAttr ".wl[489].w[2]"  1;
	setAttr ".wl[490].w[2]"  1;
	setAttr ".wl[491].w[2]"  1;
	setAttr ".wl[492].w[2]"  1;
	setAttr ".wl[493].w[2]"  1;
	setAttr ".wl[494].w[2]"  1;
	setAttr ".wl[495].w[2]"  1;
	setAttr ".wl[496].w[2]"  1;
	setAttr ".wl[497].w[2]"  1;
	setAttr ".wl[498].w[2]"  1;
	setAttr ".wl[499].w[2]"  1;
	setAttr ".wl[500].w[2]"  1;
	setAttr ".wl[501].w[2]"  1;
	setAttr ".wl[502].w[2]"  1;
	setAttr ".wl[503].w[2]"  1;
	setAttr ".wl[504].w[2]"  1;
	setAttr ".wl[505].w[2]"  1;
	setAttr ".wl[506].w[2]"  1;
	setAttr ".wl[507].w[2]"  1;
	setAttr ".wl[508].w[2]"  1;
	setAttr ".wl[509].w[2]"  1;
	setAttr ".wl[510].w[2]"  1;
	setAttr ".wl[511].w[2]"  1;
	setAttr ".wl[512].w[2]"  1;
	setAttr ".wl[513].w[2]"  1;
	setAttr ".wl[514].w[2]"  1;
	setAttr ".wl[515].w[2]"  1;
	setAttr ".wl[516].w[2]"  1;
	setAttr ".wl[517].w[2]"  1;
	setAttr ".wl[518].w[2]"  1;
	setAttr ".wl[519].w[2]"  1;
	setAttr ".wl[520].w[2]"  1;
	setAttr ".wl[521].w[2]"  1;
	setAttr ".wl[522].w[2]"  1;
	setAttr ".wl[523].w[2]"  1;
	setAttr ".wl[524].w[2]"  1;
	setAttr ".wl[525].w[2]"  1;
	setAttr ".wl[526].w[2]"  1;
	setAttr ".wl[527].w[2]"  1;
	setAttr ".wl[528].w[2]"  1;
	setAttr ".wl[529].w[2]"  1;
	setAttr ".wl[530].w[2]"  1;
	setAttr ".wl[531].w[2]"  1;
	setAttr ".wl[532].w[2]"  1;
	setAttr ".wl[533].w[2]"  1;
	setAttr ".wl[534].w[2]"  1;
	setAttr ".wl[535].w[2]"  1;
	setAttr ".wl[536].w[2]"  1;
	setAttr ".wl[537].w[2]"  1;
	setAttr ".wl[538].w[2]"  1;
	setAttr ".wl[539].w[2]"  1;
	setAttr ".wl[540].w[2]"  1;
	setAttr ".wl[541].w[2]"  1;
	setAttr ".wl[542].w[2]"  1;
	setAttr ".wl[543].w[2]"  1;
	setAttr ".wl[544].w[2]"  1;
	setAttr ".wl[545].w[2]"  1;
	setAttr ".wl[546].w[2]"  1;
	setAttr ".wl[547].w[2]"  1;
	setAttr ".wl[548].w[2]"  1;
	setAttr ".wl[549].w[2]"  1;
	setAttr ".wl[550].w[2]"  1;
	setAttr ".wl[551].w[2]"  1;
	setAttr ".wl[552].w[2]"  1;
	setAttr ".wl[553].w[2]"  1;
	setAttr ".wl[554].w[2]"  1;
	setAttr ".wl[555].w[2]"  1;
	setAttr ".wl[556].w[2]"  1;
	setAttr ".wl[557].w[2]"  1;
	setAttr ".wl[558].w[2]"  1;
	setAttr ".wl[559].w[2]"  1;
	setAttr ".wl[560].w[2]"  1;
	setAttr ".wl[561].w[2]"  1;
	setAttr ".wl[562].w[2]"  1;
	setAttr ".wl[563].w[2]"  1;
	setAttr ".wl[564].w[2]"  1;
	setAttr ".wl[565].w[2]"  1;
	setAttr ".wl[566].w[2]"  1;
	setAttr ".wl[567].w[2]"  1;
	setAttr ".wl[568].w[2]"  1;
	setAttr ".wl[569].w[2]"  1;
	setAttr ".wl[570].w[2]"  1;
	setAttr ".wl[571].w[2]"  1;
	setAttr ".wl[572].w[2]"  1;
	setAttr ".wl[573].w[2]"  1;
	setAttr ".wl[574].w[2]"  1;
	setAttr ".wl[575].w[2]"  1;
	setAttr ".wl[576].w[2]"  1;
	setAttr ".wl[577].w[2]"  1;
	setAttr ".wl[578].w[2]"  1;
	setAttr ".wl[579].w[2]"  1;
	setAttr ".wl[580].w[2]"  1;
	setAttr ".wl[581].w[2]"  1;
	setAttr ".wl[582].w[2]"  1;
	setAttr ".wl[583].w[2]"  1;
	setAttr ".wl[584].w[2]"  1;
	setAttr ".wl[585].w[2]"  1;
	setAttr ".wl[586].w[2]"  1;
	setAttr ".wl[587].w[2]"  1;
	setAttr ".wl[588].w[2]"  1;
	setAttr ".wl[589].w[2]"  1;
	setAttr ".wl[590].w[2]"  1;
	setAttr ".wl[591].w[2]"  1;
	setAttr ".wl[592].w[2]"  1;
	setAttr ".wl[593].w[2]"  1;
	setAttr ".wl[594].w[2]"  1;
	setAttr ".wl[595].w[2]"  1;
	setAttr ".wl[596].w[2]"  1;
	setAttr ".wl[597].w[2]"  1;
	setAttr ".wl[598].w[2]"  1;
	setAttr ".wl[599].w[2]"  1;
	setAttr ".wl[600].w[2]"  1;
	setAttr ".wl[601].w[2]"  1;
	setAttr ".wl[602].w[2]"  1;
	setAttr ".wl[603].w[2]"  1;
	setAttr ".wl[604].w[2]"  1;
	setAttr ".wl[605].w[2]"  1;
	setAttr ".wl[606].w[2]"  1;
	setAttr ".wl[607].w[2]"  1;
	setAttr ".wl[608].w[2]"  1;
	setAttr ".wl[609].w[2]"  1;
	setAttr ".wl[610].w[2]"  1;
	setAttr ".wl[611].w[2]"  1;
	setAttr ".wl[612].w[2]"  1;
	setAttr ".wl[613].w[2]"  1;
	setAttr ".wl[614].w[2]"  1;
	setAttr ".wl[615].w[2]"  1;
	setAttr ".wl[616].w[2]"  1;
	setAttr ".wl[617].w[2]"  1;
	setAttr ".wl[618].w[2]"  1;
	setAttr ".wl[619].w[2]"  1;
	setAttr ".wl[620].w[2]"  1;
	setAttr ".wl[621].w[2]"  1;
	setAttr ".wl[622].w[2]"  1;
	setAttr ".wl[623].w[2]"  1;
	setAttr ".wl[624].w[2]"  1;
	setAttr ".wl[625].w[2]"  1;
	setAttr ".wl[626].w[2]"  1;
	setAttr ".wl[627].w[2]"  1;
	setAttr ".wl[628].w[2]"  1;
	setAttr ".wl[629].w[2]"  1;
	setAttr ".wl[630].w[2]"  1;
	setAttr ".wl[631].w[2]"  1;
	setAttr ".wl[632].w[2]"  1;
	setAttr ".wl[633].w[2]"  1;
	setAttr ".wl[634].w[2]"  1;
	setAttr ".wl[635].w[2]"  1;
	setAttr ".wl[636].w[2]"  1;
	setAttr ".wl[637].w[2]"  1;
	setAttr ".wl[638].w[2]"  1;
	setAttr ".wl[639].w[2]"  1;
	setAttr ".wl[640].w[2]"  1;
	setAttr ".wl[641].w[2]"  1;
	setAttr ".wl[642].w[2]"  1;
	setAttr ".wl[643].w[2]"  1;
	setAttr ".wl[644].w[2]"  1;
	setAttr ".wl[645].w[2]"  1;
	setAttr ".wl[646].w[2]"  1;
	setAttr ".wl[647].w[2]"  1;
	setAttr ".wl[648].w[2]"  1;
	setAttr ".wl[649].w[2]"  1;
	setAttr ".wl[650].w[2]"  1;
	setAttr ".wl[651].w[2]"  1;
	setAttr ".wl[652].w[2]"  1;
	setAttr ".wl[653].w[2]"  1;
	setAttr ".wl[654].w[2]"  1;
	setAttr ".wl[655].w[2]"  1;
	setAttr ".wl[656].w[2]"  1;
	setAttr ".wl[657].w[2]"  1;
	setAttr ".wl[658].w[2]"  1;
	setAttr ".wl[659].w[2]"  1;
	setAttr ".wl[660].w[2]"  1;
	setAttr ".wl[661].w[2]"  1;
	setAttr ".wl[662].w[2]"  1;
	setAttr ".wl[663].w[2]"  1;
	setAttr ".wl[664].w[2]"  1;
	setAttr ".wl[665].w[2]"  1;
	setAttr ".wl[666].w[2]"  1;
	setAttr ".wl[667].w[2]"  1;
	setAttr ".wl[668].w[2]"  1;
	setAttr ".wl[669].w[2]"  1;
	setAttr ".wl[670].w[2]"  1;
	setAttr ".wl[671].w[2]"  1;
	setAttr ".wl[672].w[2]"  1;
	setAttr ".wl[673].w[2]"  1;
	setAttr ".wl[674].w[2]"  1;
	setAttr ".wl[675].w[2]"  1;
	setAttr ".wl[676].w[2]"  1;
	setAttr ".wl[677].w[2]"  1;
	setAttr ".wl[678].w[2]"  1;
	setAttr ".wl[679].w[2]"  1;
	setAttr ".wl[680].w[2]"  1;
	setAttr ".wl[681].w[2]"  1;
	setAttr ".wl[682].w[2]"  1;
	setAttr ".wl[683].w[2]"  1;
	setAttr ".wl[684].w[2]"  1;
	setAttr ".wl[685].w[2]"  1;
	setAttr ".wl[686].w[2]"  1;
	setAttr ".wl[687].w[2]"  1;
	setAttr ".wl[688].w[2]"  1;
	setAttr ".wl[689].w[2]"  1;
	setAttr ".wl[690].w[2]"  1;
	setAttr ".wl[691].w[2]"  1;
	setAttr ".wl[692].w[2]"  1;
	setAttr ".wl[693].w[2]"  1;
	setAttr ".wl[694].w[2]"  1;
	setAttr ".wl[695].w[2]"  1;
	setAttr ".wl[696].w[2]"  1;
	setAttr ".wl[697].w[2]"  1;
	setAttr ".wl[698].w[2]"  1;
	setAttr ".wl[699].w[2]"  1;
	setAttr ".wl[700].w[2]"  1;
	setAttr ".wl[701].w[2]"  1;
	setAttr ".wl[702].w[2]"  1;
	setAttr ".wl[703].w[2]"  1;
	setAttr ".wl[704].w[2]"  1;
	setAttr ".wl[705].w[2]"  1;
	setAttr ".wl[706].w[2]"  1;
	setAttr ".wl[707].w[2]"  1;
	setAttr ".wl[708].w[2]"  1;
	setAttr ".wl[709].w[2]"  1;
	setAttr ".wl[710].w[2]"  1;
	setAttr ".wl[711].w[2]"  1;
	setAttr ".wl[712].w[2]"  1;
	setAttr ".wl[713].w[2]"  1;
	setAttr ".wl[714].w[2]"  1;
	setAttr ".wl[715].w[2]"  1;
	setAttr ".wl[716].w[2]"  1;
	setAttr ".wl[717].w[2]"  1;
	setAttr ".wl[718].w[2]"  1;
	setAttr ".wl[719].w[2]"  1;
	setAttr ".wl[720].w[2]"  1;
	setAttr ".wl[721].w[2]"  1;
	setAttr ".wl[722].w[2]"  1;
	setAttr ".wl[723].w[2]"  1;
	setAttr ".wl[724].w[2]"  1;
	setAttr ".wl[725].w[2]"  1;
	setAttr ".wl[726].w[2]"  1;
	setAttr ".wl[727].w[2]"  1;
	setAttr ".wl[728].w[2]"  1;
	setAttr ".wl[729].w[2]"  1;
	setAttr ".wl[730].w[2]"  1;
	setAttr ".wl[731].w[2]"  1;
	setAttr ".wl[732].w[2]"  1;
	setAttr ".wl[733].w[2]"  1;
	setAttr ".wl[734].w[2]"  1;
	setAttr ".wl[735].w[2]"  1;
	setAttr ".wl[736].w[2]"  1;
	setAttr ".wl[737].w[2]"  1;
	setAttr ".wl[738].w[2]"  1;
	setAttr ".wl[739].w[2]"  1;
	setAttr ".wl[740].w[2]"  1;
	setAttr ".wl[741].w[2]"  1;
	setAttr ".wl[742].w[2]"  1;
	setAttr ".wl[743].w[2]"  1;
	setAttr ".wl[744].w[2]"  1;
	setAttr ".wl[745].w[2]"  1;
	setAttr ".wl[746].w[2]"  1;
	setAttr ".wl[747].w[2]"  1;
	setAttr ".wl[748].w[2]"  1;
	setAttr ".wl[749].w[2]"  1;
	setAttr ".wl[750].w[2]"  1;
	setAttr ".wl[751].w[2]"  1;
	setAttr ".wl[752].w[2]"  1;
	setAttr ".wl[753].w[2]"  1;
	setAttr ".wl[754].w[2]"  1;
	setAttr ".wl[755].w[2]"  1;
	setAttr ".wl[756].w[2]"  1;
	setAttr ".wl[757].w[2]"  1;
	setAttr ".wl[758].w[2]"  1;
	setAttr ".wl[759].w[2]"  1;
	setAttr ".wl[760].w[2]"  1;
	setAttr ".wl[761].w[2]"  1;
	setAttr ".wl[762].w[2]"  1;
	setAttr ".wl[763].w[2]"  1;
	setAttr ".wl[764].w[2]"  1;
	setAttr ".wl[765].w[2]"  1;
	setAttr ".wl[766].w[2]"  1;
	setAttr ".wl[767].w[2]"  1;
	setAttr ".wl[768].w[2]"  1;
	setAttr ".wl[769].w[2]"  1;
	setAttr ".wl[770].w[2]"  1;
	setAttr ".wl[771].w[2]"  1;
	setAttr ".wl[772].w[2]"  1;
	setAttr ".wl[773].w[2]"  1;
	setAttr ".wl[774].w[2]"  1;
	setAttr ".wl[775].w[2]"  1;
	setAttr ".wl[776].w[2]"  1;
	setAttr ".wl[777].w[2]"  1;
	setAttr ".wl[778].w[2]"  1;
	setAttr ".wl[779].w[2]"  1;
	setAttr ".wl[780].w[2]"  1;
	setAttr ".wl[781].w[2]"  1;
	setAttr ".wl[782].w[2]"  1;
	setAttr ".wl[783].w[2]"  1;
	setAttr ".wl[784].w[2]"  1;
	setAttr ".wl[785].w[2]"  1;
	setAttr ".wl[786].w[2]"  1;
	setAttr ".wl[787].w[2]"  1;
	setAttr ".wl[788].w[2]"  1;
	setAttr ".wl[789].w[2]"  1;
	setAttr ".wl[790].w[2]"  1;
	setAttr ".wl[791].w[2]"  1;
	setAttr ".wl[792].w[2]"  1;
	setAttr ".wl[793].w[2]"  1;
	setAttr ".wl[794].w[2]"  1;
	setAttr ".wl[795].w[2]"  1;
	setAttr ".wl[796].w[2]"  1;
	setAttr ".wl[797].w[2]"  1;
	setAttr ".wl[798].w[2]"  1;
	setAttr ".wl[799].w[2]"  1;
	setAttr ".wl[800].w[2]"  1;
	setAttr ".wl[801].w[2]"  1;
	setAttr ".wl[802].w[2]"  1;
	setAttr ".wl[803].w[2]"  1;
	setAttr ".wl[804].w[2]"  1;
	setAttr ".wl[805].w[2]"  1;
	setAttr ".wl[806].w[2]"  1;
	setAttr ".wl[807].w[2]"  1;
	setAttr ".wl[808].w[2]"  1;
	setAttr ".wl[809].w[2]"  1;
	setAttr ".wl[810].w[2]"  1;
	setAttr ".wl[811].w[2]"  1;
	setAttr ".wl[812].w[2]"  1;
	setAttr ".wl[813].w[2]"  1;
	setAttr ".wl[814].w[2]"  1;
	setAttr ".wl[815].w[2]"  1;
	setAttr ".wl[816].w[2]"  1;
	setAttr ".wl[817].w[2]"  1;
	setAttr ".wl[818].w[2]"  1;
	setAttr ".wl[819].w[2]"  1;
	setAttr ".wl[820].w[2]"  1;
	setAttr ".wl[821].w[2]"  1;
	setAttr ".wl[822].w[2]"  1;
	setAttr ".wl[823].w[2]"  1;
	setAttr ".wl[824].w[2]"  1;
	setAttr ".wl[825].w[2]"  1;
	setAttr ".wl[826].w[2]"  1;
	setAttr ".wl[827].w[2]"  1;
	setAttr ".wl[828].w[2]"  1;
	setAttr ".wl[829].w[2]"  1;
	setAttr ".wl[830].w[2]"  1;
	setAttr ".wl[831].w[2]"  1;
	setAttr ".wl[832].w[2]"  1;
	setAttr ".wl[833].w[2]"  1;
	setAttr ".wl[834].w[2]"  1;
	setAttr ".wl[835].w[2]"  1;
	setAttr ".wl[836].w[2]"  1;
	setAttr ".wl[837].w[2]"  1;
	setAttr ".wl[838].w[2]"  1;
	setAttr ".wl[839].w[2]"  1;
	setAttr ".wl[840].w[2]"  1;
	setAttr ".wl[841].w[2]"  1;
	setAttr ".wl[842].w[2]"  1;
	setAttr ".wl[843].w[2]"  1;
	setAttr ".wl[844].w[2]"  1;
	setAttr ".wl[845].w[2]"  1;
	setAttr ".wl[846].w[2]"  1;
	setAttr ".wl[847].w[2]"  1;
	setAttr ".wl[848].w[2]"  1;
	setAttr ".wl[849].w[2]"  1;
	setAttr ".wl[850].w[2]"  1;
	setAttr ".wl[851].w[2]"  1;
	setAttr ".wl[852].w[2]"  1;
	setAttr ".wl[853].w[2]"  1;
	setAttr ".wl[854].w[2]"  1;
	setAttr ".wl[855].w[2]"  1;
	setAttr ".wl[856].w[2]"  1;
	setAttr ".wl[857].w[2]"  1;
	setAttr ".wl[858].w[2]"  1;
	setAttr ".wl[859].w[2]"  1;
	setAttr ".wl[860].w[2]"  1;
	setAttr ".wl[861].w[2]"  1;
	setAttr ".wl[862].w[2]"  1;
	setAttr ".wl[863].w[2]"  1;
	setAttr ".wl[864].w[2]"  1;
	setAttr ".wl[865].w[2]"  1;
	setAttr ".wl[866].w[2]"  1;
	setAttr ".wl[867].w[2]"  1;
	setAttr ".wl[868].w[2]"  1;
	setAttr ".wl[869].w[2]"  1;
	setAttr ".wl[870].w[2]"  1;
	setAttr ".wl[871].w[2]"  1;
	setAttr ".wl[872].w[2]"  1;
	setAttr ".wl[873].w[2]"  1;
	setAttr ".wl[874].w[2]"  1;
	setAttr ".wl[875].w[2]"  1;
	setAttr ".wl[876].w[2]"  1;
	setAttr ".wl[877].w[2]"  1;
	setAttr ".wl[878].w[2]"  1;
	setAttr ".wl[879].w[2]"  1;
	setAttr ".wl[880].w[2]"  1;
	setAttr ".wl[881].w[2]"  1;
	setAttr ".wl[882].w[2]"  1;
	setAttr ".wl[883].w[2]"  1;
	setAttr ".wl[884].w[2]"  1;
	setAttr ".wl[885].w[2]"  1;
	setAttr ".wl[886].w[2]"  1;
	setAttr ".wl[887].w[2]"  1;
	setAttr ".wl[888].w[2]"  1;
	setAttr ".wl[889].w[2]"  1;
	setAttr ".wl[890].w[2]"  1;
	setAttr ".wl[891].w[2]"  1;
	setAttr ".wl[892].w[2]"  1;
	setAttr ".wl[893].w[2]"  1;
	setAttr ".wl[894].w[2]"  1;
	setAttr ".wl[895].w[2]"  1;
	setAttr ".wl[896].w[2]"  1;
	setAttr ".wl[897].w[2]"  1;
	setAttr ".wl[898].w[2]"  1;
	setAttr ".wl[899].w[2]"  1;
	setAttr ".wl[900].w[2]"  1;
	setAttr ".wl[901].w[2]"  1;
	setAttr ".wl[902].w[2]"  1;
	setAttr ".wl[903].w[2]"  1;
	setAttr ".wl[904].w[2]"  1;
	setAttr ".wl[905].w[2]"  1;
	setAttr ".wl[906].w[2]"  1;
	setAttr ".wl[907].w[2]"  1;
	setAttr ".wl[908].w[2]"  1;
	setAttr ".wl[909].w[2]"  1;
	setAttr ".wl[910].w[2]"  1;
	setAttr ".wl[911].w[2]"  1;
	setAttr ".wl[912].w[2]"  1;
	setAttr ".wl[913].w[2]"  1;
	setAttr ".wl[914].w[2]"  1;
	setAttr ".wl[915].w[2]"  1;
	setAttr ".wl[916].w[2]"  1;
	setAttr ".wl[917].w[2]"  1;
	setAttr ".wl[918].w[2]"  1;
	setAttr ".wl[919].w[2]"  1;
	setAttr ".wl[920].w[2]"  1;
	setAttr ".wl[921].w[2]"  1;
	setAttr ".wl[922].w[2]"  1;
	setAttr ".wl[923].w[2]"  1;
	setAttr ".wl[924].w[2]"  1;
	setAttr ".wl[925].w[2]"  1;
	setAttr ".wl[926].w[2]"  1;
	setAttr ".wl[927].w[2]"  1;
	setAttr ".wl[928].w[2]"  1;
	setAttr ".wl[929].w[2]"  1;
	setAttr ".wl[930].w[2]"  1;
	setAttr ".wl[931].w[2]"  1;
	setAttr ".wl[932].w[2]"  1;
	setAttr ".wl[933].w[2]"  1;
	setAttr ".wl[934].w[2]"  1;
	setAttr ".wl[935].w[2]"  1;
	setAttr ".wl[936].w[2]"  1;
	setAttr ".wl[937].w[2]"  1;
	setAttr ".wl[938].w[2]"  1;
	setAttr ".wl[939].w[2]"  1;
	setAttr ".wl[940].w[2]"  1;
	setAttr ".wl[941].w[2]"  1;
	setAttr ".wl[942].w[2]"  1;
	setAttr ".wl[943].w[2]"  1;
	setAttr ".wl[944].w[2]"  1;
	setAttr ".wl[945].w[2]"  1;
	setAttr ".wl[946].w[2]"  1;
	setAttr ".wl[947].w[2]"  1;
	setAttr ".wl[948].w[2]"  1;
	setAttr ".wl[949].w[2]"  1;
	setAttr ".wl[950].w[2]"  1;
	setAttr ".wl[951].w[2]"  1;
	setAttr ".wl[952].w[2]"  1;
	setAttr ".wl[953].w[2]"  1;
	setAttr ".wl[954].w[2]"  1;
	setAttr ".wl[955].w[2]"  1;
	setAttr ".wl[956].w[2]"  1;
	setAttr ".wl[957].w[2]"  1;
	setAttr ".wl[958].w[2]"  1;
	setAttr ".wl[959].w[2]"  1;
	setAttr ".wl[960].w[2]"  1;
	setAttr ".wl[961].w[2]"  1;
	setAttr ".wl[962].w[2]"  1;
	setAttr ".wl[963].w[2]"  1;
	setAttr ".wl[964].w[2]"  1;
	setAttr ".wl[965].w[2]"  1;
	setAttr ".wl[966].w[2]"  1;
	setAttr ".wl[967].w[2]"  1;
	setAttr ".wl[968].w[2]"  1;
	setAttr ".wl[969].w[2]"  1;
	setAttr ".wl[970].w[2]"  1;
	setAttr ".wl[971].w[2]"  1;
	setAttr ".wl[972].w[2]"  1;
	setAttr ".wl[973].w[2]"  1;
	setAttr ".wl[974].w[2]"  1;
	setAttr ".wl[975].w[2]"  1;
	setAttr ".wl[976].w[2]"  1;
	setAttr ".wl[977].w[2]"  1;
	setAttr ".wl[978].w[2]"  1;
	setAttr ".wl[979].w[2]"  1;
	setAttr ".wl[980].w[2]"  1;
	setAttr ".wl[981].w[2]"  1;
	setAttr ".wl[982].w[2]"  1;
	setAttr ".wl[983].w[2]"  1;
	setAttr ".wl[984].w[2]"  1;
	setAttr ".wl[985].w[2]"  1;
	setAttr ".wl[986].w[2]"  1;
	setAttr ".wl[987].w[2]"  1;
	setAttr ".wl[988].w[2]"  1;
	setAttr ".wl[989].w[2]"  1;
	setAttr ".wl[990].w[2]"  1;
	setAttr ".wl[991].w[2]"  1;
	setAttr ".wl[992].w[2]"  1;
	setAttr ".wl[993].w[2]"  1;
	setAttr ".wl[994].w[2]"  1;
	setAttr ".wl[995].w[2]"  1;
	setAttr ".wl[996].w[2]"  1;
	setAttr ".wl[997].w[2]"  1;
	setAttr ".wl[998].w[2]"  1;
	setAttr ".wl[999].w[2]"  1;
	setAttr ".wl[1000].w[2]"  1;
	setAttr ".wl[1001].w[2]"  1;
	setAttr ".wl[1002].w[2]"  1;
	setAttr ".wl[1003].w[2]"  1;
	setAttr ".wl[1004].w[2]"  1;
	setAttr ".wl[1005].w[2]"  1;
	setAttr ".wl[1006].w[2]"  1;
	setAttr ".wl[1007].w[2]"  1;
	setAttr ".wl[1008].w[3]"  1;
	setAttr ".wl[1009].w[3]"  1;
	setAttr ".wl[1010].w[3]"  1;
	setAttr ".wl[1011].w[3]"  1;
	setAttr ".wl[1012].w[3]"  1;
	setAttr ".wl[1013].w[3]"  1;
	setAttr ".wl[1014].w[3]"  1;
	setAttr ".wl[1015].w[3]"  1;
	setAttr ".wl[1016].w[3]"  1;
	setAttr ".wl[1017].w[3]"  1;
	setAttr ".wl[1018].w[3]"  1;
	setAttr ".wl[1019].w[3]"  1;
	setAttr ".wl[1020].w[3]"  1;
	setAttr ".wl[1021].w[3]"  1;
	setAttr ".wl[1022].w[3]"  1;
	setAttr ".wl[1023].w[3]"  1;
	setAttr ".wl[1024].w[3]"  1;
	setAttr ".wl[1025].w[3]"  1;
	setAttr ".wl[1026].w[3]"  1;
	setAttr ".wl[1027].w[3]"  1;
	setAttr ".wl[1028].w[3]"  1;
	setAttr ".wl[1029].w[3]"  1;
	setAttr ".wl[1030].w[3]"  1;
	setAttr ".wl[1031].w[3]"  1;
	setAttr ".wl[1032].w[3]"  1;
	setAttr ".wl[1033].w[3]"  1;
	setAttr ".wl[1034].w[3]"  1;
	setAttr ".wl[1035].w[3]"  1;
	setAttr ".wl[1036].w[3]"  1;
	setAttr ".wl[1037].w[3]"  1;
	setAttr ".wl[1038].w[3]"  1;
	setAttr ".wl[1039].w[3]"  1;
	setAttr ".wl[1040].w[3]"  1;
	setAttr ".wl[1041].w[3]"  1;
	setAttr ".wl[1042].w[3]"  1;
	setAttr ".wl[1043].w[3]"  1;
	setAttr ".wl[1044].w[3]"  1;
	setAttr ".wl[1045].w[3]"  1;
	setAttr ".wl[1046].w[3]"  1;
	setAttr ".wl[1047].w[3]"  1;
	setAttr ".wl[1048].w[3]"  1;
	setAttr ".wl[1049].w[3]"  1;
	setAttr ".wl[1050].w[3]"  1;
	setAttr ".wl[1051].w[3]"  1;
	setAttr ".wl[1052].w[3]"  1;
	setAttr ".wl[1053].w[3]"  1;
	setAttr ".wl[1054].w[3]"  1;
	setAttr ".wl[1055].w[3]"  1;
	setAttr ".wl[1056].w[3]"  1;
	setAttr ".wl[1057].w[3]"  1;
	setAttr ".wl[1058].w[3]"  1;
	setAttr ".wl[1059].w[3]"  1;
	setAttr ".wl[1060].w[3]"  1;
	setAttr ".wl[1061].w[3]"  1;
	setAttr ".wl[1062].w[3]"  1;
	setAttr ".wl[1063].w[3]"  1;
	setAttr ".wl[1064].w[3]"  1;
	setAttr ".wl[1065].w[3]"  1;
	setAttr ".wl[1066].w[3]"  1;
	setAttr ".wl[1067].w[3]"  1;
	setAttr ".wl[1068].w[3]"  1;
	setAttr ".wl[1069].w[3]"  1;
	setAttr ".wl[1070].w[3]"  1;
	setAttr ".wl[1071].w[3]"  1;
	setAttr ".wl[1072].w[3]"  1;
	setAttr ".wl[1073].w[3]"  1;
	setAttr ".wl[1074].w[3]"  1;
	setAttr ".wl[1075].w[3]"  1;
	setAttr ".wl[1076].w[3]"  1;
	setAttr ".wl[1077].w[3]"  1;
	setAttr ".wl[1078].w[3]"  1;
	setAttr ".wl[1079].w[3]"  1;
	setAttr ".wl[1080].w[3]"  1;
	setAttr ".wl[1081].w[3]"  1;
	setAttr ".wl[1082].w[3]"  1;
	setAttr ".wl[1083].w[3]"  1;
	setAttr ".wl[1084].w[3]"  1;
	setAttr ".wl[1085].w[3]"  1;
	setAttr ".wl[1086].w[3]"  1;
	setAttr ".wl[1087].w[3]"  1;
	setAttr ".wl[1088].w[3]"  1;
	setAttr ".wl[1089].w[3]"  1;
	setAttr ".wl[1090].w[3]"  1;
	setAttr ".wl[1091].w[3]"  1;
	setAttr ".wl[1092].w[3]"  1;
	setAttr ".wl[1093].w[3]"  1;
	setAttr ".wl[1094].w[3]"  1;
	setAttr ".wl[1095].w[3]"  1;
	setAttr ".wl[1096].w[3]"  1;
	setAttr ".wl[1097].w[3]"  1;
	setAttr ".wl[1098].w[3]"  1;
	setAttr ".wl[1099].w[3]"  1;
	setAttr ".wl[1100].w[3]"  1;
	setAttr ".wl[1101].w[3]"  1;
	setAttr ".wl[1102].w[3]"  1;
	setAttr ".wl[1103].w[3]"  1;
	setAttr ".wl[1104].w[3]"  1;
	setAttr ".wl[1105].w[3]"  1;
	setAttr ".wl[1106].w[3]"  1;
	setAttr ".wl[1107].w[3]"  1;
	setAttr ".wl[1108].w[3]"  1;
	setAttr ".wl[1109].w[3]"  1;
	setAttr ".wl[1110].w[3]"  1;
	setAttr ".wl[1111].w[3]"  1;
	setAttr ".wl[1112].w[3]"  1;
	setAttr ".wl[1113].w[3]"  1;
	setAttr ".wl[1114].w[3]"  1;
	setAttr ".wl[1115].w[3]"  1;
	setAttr ".wl[1116].w[3]"  1;
	setAttr ".wl[1117].w[3]"  1;
	setAttr ".wl[1118].w[3]"  1;
	setAttr ".wl[1119].w[3]"  1;
	setAttr ".wl[1120].w[3]"  1;
	setAttr ".wl[1121].w[3]"  1;
	setAttr ".wl[1122].w[3]"  1;
	setAttr ".wl[1123].w[3]"  1;
	setAttr ".wl[1124].w[3]"  1;
	setAttr ".wl[1125].w[3]"  1;
	setAttr ".wl[1126].w[3]"  1;
	setAttr ".wl[1127].w[3]"  1;
	setAttr ".wl[1128].w[3]"  1;
	setAttr ".wl[1129].w[3]"  1;
	setAttr ".wl[1130].w[3]"  1;
	setAttr ".wl[1131].w[3]"  1;
	setAttr ".wl[1132].w[3]"  1;
	setAttr ".wl[1133].w[3]"  1;
	setAttr ".wl[1134].w[3]"  1;
	setAttr ".wl[1135].w[3]"  1;
	setAttr ".wl[1136].w[3]"  1;
	setAttr ".wl[1137].w[3]"  1;
	setAttr ".wl[1138].w[3]"  1;
	setAttr ".wl[1139].w[3]"  1;
	setAttr ".wl[1140].w[3]"  1;
	setAttr ".wl[1141].w[3]"  1;
	setAttr ".wl[1142].w[3]"  1;
	setAttr ".wl[1143].w[3]"  1;
	setAttr ".wl[1144].w[3]"  1;
	setAttr ".wl[1145].w[3]"  1;
	setAttr ".wl[1146].w[3]"  1;
	setAttr ".wl[1147].w[3]"  1;
	setAttr ".wl[1148].w[3]"  1;
	setAttr ".wl[1149].w[3]"  1;
	setAttr ".wl[1150].w[3]"  1;
	setAttr ".wl[1151].w[3]"  1;
	setAttr ".wl[1152].w[3]"  1;
	setAttr ".wl[1153].w[3]"  1;
	setAttr ".wl[1154].w[3]"  1;
	setAttr ".wl[1155].w[3]"  1;
	setAttr ".wl[1156].w[3]"  1;
	setAttr ".wl[1157].w[3]"  1;
	setAttr ".wl[1158].w[3]"  1;
	setAttr ".wl[1159].w[3]"  1;
	setAttr ".wl[1160].w[3]"  1;
	setAttr ".wl[1161].w[3]"  1;
	setAttr ".wl[1162].w[3]"  1;
	setAttr ".wl[1163].w[3]"  1;
	setAttr ".wl[1164].w[3]"  1;
	setAttr ".wl[1165].w[3]"  1;
	setAttr ".wl[1166].w[3]"  1;
	setAttr ".wl[1167].w[3]"  1;
	setAttr ".wl[1168].w[3]"  1;
	setAttr ".wl[1169].w[3]"  1;
	setAttr ".wl[1170].w[3]"  1;
	setAttr ".wl[1171].w[3]"  1;
	setAttr ".wl[1172].w[3]"  1;
	setAttr ".wl[1173].w[3]"  1;
	setAttr ".wl[1174].w[3]"  1;
	setAttr ".wl[1175].w[3]"  1;
	setAttr ".wl[1176].w[3]"  1;
	setAttr ".wl[1177].w[3]"  1;
	setAttr ".wl[1178].w[3]"  1;
	setAttr ".wl[1179].w[3]"  1;
	setAttr ".wl[1180].w[3]"  1;
	setAttr ".wl[1181].w[3]"  1;
	setAttr ".wl[1182].w[3]"  1;
	setAttr ".wl[1183].w[3]"  1;
	setAttr ".wl[1184].w[3]"  1;
	setAttr ".wl[1185].w[3]"  1;
	setAttr ".wl[1186].w[3]"  1;
	setAttr ".wl[1187].w[3]"  1;
	setAttr ".wl[1188].w[3]"  1;
	setAttr ".wl[1189].w[3]"  1;
	setAttr ".wl[1190].w[3]"  1;
	setAttr ".wl[1191].w[3]"  1;
	setAttr ".wl[1192].w[3]"  1;
	setAttr ".wl[1193].w[3]"  1;
	setAttr ".wl[1194].w[3]"  1;
	setAttr ".wl[1195].w[3]"  1;
	setAttr ".wl[1196].w[3]"  1;
	setAttr ".wl[1197].w[3]"  1;
	setAttr ".wl[1198].w[3]"  1;
	setAttr ".wl[1199].w[3]"  1;
	setAttr ".wl[1200].w[3]"  1;
	setAttr ".wl[1201].w[3]"  1;
	setAttr ".wl[1202].w[3]"  1;
	setAttr ".wl[1203].w[3]"  1;
	setAttr ".wl[1204].w[3]"  1;
	setAttr ".wl[1205].w[3]"  1;
	setAttr ".wl[1206].w[3]"  1;
	setAttr ".wl[1207].w[3]"  1;
	setAttr ".wl[1208].w[3]"  1;
	setAttr ".wl[1209].w[3]"  1;
	setAttr ".wl[1210].w[3]"  1;
	setAttr ".wl[1211].w[3]"  1;
	setAttr ".wl[1212].w[3]"  1;
	setAttr ".wl[1213].w[3]"  1;
	setAttr ".wl[1214].w[3]"  1;
	setAttr ".wl[1215].w[3]"  1;
	setAttr ".wl[1216].w[3]"  1;
	setAttr ".wl[1217].w[3]"  1;
	setAttr ".wl[1218].w[3]"  1;
	setAttr ".wl[1219].w[3]"  1;
	setAttr ".wl[1220].w[3]"  1;
	setAttr ".wl[1221].w[3]"  1;
	setAttr ".wl[1222].w[3]"  1;
	setAttr ".wl[1223].w[3]"  1;
	setAttr ".wl[1224].w[3]"  1;
	setAttr ".wl[1225].w[3]"  1;
	setAttr ".wl[1226].w[3]"  1;
	setAttr ".wl[1227].w[3]"  1;
	setAttr ".wl[1228].w[3]"  1;
	setAttr ".wl[1229].w[3]"  1;
	setAttr ".wl[1230].w[3]"  1;
	setAttr ".wl[1231].w[3]"  1;
	setAttr ".wl[1232].w[3]"  1;
	setAttr ".wl[1233].w[3]"  1;
	setAttr ".wl[1234].w[3]"  1;
	setAttr ".wl[1235].w[3]"  1;
	setAttr ".wl[1236].w[3]"  1;
	setAttr ".wl[1237].w[3]"  1;
	setAttr ".wl[1238].w[3]"  1;
	setAttr ".wl[1239].w[3]"  1;
	setAttr ".wl[1240].w[3]"  1;
	setAttr ".wl[1241].w[3]"  1;
	setAttr ".wl[1242].w[3]"  1;
	setAttr ".wl[1243].w[3]"  1;
	setAttr ".wl[1244].w[3]"  1;
	setAttr ".wl[1245].w[3]"  1;
	setAttr ".wl[1246].w[3]"  1;
	setAttr ".wl[1247].w[3]"  1;
	setAttr ".wl[1248].w[3]"  1;
	setAttr ".wl[1249].w[3]"  1;
	setAttr ".wl[1250].w[3]"  1;
	setAttr ".wl[1251].w[3]"  1;
	setAttr ".wl[1252].w[3]"  1;
	setAttr ".wl[1253].w[3]"  1;
	setAttr ".wl[1254].w[3]"  1;
	setAttr ".wl[1255].w[3]"  1;
	setAttr ".wl[1256].w[3]"  1;
	setAttr ".wl[1257].w[3]"  1;
	setAttr ".wl[1258].w[3]"  1;
	setAttr ".wl[1259].w[3]"  1;
	setAttr ".wl[1260].w[3]"  1;
	setAttr ".wl[1261].w[3]"  1;
	setAttr ".wl[1262].w[3]"  1;
	setAttr ".wl[1263].w[3]"  1;
	setAttr ".wl[1264].w[3]"  1;
	setAttr ".wl[1265].w[3]"  1;
	setAttr ".wl[1266].w[3]"  1;
	setAttr ".wl[1267].w[3]"  1;
	setAttr ".wl[1268].w[3]"  1;
	setAttr ".wl[1269].w[3]"  1;
	setAttr ".wl[1270].w[3]"  1;
	setAttr ".wl[1271].w[3]"  1;
	setAttr ".wl[1272].w[3]"  1;
	setAttr ".wl[1273].w[3]"  1;
	setAttr ".wl[1274].w[3]"  1;
	setAttr ".wl[1275].w[3]"  1;
	setAttr ".wl[1276].w[3]"  1;
	setAttr ".wl[1277].w[3]"  1;
	setAttr ".wl[1278].w[3]"  1;
	setAttr ".wl[1279].w[3]"  1;
	setAttr ".wl[1280].w[3]"  1;
	setAttr ".wl[1281].w[3]"  1;
	setAttr ".wl[1282].w[3]"  1;
	setAttr ".wl[1283].w[3]"  1;
	setAttr ".wl[1284].w[3]"  1;
	setAttr ".wl[1285].w[3]"  1;
	setAttr ".wl[1286].w[3]"  1;
	setAttr ".wl[1287].w[3]"  1;
	setAttr ".wl[1288].w[3]"  1;
	setAttr ".wl[1289].w[3]"  1;
	setAttr ".wl[1290].w[3]"  1;
	setAttr ".wl[1291].w[3]"  1;
	setAttr ".wl[1292].w[3]"  1;
	setAttr ".wl[1293].w[3]"  1;
	setAttr ".wl[1294].w[3]"  1;
	setAttr ".wl[1295].w[3]"  1;
	setAttr ".wl[1296].w[3]"  1;
	setAttr ".wl[1297].w[3]"  1;
	setAttr ".wl[1298].w[3]"  1;
	setAttr ".wl[1299].w[3]"  1;
	setAttr ".wl[1300].w[3]"  1;
	setAttr ".wl[1301].w[3]"  1;
	setAttr ".wl[1302].w[3]"  1;
	setAttr ".wl[1303].w[3]"  1;
	setAttr ".wl[1304].w[3]"  1;
	setAttr ".wl[1305].w[3]"  1;
	setAttr ".wl[1306].w[3]"  1;
	setAttr ".wl[1307].w[3]"  1;
	setAttr ".wl[1308].w[3]"  1;
	setAttr ".wl[1309].w[3]"  1;
	setAttr ".wl[1310].w[3]"  1;
	setAttr ".wl[1311].w[3]"  1;
	setAttr ".wl[1312].w[3]"  1;
	setAttr ".wl[1313].w[3]"  1;
	setAttr ".wl[1314].w[3]"  1;
	setAttr ".wl[1315].w[3]"  1;
	setAttr ".wl[1316].w[3]"  1;
	setAttr ".wl[1317].w[3]"  1;
	setAttr ".wl[1318].w[3]"  1;
	setAttr ".wl[1319].w[3]"  1;
	setAttr ".wl[1320].w[3]"  1;
	setAttr ".wl[1321].w[3]"  1;
	setAttr ".wl[1322].w[3]"  1;
	setAttr ".wl[1323].w[3]"  1;
	setAttr ".wl[1324].w[3]"  1;
	setAttr ".wl[1325].w[3]"  1;
	setAttr ".wl[1326].w[3]"  1;
	setAttr ".wl[1327].w[3]"  1;
	setAttr ".wl[1328].w[3]"  1;
	setAttr ".wl[1329].w[3]"  1;
	setAttr ".wl[1330].w[3]"  1;
	setAttr ".wl[1331].w[3]"  1;
	setAttr ".wl[1332].w[3]"  1;
	setAttr ".wl[1333].w[3]"  1;
	setAttr ".wl[1334].w[3]"  1;
	setAttr ".wl[1335].w[3]"  1;
	setAttr ".wl[1336].w[3]"  1;
	setAttr ".wl[1337].w[3]"  1;
	setAttr ".wl[1338].w[3]"  1;
	setAttr ".wl[1339].w[3]"  1;
	setAttr ".wl[1340].w[3]"  1;
	setAttr ".wl[1341].w[3]"  1;
	setAttr ".wl[1342].w[3]"  1;
	setAttr ".wl[1343].w[3]"  1;
	setAttr ".wl[1344].w[3]"  1;
	setAttr ".wl[1345].w[3]"  1;
	setAttr ".wl[1346].w[3]"  1;
	setAttr ".wl[1347].w[3]"  1;
	setAttr ".wl[1348].w[3]"  1;
	setAttr ".wl[1349].w[3]"  1;
	setAttr ".wl[1350].w[3]"  1;
	setAttr ".wl[1351].w[3]"  1;
	setAttr ".wl[1352].w[3]"  1;
	setAttr ".wl[1353].w[3]"  1;
	setAttr ".wl[1354].w[3]"  1;
	setAttr ".wl[1355].w[3]"  1;
	setAttr ".wl[1356].w[3]"  1;
	setAttr ".wl[1357].w[3]"  1;
	setAttr ".wl[1358].w[3]"  1;
	setAttr ".wl[1359].w[3]"  1;
	setAttr ".wl[1360].w[3]"  1;
	setAttr ".wl[1361].w[3]"  1;
	setAttr ".wl[1362].w[3]"  1;
	setAttr ".wl[1363].w[3]"  1;
	setAttr ".wl[1364].w[3]"  1;
	setAttr ".wl[1365].w[3]"  1;
	setAttr ".wl[1366].w[3]"  1;
	setAttr ".wl[1367].w[3]"  1;
	setAttr ".wl[1368].w[3]"  1;
	setAttr ".wl[1369].w[3]"  1;
	setAttr ".wl[1370].w[3]"  1;
	setAttr ".wl[1371].w[3]"  1;
	setAttr ".wl[1372].w[3]"  1;
	setAttr ".wl[1373].w[3]"  1;
	setAttr ".wl[1374].w[3]"  1;
	setAttr ".wl[1375].w[3]"  1;
	setAttr ".wl[1376].w[3]"  1;
	setAttr ".wl[1377].w[3]"  1;
	setAttr ".wl[1378].w[3]"  1;
	setAttr ".wl[1379].w[3]"  1;
	setAttr ".wl[1380].w[3]"  1;
	setAttr ".wl[1381].w[3]"  1;
	setAttr ".wl[1382].w[3]"  1;
	setAttr ".wl[1383].w[3]"  1;
	setAttr ".wl[1384].w[3]"  1;
	setAttr ".wl[1385].w[3]"  1;
	setAttr ".wl[1386].w[3]"  1;
	setAttr ".wl[1387].w[3]"  1;
	setAttr ".wl[1388].w[3]"  1;
	setAttr ".wl[1389].w[3]"  1;
	setAttr ".wl[1390].w[2]"  1;
	setAttr ".wl[1391].w[2]"  1;
	setAttr ".wl[1392].w[2]"  1;
	setAttr ".wl[1393].w[2]"  1;
	setAttr ".wl[1394].w[2]"  1;
	setAttr ".wl[1395].w[2]"  1;
	setAttr ".wl[1396].w[2]"  1;
	setAttr ".wl[1397].w[2]"  1;
	setAttr ".wl[1398].w[2]"  1;
	setAttr ".wl[1399].w[2]"  1;
	setAttr ".wl[1400].w[2]"  1;
	setAttr ".wl[1401].w[2]"  1;
	setAttr ".wl[1402].w[2]"  1;
	setAttr ".wl[1403].w[2]"  1;
	setAttr ".wl[1404].w[2]"  1;
	setAttr ".wl[1405].w[2]"  1;
	setAttr ".wl[1406].w[2]"  1;
	setAttr ".wl[1407].w[2]"  1;
	setAttr ".wl[1408].w[2]"  1;
	setAttr ".wl[1409].w[2]"  1;
	setAttr ".wl[1410].w[2]"  1;
	setAttr ".wl[1411].w[2]"  1;
	setAttr ".wl[1412].w[2]"  1;
	setAttr ".wl[1413].w[2]"  1;
	setAttr ".wl[1414].w[2]"  1;
	setAttr ".wl[1415].w[2]"  1;
	setAttr ".wl[1416].w[2]"  1;
	setAttr ".wl[1417].w[2]"  1;
	setAttr ".wl[1418].w[2]"  1;
	setAttr ".wl[1419].w[2]"  1;
	setAttr ".wl[1420].w[2]"  1;
	setAttr ".wl[1421].w[2]"  1;
	setAttr ".wl[1422].w[2]"  1;
	setAttr ".wl[1423].w[2]"  1;
	setAttr ".wl[1424].w[2]"  1;
	setAttr ".wl[1425].w[2]"  1;
	setAttr ".wl[1426].w[2]"  1;
	setAttr ".wl[1427].w[2]"  1;
	setAttr ".wl[1428].w[2]"  1;
	setAttr ".wl[1429].w[2]"  1;
	setAttr ".wl[1430].w[2]"  1;
	setAttr ".wl[1431].w[2]"  1;
	setAttr ".wl[1432].w[2]"  1;
	setAttr ".wl[1433].w[2]"  1;
	setAttr ".wl[1434].w[2]"  1;
	setAttr ".wl[1435].w[2]"  1;
	setAttr ".wl[1436].w[2]"  1;
	setAttr ".wl[1437].w[2]"  1;
	setAttr ".wl[1438].w[2]"  1;
	setAttr ".wl[1439].w[2]"  1;
	setAttr ".wl[1440].w[2]"  1;
	setAttr ".wl[1441].w[2]"  1;
	setAttr ".wl[1442].w[2]"  1;
	setAttr ".wl[1443].w[2]"  1;
	setAttr ".wl[1444].w[2]"  1;
	setAttr ".wl[1445].w[2]"  1;
	setAttr ".wl[1446].w[2]"  1;
	setAttr ".wl[1447].w[2]"  1;
	setAttr ".wl[1448].w[2]"  1;
	setAttr ".wl[1449].w[2]"  1;
	setAttr ".wl[1450].w[2]"  1;
	setAttr ".wl[1451].w[2]"  1;
	setAttr ".wl[1452].w[2]"  1;
	setAttr ".wl[1453].w[2]"  1;
	setAttr ".wl[1454].w[2]"  1;
	setAttr ".wl[1455].w[2]"  1;
	setAttr ".wl[1456].w[2]"  1;
	setAttr ".wl[1457].w[2]"  1;
	setAttr ".wl[1458].w[2]"  1;
	setAttr ".wl[1459].w[2]"  1;
	setAttr ".wl[1460].w[2]"  1;
	setAttr ".wl[1461].w[2]"  1;
	setAttr ".wl[1462].w[2]"  1;
	setAttr ".wl[1463].w[2]"  1;
	setAttr ".wl[1464].w[2]"  1;
	setAttr ".wl[1465].w[2]"  1;
	setAttr ".wl[1466].w[2]"  1;
	setAttr ".wl[1467].w[2]"  1;
	setAttr ".wl[1468].w[2]"  1;
	setAttr ".wl[1469].w[2]"  1;
	setAttr ".wl[1470].w[2]"  1;
	setAttr ".wl[1471].w[2]"  1;
	setAttr ".wl[1472].w[2]"  1;
	setAttr ".wl[1473].w[2]"  1;
	setAttr ".wl[1474].w[2]"  1;
	setAttr ".wl[1475].w[2]"  1;
	setAttr ".wl[1476].w[2]"  1;
	setAttr ".wl[1477].w[2]"  1;
	setAttr ".wl[1478].w[2]"  1;
	setAttr ".wl[1479].w[2]"  1;
	setAttr ".wl[1480].w[2]"  1;
	setAttr ".wl[1481].w[2]"  1;
	setAttr ".wl[1482].w[2]"  1;
	setAttr ".wl[1483].w[2]"  1;
	setAttr ".wl[1484].w[2]"  1;
	setAttr ".wl[1485].w[2]"  1;
	setAttr ".wl[1486].w[2]"  1;
	setAttr ".wl[1487].w[2]"  1;
	setAttr ".wl[1488].w[2]"  1;
	setAttr ".wl[1489].w[2]"  1;
	setAttr ".wl[1490].w[2]"  1;
	setAttr ".wl[1491].w[2]"  1;
	setAttr ".wl[1492].w[2]"  1;
	setAttr ".wl[1493].w[2]"  1;
	setAttr ".wl[1494].w[2]"  1;
	setAttr ".wl[1495].w[2]"  1;
	setAttr ".wl[1496].w[2]"  1;
	setAttr ".wl[1497].w[2]"  1;
	setAttr ".wl[1498].w[2]"  1;
	setAttr ".wl[1499].w[2]"  1;
	setAttr ".wl[1500].w[2]"  1;
	setAttr ".wl[1501].w[2]"  1;
	setAttr ".wl[1502].w[2]"  1;
	setAttr ".wl[1503].w[2]"  1;
	setAttr ".wl[1504].w[2]"  1;
	setAttr ".wl[1505].w[2]"  1;
	setAttr ".wl[1506].w[2]"  1;
	setAttr ".wl[1507].w[2]"  1;
	setAttr ".wl[1508].w[2]"  1;
	setAttr ".wl[1509].w[2]"  1;
	setAttr ".wl[1510].w[2]"  1;
	setAttr ".wl[1511].w[2]"  1;
	setAttr ".wl[1512].w[2]"  1;
	setAttr ".wl[1513].w[2]"  1;
	setAttr ".wl[1514].w[2]"  1;
	setAttr ".wl[1515].w[2]"  1;
	setAttr ".wl[1516].w[2]"  1;
	setAttr ".wl[1517].w[2]"  1;
	setAttr ".wl[1518].w[2]"  1;
	setAttr ".wl[1519].w[2]"  1;
	setAttr ".wl[1520].w[2]"  1;
	setAttr ".wl[1521].w[2]"  1;
	setAttr ".wl[1522].w[2]"  1;
	setAttr ".wl[1523].w[2]"  1;
	setAttr ".wl[1524].w[2]"  1;
	setAttr ".wl[1525].w[2]"  1;
	setAttr ".wl[1526].w[2]"  1;
	setAttr ".wl[1527].w[2]"  1;
	setAttr ".wl[1528].w[2]"  1;
	setAttr ".wl[1529].w[2]"  1;
	setAttr ".wl[1530].w[2]"  1;
	setAttr ".wl[1531].w[2]"  1;
	setAttr ".wl[1532].w[2]"  1;
	setAttr ".wl[1533].w[2]"  1;
	setAttr ".wl[1534].w[2]"  1;
	setAttr ".wl[1535].w[2]"  1;
	setAttr ".wl[1536].w[2]"  1;
	setAttr ".wl[1537].w[2]"  1;
	setAttr ".wl[1538].w[2]"  1;
	setAttr ".wl[1539].w[2]"  1;
	setAttr ".wl[1540].w[2]"  1;
	setAttr ".wl[1541].w[2]"  1;
	setAttr ".wl[1542].w[2]"  1;
	setAttr ".wl[1543].w[2]"  1;
	setAttr ".wl[1544].w[2]"  1;
	setAttr ".wl[1545].w[2]"  1;
	setAttr ".wl[1546].w[2]"  1;
	setAttr ".wl[1547].w[2]"  1;
	setAttr ".wl[1548].w[2]"  1;
	setAttr ".wl[1549].w[2]"  1;
	setAttr ".wl[1550].w[2]"  1;
	setAttr ".wl[1551].w[2]"  1;
	setAttr ".wl[1552].w[2]"  1;
	setAttr ".wl[1553].w[2]"  1;
	setAttr ".wl[1554].w[2]"  1;
	setAttr ".wl[1555].w[2]"  1;
	setAttr ".wl[1556].w[2]"  1;
	setAttr ".wl[1557].w[2]"  1;
	setAttr ".wl[1558].w[2]"  1;
	setAttr ".wl[1559].w[2]"  1;
	setAttr ".wl[1560].w[2]"  1;
	setAttr ".wl[1561].w[2]"  1;
	setAttr ".wl[1562].w[2]"  1;
	setAttr ".wl[1563].w[2]"  1;
	setAttr ".wl[1564].w[2]"  1;
	setAttr ".wl[1565].w[2]"  1;
	setAttr ".wl[1566].w[2]"  1;
	setAttr ".wl[1567].w[2]"  1;
	setAttr ".wl[1568].w[2]"  1;
	setAttr ".wl[1569].w[2]"  1;
	setAttr ".wl[1570].w[2]"  1;
	setAttr ".wl[1571].w[2]"  1;
	setAttr ".wl[1572].w[2]"  1;
	setAttr ".wl[1573].w[2]"  1;
	setAttr ".wl[1574].w[2]"  1;
	setAttr ".wl[1575].w[2]"  1;
	setAttr ".wl[1576].w[2]"  1;
	setAttr ".wl[1577].w[2]"  1;
	setAttr ".wl[1578].w[2]"  1;
	setAttr ".wl[1579].w[2]"  1;
	setAttr ".wl[1580].w[2]"  1;
	setAttr ".wl[1581].w[2]"  1;
	setAttr ".wl[1582].w[2]"  1;
	setAttr ".wl[1583].w[2]"  1;
	setAttr ".wl[1584].w[2]"  1;
	setAttr ".wl[1585].w[2]"  1;
	setAttr ".wl[1586].w[2]"  1;
	setAttr ".wl[1587].w[2]"  1;
	setAttr ".wl[1588].w[2]"  1;
	setAttr ".wl[1589].w[2]"  1;
	setAttr ".wl[1590].w[2]"  1;
	setAttr ".wl[1591].w[2]"  1;
	setAttr ".wl[1592].w[2]"  1;
	setAttr ".wl[1593].w[2]"  1;
	setAttr ".wl[1594].w[2]"  1;
	setAttr ".wl[1595].w[2]"  1;
	setAttr ".wl[1596].w[2]"  1;
	setAttr ".wl[1597].w[2]"  1;
	setAttr ".wl[1598].w[2]"  1;
	setAttr ".wl[1599].w[2]"  1;
	setAttr ".wl[1600].w[2]"  1;
	setAttr ".wl[1601].w[2]"  1;
	setAttr ".wl[1602].w[2]"  1;
	setAttr ".wl[1603].w[2]"  1;
	setAttr ".wl[1604].w[2]"  1;
	setAttr ".wl[1605].w[2]"  1;
	setAttr ".wl[1606].w[2]"  1;
	setAttr ".wl[1607].w[2]"  1;
	setAttr ".wl[1608].w[2]"  1;
	setAttr ".wl[1609].w[2]"  1;
	setAttr ".wl[1610].w[2]"  1;
	setAttr ".wl[1611].w[2]"  1;
	setAttr ".wl[1612].w[2]"  1;
	setAttr ".wl[1613].w[2]"  1;
	setAttr ".wl[1614].w[2]"  1;
	setAttr ".wl[1615].w[2]"  1;
	setAttr ".wl[1616].w[2]"  1;
	setAttr ".wl[1617].w[2]"  1;
	setAttr ".wl[1618].w[2]"  1;
	setAttr ".wl[1619].w[2]"  1;
	setAttr ".wl[1620].w[2]"  1;
	setAttr ".wl[1621].w[2]"  1;
	setAttr ".wl[1622].w[2]"  1;
	setAttr ".wl[1623].w[2]"  1;
	setAttr ".wl[1624].w[2]"  1;
	setAttr ".wl[1625].w[2]"  1;
	setAttr ".wl[1626].w[2]"  1;
	setAttr ".wl[1627].w[2]"  1;
	setAttr ".wl[1628].w[2]"  1;
	setAttr ".wl[1629].w[2]"  1;
	setAttr ".wl[1630].w[2]"  1;
	setAttr ".wl[1631].w[2]"  1;
	setAttr ".wl[1632].w[2]"  1;
	setAttr ".wl[1633].w[2]"  1;
	setAttr ".wl[1634].w[2]"  1;
	setAttr ".wl[1635].w[2]"  1;
	setAttr ".wl[1636].w[2]"  1;
	setAttr ".wl[1637].w[2]"  1;
	setAttr ".wl[1638].w[2]"  1;
	setAttr ".wl[1639].w[2]"  1;
	setAttr ".wl[1640].w[2]"  1;
	setAttr ".wl[1641].w[2]"  1;
	setAttr ".wl[1642].w[2]"  1;
	setAttr ".wl[1643].w[2]"  1;
	setAttr ".wl[1644].w[2]"  1;
	setAttr ".wl[1645].w[2]"  1;
	setAttr ".wl[1646].w[2]"  1;
	setAttr ".wl[1647].w[2]"  1;
	setAttr ".wl[1648].w[2]"  1;
	setAttr ".wl[1649].w[2]"  1;
	setAttr ".wl[1650].w[2]"  1;
	setAttr ".wl[1651].w[2]"  1;
	setAttr ".wl[1652].w[2]"  1;
	setAttr ".wl[1653].w[2]"  1;
	setAttr ".wl[1654].w[2]"  1;
	setAttr ".wl[1655].w[2]"  1;
	setAttr ".wl[1656].w[2]"  1;
	setAttr ".wl[1657].w[2]"  1;
	setAttr ".wl[1658].w[2]"  1;
	setAttr ".wl[1659].w[2]"  1;
	setAttr ".wl[1660].w[2]"  1;
	setAttr ".wl[1661].w[2]"  1;
	setAttr ".wl[1662].w[2]"  1;
	setAttr ".wl[1663].w[2]"  1;
	setAttr ".wl[1664].w[2]"  1;
	setAttr ".wl[1665].w[2]"  1;
	setAttr ".wl[1666].w[2]"  1;
	setAttr ".wl[1667].w[2]"  1;
	setAttr ".wl[1668].w[2]"  1;
	setAttr ".wl[1669].w[2]"  1;
	setAttr ".wl[1670].w[2]"  1;
	setAttr ".wl[1671].w[2]"  1;
	setAttr ".wl[1672].w[2]"  1;
	setAttr ".wl[1673].w[2]"  1;
	setAttr ".wl[1674].w[2]"  1;
	setAttr ".wl[1675].w[2]"  1;
	setAttr ".wl[1676].w[2]"  1;
	setAttr ".wl[1677].w[2]"  1;
	setAttr ".wl[1678].w[2]"  1;
	setAttr ".wl[1679].w[2]"  1;
	setAttr ".wl[1680].w[2]"  1;
	setAttr ".wl[1681].w[2]"  1;
	setAttr ".wl[1682].w[2]"  1;
	setAttr ".wl[1683].w[2]"  1;
	setAttr ".wl[1684].w[2]"  1;
	setAttr ".wl[1685].w[2]"  1;
	setAttr ".wl[1686].w[2]"  1;
	setAttr ".wl[1687].w[2]"  1;
	setAttr ".wl[1688].w[2]"  1;
	setAttr ".wl[1689].w[2]"  1;
	setAttr ".wl[1690].w[2]"  1;
	setAttr ".wl[1691].w[2]"  1;
	setAttr ".wl[1692].w[2]"  1;
	setAttr ".wl[1693].w[2]"  1;
	setAttr ".wl[1694].w[2]"  1;
	setAttr ".wl[1695].w[2]"  1;
	setAttr ".wl[1696].w[2]"  1;
	setAttr ".wl[1697].w[2]"  1;
	setAttr ".wl[1698].w[2]"  1;
	setAttr ".wl[1699].w[2]"  1;
	setAttr ".wl[1700].w[2]"  1;
	setAttr ".wl[1701].w[2]"  1;
	setAttr ".wl[1702].w[2]"  1;
	setAttr ".wl[1703].w[2]"  1;
	setAttr ".wl[1704].w[2]"  1;
	setAttr ".wl[1705].w[2]"  1;
	setAttr ".wl[1706].w[2]"  1;
	setAttr ".wl[1707].w[2]"  1;
	setAttr ".wl[1708].w[2]"  1;
	setAttr ".wl[1709].w[2]"  1;
	setAttr ".wl[1710].w[2]"  1;
	setAttr ".wl[1711].w[2]"  1;
	setAttr ".wl[1712].w[2]"  1;
	setAttr ".wl[1713].w[2]"  1;
	setAttr ".wl[1714].w[2]"  1;
	setAttr ".wl[1715].w[2]"  1;
	setAttr ".wl[1716].w[2]"  1;
	setAttr ".wl[1717].w[2]"  1;
	setAttr ".wl[1718].w[2]"  1;
	setAttr ".wl[1719].w[2]"  1;
	setAttr ".wl[1720].w[2]"  1;
	setAttr ".wl[1721].w[2]"  1;
	setAttr ".wl[1722].w[2]"  1;
	setAttr ".wl[1723].w[2]"  1;
	setAttr ".wl[1724].w[2]"  1;
	setAttr ".wl[1725].w[2]"  1;
	setAttr ".wl[1726].w[2]"  1;
	setAttr ".wl[1727].w[2]"  1;
	setAttr ".wl[1728].w[2]"  1;
	setAttr ".wl[1729].w[2]"  1;
	setAttr ".wl[1730].w[2]"  1;
	setAttr ".wl[1731].w[2]"  1;
	setAttr ".wl[1732].w[2]"  1;
	setAttr ".wl[1733].w[2]"  1;
	setAttr ".wl[1734].w[2]"  1;
	setAttr ".wl[1735].w[2]"  1;
	setAttr ".wl[1736].w[2]"  1;
	setAttr ".wl[1737].w[2]"  1;
	setAttr ".wl[1738].w[2]"  1;
	setAttr ".wl[1739].w[2]"  1;
	setAttr ".wl[1740].w[2]"  1;
	setAttr ".wl[1741].w[2]"  1;
	setAttr ".wl[1742].w[2]"  1;
	setAttr ".wl[1743].w[2]"  1;
	setAttr ".wl[1744].w[2]"  1;
	setAttr ".wl[1745].w[2]"  1;
	setAttr ".wl[1746].w[2]"  1;
	setAttr ".wl[1747].w[2]"  1;
	setAttr ".wl[1748].w[2]"  1;
	setAttr ".wl[1749].w[2]"  1;
	setAttr ".wl[1750].w[2]"  1;
	setAttr ".wl[1751].w[2]"  1;
	setAttr ".wl[1752].w[2]"  1;
	setAttr ".wl[1753].w[2]"  1;
	setAttr ".wl[1754].w[2]"  1;
	setAttr ".wl[1755].w[2]"  1;
	setAttr ".wl[1756].w[2]"  1;
	setAttr ".wl[1757].w[2]"  1;
	setAttr ".wl[1758].w[2]"  1;
	setAttr ".wl[1759].w[2]"  1;
	setAttr ".wl[1760].w[2]"  1;
	setAttr ".wl[1761].w[2]"  1;
	setAttr ".wl[1762].w[2]"  1;
	setAttr ".wl[1763].w[2]"  1;
	setAttr ".wl[1764].w[2]"  1;
	setAttr ".wl[1765].w[2]"  1;
	setAttr ".wl[1766].w[2]"  1;
	setAttr ".wl[1767].w[2]"  1;
	setAttr ".wl[1768].w[2]"  1;
	setAttr ".wl[1769].w[2]"  1;
	setAttr ".wl[1770].w[2]"  1;
	setAttr ".wl[1771].w[2]"  1;
	setAttr ".wl[1772].w[2]"  1;
	setAttr ".wl[1773].w[2]"  1;
	setAttr ".wl[1774].w[2]"  1;
	setAttr ".wl[1775].w[2]"  1;
	setAttr ".wl[1776].w[2]"  1;
	setAttr ".wl[1777].w[2]"  1;
	setAttr ".wl[1778].w[2]"  1;
	setAttr ".wl[1779].w[2]"  1;
	setAttr ".wl[1780].w[2]"  1;
	setAttr ".wl[1781].w[2]"  1;
	setAttr ".wl[1782].w[2]"  1;
	setAttr ".wl[1783].w[2]"  1;
	setAttr ".wl[1784].w[2]"  1;
	setAttr ".wl[1785].w[2]"  1;
	setAttr ".wl[1786].w[2]"  1;
	setAttr ".wl[1787].w[2]"  1;
	setAttr ".wl[1788].w[2]"  1;
	setAttr ".wl[1789].w[2]"  1;
	setAttr ".wl[1790].w[2]"  1;
	setAttr ".wl[1791].w[2]"  1;
	setAttr ".wl[1792].w[2]"  1;
	setAttr ".wl[1793].w[2]"  1;
	setAttr ".wl[1794].w[2]"  1;
	setAttr ".wl[1795].w[2]"  1;
	setAttr ".wl[1796].w[2]"  1;
	setAttr ".wl[1797].w[2]"  1;
	setAttr ".wl[1798].w[2]"  1;
	setAttr ".wl[1799].w[2]"  1;
	setAttr ".wl[1800].w[2]"  1;
	setAttr ".wl[1801].w[2]"  1;
	setAttr ".wl[1802].w[2]"  1;
	setAttr ".wl[1803].w[2]"  1;
	setAttr ".wl[1804].w[2]"  1;
	setAttr ".wl[1805].w[2]"  1;
	setAttr ".wl[1806].w[2]"  1;
	setAttr ".wl[1807].w[2]"  1;
	setAttr ".wl[1808].w[2]"  1;
	setAttr ".wl[1809].w[2]"  1;
	setAttr ".wl[1810].w[2]"  1;
	setAttr ".wl[1811].w[2]"  1;
	setAttr ".wl[1812].w[2]"  1;
	setAttr ".wl[1813].w[2]"  1;
	setAttr ".wl[1814].w[2]"  1;
	setAttr ".wl[1815].w[2]"  1;
	setAttr ".wl[1816].w[2]"  1;
	setAttr ".wl[1817].w[2]"  1;
	setAttr ".wl[1818].w[2]"  1;
	setAttr ".wl[1819].w[2]"  1;
	setAttr ".wl[1820].w[2]"  1;
	setAttr ".wl[1821].w[2]"  1;
	setAttr ".wl[1822].w[2]"  1;
	setAttr ".wl[1823].w[2]"  1;
	setAttr ".wl[1824].w[2]"  1;
	setAttr ".wl[1825].w[2]"  1;
	setAttr ".wl[1826].w[2]"  1;
	setAttr ".wl[1827].w[2]"  1;
	setAttr ".wl[1828].w[2]"  1;
	setAttr ".wl[1829].w[2]"  1;
	setAttr ".wl[1830].w[2]"  1;
	setAttr ".wl[1831].w[2]"  1;
	setAttr ".wl[1832].w[2]"  1;
	setAttr ".wl[1833].w[2]"  1;
	setAttr ".wl[1834].w[2]"  1;
	setAttr ".wl[1835].w[2]"  1;
	setAttr ".wl[1836].w[2]"  1;
	setAttr ".wl[1837].w[2]"  1;
	setAttr ".wl[1838].w[2]"  1;
	setAttr ".wl[1839].w[2]"  1;
	setAttr ".wl[1840].w[2]"  1;
	setAttr ".wl[1841].w[2]"  1;
	setAttr ".wl[1842].w[2]"  1;
	setAttr ".wl[1843].w[2]"  1;
	setAttr ".wl[1844].w[2]"  1;
	setAttr ".wl[1845].w[2]"  1;
	setAttr ".wl[1846].w[2]"  1;
	setAttr ".wl[1847].w[2]"  1;
	setAttr ".wl[1848].w[2]"  1;
	setAttr ".wl[1849].w[2]"  1;
	setAttr ".wl[1850].w[2]"  1;
	setAttr ".wl[1851].w[2]"  1;
	setAttr ".wl[1852].w[2]"  1;
	setAttr ".wl[1853].w[2]"  1;
	setAttr ".wl[1854].w[2]"  1;
	setAttr ".wl[1855].w[2]"  1;
	setAttr ".wl[1856].w[2]"  1;
	setAttr ".wl[1857].w[2]"  1;
	setAttr ".wl[1858].w[2]"  1;
	setAttr ".wl[1859].w[2]"  1;
	setAttr ".wl[1860].w[2]"  1;
	setAttr ".wl[1861].w[2]"  1;
	setAttr ".wl[1862].w[2]"  1;
	setAttr ".wl[1863].w[2]"  1;
	setAttr ".wl[1864].w[2]"  1;
	setAttr ".wl[1865].w[2]"  1;
	setAttr ".wl[1866].w[2]"  1;
	setAttr ".wl[1867].w[2]"  1;
	setAttr ".wl[1868].w[2]"  1;
	setAttr ".wl[1869].w[2]"  1;
	setAttr ".wl[1870].w[2]"  1;
	setAttr ".wl[1871].w[2]"  1;
	setAttr ".wl[1872].w[2]"  1;
	setAttr ".wl[1873].w[2]"  1;
	setAttr ".wl[1874].w[2]"  1;
	setAttr ".wl[1875].w[2]"  1;
	setAttr ".wl[1876].w[2]"  1;
	setAttr ".wl[1877].w[2]"  1;
	setAttr ".wl[1878].w[2]"  1;
	setAttr ".wl[1879].w[2]"  1;
	setAttr ".wl[1880].w[2]"  1;
	setAttr ".wl[1881].w[2]"  1;
	setAttr ".wl[1882].w[2]"  1;
	setAttr ".wl[1883].w[2]"  1;
	setAttr ".wl[1884].w[2]"  1;
	setAttr ".wl[1885].w[2]"  1;
	setAttr ".wl[1886].w[2]"  1;
	setAttr ".wl[1887].w[2]"  1;
	setAttr ".wl[1888].w[2]"  1;
	setAttr ".wl[1889].w[2]"  1;
	setAttr ".wl[1890].w[2]"  1;
	setAttr ".wl[1891].w[2]"  1;
	setAttr ".wl[1892].w[2]"  1;
	setAttr ".wl[1893].w[2]"  1;
	setAttr ".wl[1894].w[2]"  1;
	setAttr ".wl[1895].w[2]"  1;
	setAttr ".wl[1896].w[2]"  1;
	setAttr ".wl[1897].w[2]"  1;
	setAttr ".wl[1898].w[2]"  1;
	setAttr ".wl[1899].w[2]"  1;
	setAttr ".wl[1900].w[2]"  1;
	setAttr ".wl[1901].w[2]"  1;
	setAttr ".wl[1902].w[2]"  1;
	setAttr ".wl[1903].w[2]"  1;
	setAttr ".wl[1904].w[2]"  1;
	setAttr ".wl[1905].w[2]"  1;
	setAttr ".wl[1906].w[2]"  1;
	setAttr ".wl[1907].w[2]"  1;
	setAttr ".wl[1908].w[2]"  1;
	setAttr ".wl[1909].w[2]"  1;
	setAttr ".wl[1910].w[2]"  1;
	setAttr ".wl[1911].w[2]"  1;
	setAttr ".wl[1912].w[2]"  1;
	setAttr ".wl[1913].w[2]"  1;
	setAttr ".wl[1914].w[2]"  1;
	setAttr ".wl[1915].w[2]"  1;
	setAttr ".wl[1916].w[2]"  1;
	setAttr ".wl[1917].w[2]"  1;
	setAttr ".wl[1918].w[2]"  1;
	setAttr ".wl[1919].w[2]"  1;
	setAttr ".wl[1920].w[2]"  1;
	setAttr ".wl[1921].w[2]"  1;
	setAttr ".wl[1922].w[2]"  1;
	setAttr ".wl[1923].w[2]"  1;
	setAttr ".wl[1924].w[2]"  1;
	setAttr ".wl[1925].w[2]"  1;
	setAttr ".wl[1926].w[2]"  1;
	setAttr ".wl[1927].w[2]"  1;
	setAttr ".wl[1928].w[2]"  1;
	setAttr ".wl[1929].w[2]"  1;
	setAttr ".wl[1930].w[2]"  1;
	setAttr ".wl[1931].w[2]"  1;
	setAttr ".wl[1932].w[2]"  1;
	setAttr ".wl[1933].w[2]"  1;
	setAttr ".wl[1934].w[2]"  1;
	setAttr ".wl[1935].w[2]"  1;
	setAttr ".wl[1936].w[2]"  1;
	setAttr ".wl[1937].w[2]"  1;
	setAttr ".wl[1938].w[2]"  1;
	setAttr ".wl[1939].w[2]"  1;
	setAttr ".wl[1940].w[2]"  1;
	setAttr ".wl[1941].w[2]"  1;
	setAttr ".wl[1942].w[2]"  1;
	setAttr ".wl[1943].w[2]"  1;
	setAttr ".wl[1944].w[2]"  1;
	setAttr ".wl[1945].w[2]"  1;
	setAttr ".wl[1946].w[2]"  1;
	setAttr ".wl[1947].w[2]"  1;
	setAttr ".wl[1948].w[2]"  1;
	setAttr ".wl[1949].w[2]"  1;
	setAttr ".wl[1950].w[2]"  1;
	setAttr ".wl[1951].w[2]"  1;
	setAttr ".wl[1952].w[2]"  1;
	setAttr ".wl[1953].w[2]"  1;
	setAttr ".wl[1954].w[2]"  1;
	setAttr ".wl[1955].w[2]"  1;
	setAttr ".wl[1956].w[2]"  1;
	setAttr ".wl[1957].w[2]"  1;
	setAttr ".wl[1958].w[2]"  1;
	setAttr ".wl[1959].w[2]"  1;
	setAttr ".wl[1960].w[2]"  1;
	setAttr ".wl[1961].w[2]"  1;
	setAttr ".wl[1962].w[2]"  1;
	setAttr ".wl[1963].w[2]"  1;
	setAttr ".wl[1964].w[2]"  1;
	setAttr ".wl[1965].w[2]"  1;
	setAttr ".wl[1966].w[2]"  1;
	setAttr ".wl[1967].w[2]"  1;
	setAttr ".wl[1968].w[2]"  1;
	setAttr ".wl[1969].w[2]"  1;
	setAttr ".wl[1970].w[2]"  1;
	setAttr ".wl[1971].w[2]"  1;
	setAttr ".wl[1972].w[2]"  1;
	setAttr ".wl[1973].w[2]"  1;
	setAttr ".wl[1974].w[2]"  1;
	setAttr ".wl[1975].w[2]"  1;
	setAttr ".wl[1976].w[2]"  1;
	setAttr ".wl[1977].w[2]"  1;
	setAttr ".wl[1978].w[2]"  1;
	setAttr ".wl[1979].w[2]"  1;
	setAttr ".wl[1980].w[2]"  1;
	setAttr ".wl[1981].w[2]"  1;
	setAttr ".wl[1982].w[2]"  1;
	setAttr ".wl[1983].w[2]"  1;
	setAttr ".wl[1984].w[2]"  1;
	setAttr ".wl[1985].w[2]"  1;
	setAttr ".wl[1986].w[2]"  1;
	setAttr ".wl[1987].w[2]"  1;
	setAttr ".wl[1988].w[2]"  1;
	setAttr ".wl[1989].w[2]"  1;
	setAttr ".wl[1990].w[2]"  1;
	setAttr ".wl[1991].w[2]"  1;
	setAttr ".wl[1992].w[2]"  1;
	setAttr ".wl[1993].w[2]"  1;
	setAttr ".wl[1994].w[2]"  1;
	setAttr ".wl[1995].w[2]"  1;
	setAttr ".wl[1996].w[2]"  1;
	setAttr ".wl[1997].w[2]"  1;
	setAttr ".wl[1998].w[2]"  1;
	setAttr ".wl[1999].w[2]"  1;
	setAttr ".wl[2000].w[2]"  1;
	setAttr ".wl[2001].w[2]"  1;
	setAttr ".wl[2002].w[2]"  1;
	setAttr ".wl[2003].w[2]"  1;
	setAttr ".wl[2004].w[2]"  1;
	setAttr ".wl[2005].w[2]"  1;
	setAttr ".wl[2006].w[2]"  1;
	setAttr ".wl[2007].w[2]"  1;
	setAttr ".wl[2008].w[2]"  1;
	setAttr ".wl[2009].w[2]"  1;
	setAttr ".wl[2010].w[2]"  1;
	setAttr ".wl[2011].w[2]"  1;
	setAttr ".wl[2012].w[2]"  1;
	setAttr ".wl[2013].w[2]"  1;
	setAttr ".wl[2014].w[2]"  1;
	setAttr ".wl[2015].w[2]"  1;
	setAttr ".wl[2016].w[2]"  1;
	setAttr ".wl[2017].w[2]"  1;
	setAttr ".wl[2018].w[2]"  1;
	setAttr ".wl[2019].w[2]"  1;
	setAttr ".wl[2020].w[2]"  1;
	setAttr ".wl[2021].w[2]"  1;
	setAttr ".wl[2022].w[2]"  1;
	setAttr ".wl[2023].w[2]"  1;
	setAttr ".wl[2024].w[2]"  1;
	setAttr ".wl[2025].w[2]"  1;
	setAttr ".wl[2026].w[2]"  1;
	setAttr ".wl[2027].w[2]"  1;
	setAttr ".wl[2028].w[2]"  1;
	setAttr ".wl[2029].w[2]"  1;
	setAttr ".wl[2030].w[2]"  1;
	setAttr ".wl[2031].w[2]"  1;
	setAttr ".wl[2032].w[2]"  1;
	setAttr ".wl[2033].w[2]"  1;
	setAttr ".wl[2034].w[2]"  1;
	setAttr ".wl[2035].w[2]"  1;
	setAttr ".wl[2036].w[2]"  1;
	setAttr ".wl[2037].w[2]"  1;
	setAttr ".wl[2038].w[2]"  1;
	setAttr ".wl[2039].w[2]"  1;
	setAttr ".wl[2040].w[2]"  1;
	setAttr ".wl[2041].w[2]"  1;
	setAttr ".wl[2042].w[2]"  1;
	setAttr ".wl[2043].w[2]"  1;
	setAttr ".wl[2044].w[2]"  1;
	setAttr ".wl[2045].w[2]"  1;
	setAttr ".wl[2046].w[2]"  1;
	setAttr ".wl[2047].w[2]"  1;
	setAttr ".wl[2048].w[2]"  1;
	setAttr ".wl[2049].w[2]"  1;
	setAttr ".wl[2050].w[2]"  1;
	setAttr ".wl[2051].w[2]"  1;
	setAttr ".wl[2052].w[2]"  1;
	setAttr ".wl[2053].w[2]"  1;
	setAttr ".wl[2054].w[2]"  1;
	setAttr ".wl[2055].w[2]"  1;
	setAttr ".wl[2056].w[2]"  1;
	setAttr ".wl[2057].w[2]"  1;
	setAttr ".wl[2058].w[2]"  1;
	setAttr ".wl[2059].w[2]"  1;
	setAttr ".wl[2060].w[2]"  1;
	setAttr ".wl[2061].w[2]"  1;
	setAttr ".wl[2062].w[2]"  1;
	setAttr ".wl[2063].w[2]"  1;
	setAttr ".wl[2064].w[2]"  1;
	setAttr ".wl[2065].w[2]"  1;
	setAttr ".wl[2066].w[2]"  1;
	setAttr ".wl[2067].w[2]"  1;
	setAttr ".wl[2068].w[2]"  1;
	setAttr ".wl[2069].w[2]"  1;
	setAttr ".wl[2070].w[2]"  1;
	setAttr ".wl[2071].w[2]"  1;
	setAttr ".wl[2072].w[2]"  1;
	setAttr ".wl[2073].w[2]"  1;
	setAttr ".wl[2074].w[2]"  1;
	setAttr ".wl[2075].w[2]"  1;
	setAttr ".wl[2076].w[2]"  1;
	setAttr ".wl[2077].w[2]"  1;
	setAttr ".wl[2078].w[2]"  1;
	setAttr ".wl[2079].w[2]"  1;
	setAttr ".wl[2080].w[2]"  1;
	setAttr ".wl[2081].w[2]"  1;
	setAttr ".wl[2082].w[2]"  1;
	setAttr ".wl[2083].w[2]"  1;
	setAttr ".wl[2084].w[2]"  1;
	setAttr ".wl[2085].w[2]"  1;
	setAttr ".wl[2086].w[2]"  1;
	setAttr ".wl[2087].w[2]"  1;
	setAttr ".wl[2088].w[2]"  1;
	setAttr ".wl[2089].w[2]"  1;
	setAttr ".wl[2090].w[2]"  1;
	setAttr ".wl[2091].w[2]"  1;
	setAttr ".wl[2092].w[2]"  1;
	setAttr ".wl[2093].w[2]"  1;
	setAttr ".wl[2094].w[2]"  1;
	setAttr ".wl[2095].w[2]"  1;
	setAttr ".wl[2096].w[2]"  1;
	setAttr ".wl[2097].w[2]"  1;
	setAttr ".wl[2098].w[2]"  1;
	setAttr ".wl[2099].w[2]"  1;
	setAttr ".wl[2100].w[2]"  1;
	setAttr ".wl[2101].w[2]"  1;
	setAttr ".wl[2102].w[2]"  1;
	setAttr ".wl[2103].w[2]"  1;
	setAttr ".wl[2104].w[2]"  1;
	setAttr ".wl[2105].w[2]"  1;
	setAttr ".wl[2106].w[2]"  1;
	setAttr ".wl[2107].w[2]"  1;
	setAttr ".wl[2108].w[2]"  1;
	setAttr ".wl[2109].w[2]"  1;
	setAttr ".wl[2110].w[2]"  1;
	setAttr ".wl[2111].w[2]"  1;
	setAttr ".wl[2112].w[2]"  1;
	setAttr ".wl[2113].w[2]"  1;
	setAttr ".wl[2114].w[2]"  1;
	setAttr ".wl[2115].w[2]"  1;
	setAttr ".wl[2116].w[2]"  1;
	setAttr ".wl[2117].w[2]"  1;
	setAttr ".wl[2118].w[2]"  1;
	setAttr ".wl[2119].w[2]"  1;
	setAttr ".wl[2120].w[2]"  1;
	setAttr ".wl[2121].w[2]"  1;
	setAttr ".wl[2122].w[2]"  1;
	setAttr ".wl[2123].w[2]"  1;
	setAttr ".wl[2124].w[2]"  1;
	setAttr ".wl[2125].w[2]"  1;
	setAttr ".wl[2126].w[2]"  1;
	setAttr ".wl[2127].w[2]"  1;
	setAttr ".wl[2128].w[2]"  1;
	setAttr ".wl[2129].w[2]"  1;
	setAttr ".wl[2130].w[2]"  1;
	setAttr ".wl[2131].w[2]"  1;
	setAttr ".wl[2132].w[2]"  1;
	setAttr ".wl[2133].w[2]"  1;
	setAttr ".wl[2134].w[2]"  1;
	setAttr ".wl[2135].w[2]"  1;
	setAttr ".wl[2136].w[2]"  1;
	setAttr ".wl[2137].w[2]"  1;
	setAttr ".wl[2138].w[2]"  1;
	setAttr ".wl[2139].w[2]"  1;
	setAttr ".wl[2140].w[2]"  1;
	setAttr ".wl[2141].w[2]"  1;
	setAttr ".wl[2142].w[2]"  1;
	setAttr ".wl[2143].w[2]"  1;
	setAttr ".wl[2144].w[2]"  1;
	setAttr ".wl[2145].w[2]"  1;
	setAttr ".wl[2146].w[2]"  1;
	setAttr ".wl[2147].w[2]"  1;
	setAttr ".wl[2148].w[2]"  1;
	setAttr ".wl[2149].w[2]"  1;
	setAttr ".wl[2150].w[2]"  1;
	setAttr ".wl[2151].w[2]"  1;
	setAttr ".wl[2152].w[2]"  1;
	setAttr ".wl[2153].w[2]"  1;
	setAttr ".wl[2154].w[2]"  1;
	setAttr ".wl[2155].w[2]"  1;
	setAttr ".wl[2156].w[2]"  1;
	setAttr ".wl[2157].w[2]"  1;
	setAttr ".wl[2158].w[2]"  1;
	setAttr ".wl[2159].w[2]"  1;
	setAttr ".wl[2160].w[2]"  1;
	setAttr ".wl[2161].w[2]"  1;
	setAttr -s 3 ".wl[2162].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2163].w[1:3]"  1.9480788178591949e-07 0.99999930788305325 
		4.9730906494910586e-07;
	setAttr -s 3 ".wl[2164].w[1:3]"  9.8965910666043823e-10 0.69999999901034082 
		0.3;
	setAttr -s 3 ".wl[2165].w[1:3]"  9.8961101109577733e-10 0.6999999990103889 
		0.3;
	setAttr -s 3 ".wl[2166].w[1:3]"  1.9480923968462844e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2167].w[1:3]"  9.8972032505118332e-10 0.69999999901027965 
		0.3;
	setAttr -s 3 ".wl[2168].w[1:3]"  1.9480416097712982e-07 0.99999930789625235 
		4.9729958671058332e-07;
	setAttr -s 3 ".wl[2169].w[1:3]"  9.8964888246778124e-10 0.69999999901035104 
		0.3;
	setAttr -s 3 ".wl[2170].w[1:3]"  1.9480505657331019e-07 0.99999930789307534 
		4.9730186811628649e-07;
	setAttr -s 3 ".wl[2171].w[1:3]"  9.8969785478531588e-10 0.69999999901030208 
		0.3;
	setAttr -s 3 ".wl[2172].w[1:3]"  1.9480617101079381e-07 0.99999930788912206 
		4.9730470698948537e-07;
	setAttr -s 3 ".wl[2173].w[1:3]"  9.897147987268714e-10 0.6999999990102852 
		0.3;
	setAttr -s 3 ".wl[2174].w[1:3]"  1.948092396846283e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2175].w[1:3]"  9.8968347236353376e-10 0.69999999901031651 
		0.3;
	setAttr -s 3 ".wl[2176].w[1:3]"  1.9480514874464769e-07 0.99999930789274838 
		4.9730210290984424e-07;
	setAttr -s 3 ".wl[2177].w[1:3]"  9.8971117679102702e-10 0.69999999901028875 
		0.3;
	setAttr -s 3 ".wl[2178].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2179].w[1:3]"  9.8969118363375108e-10 0.69999999901030874 
		0.3;
	setAttr -s 3 ".wl[2180].w[1:3]"  1.948121023942943e-07 0.99999930786808122 
		4.9731981635634631e-07;
	setAttr -s 3 ".wl[2181].w[1:3]"  9.8968124064444812e-10 0.69999999901031873 
		0.3;
	setAttr -s 3 ".wl[2182].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2183].w[1:3]"  9.8969118363375108e-10 0.69999999901030874 
		0.3;
	setAttr -s 3 ".wl[2184].w[1:3]"  1.9480788178591949e-07 0.99999930788305325 
		4.9730906494910586e-07;
	setAttr -s 3 ".wl[2185].w[1:3]"  9.8973630853488078e-10 0.69999999901026366 
		0.3;
	setAttr -s 3 ".wl[2186].w[1:3]"  1.948092396846283e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2187].w[1:3]"  9.8972032505118332e-10 0.69999999901027965 
		0.3;
	setAttr -s 3 ".wl[2188].w[1:3]"  1.9481136957008488e-07 0.99999930787068081 
		4.973179495896121e-07;
	setAttr -s 3 ".wl[2189].w[1:3]"  9.897147987268714e-10 0.6999999990102852 
		0.3;
	setAttr -s 3 ".wl[2190].w[1:3]"  1.9481131048061237e-07 0.99999930787089042 
		4.9731779906748033e-07;
	setAttr -s 3 ".wl[2191].w[1:3]"  9.8969785478531588e-10 0.69999999901030208 
		0.3;
	setAttr -s 3 ".wl[2192].w[1:3]"  1.9481136957008488e-07 0.99999930787068081 
		4.973179495896121e-07;
	setAttr -s 3 ".wl[2193].w[1:3]"  9.897147987268714e-10 0.6999999990102852 
		0.3;
	setAttr -s 3 ".wl[2194].w[1:3]"  1.9480923968462844e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2195].w[1:3]"  9.8972032505118332e-10 0.69999999901027965 
		0.3;
	setAttr -s 3 ".wl[2196].w[1:3]"  1.9480788178591949e-07 0.99999930788305325 
		4.9730906494910586e-07;
	setAttr -s 3 ".wl[2197].w[1:3]"  9.8973630853488078e-10 0.69999999901026366 
		0.3;
	setAttr -s 3 ".wl[2198].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2199].w[1:3]"  9.8969118363375108e-10 0.69999999901030874 
		0.3;
	setAttr -s 3 ".wl[2200].w[1:3]"  1.948121023942943e-07 0.99999930786808122 
		4.9731981635634631e-07;
	setAttr -s 3 ".wl[2201].w[1:3]"  9.8968124064444812e-10 0.69999999901031873 
		0.3;
	setAttr -s 3 ".wl[2202].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2203].w[1:3]"  9.8969118363375108e-10 0.69999999901030874 
		0.3;
	setAttr -s 3 ".wl[2204].w[1:3]"  1.9480514874464769e-07 0.99999930789274838 
		4.9730210290984424e-07;
	setAttr -s 3 ".wl[2205].w[1:3]"  9.8971117679102702e-10 0.69999999901028875 
		0.3;
	setAttr -s 3 ".wl[2206].w[1:3]"  1.9480923968462844e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2207].w[1:3]"  9.8968347236353376e-10 0.69999999901031651 
		0.3;
	setAttr -s 3 ".wl[2208].w[1:3]"  1.9480617101079381e-07 0.99999930788912206 
		4.9730470698948537e-07;
	setAttr -s 3 ".wl[2209].w[1:3]"  9.897147987268714e-10 0.6999999990102852 
		0.3;
	setAttr -s 3 ".wl[2210].w[1:3]"  1.9481131048061237e-07 0.99999930787089042 
		4.9731779906748033e-07;
	setAttr -s 3 ".wl[2211].w[1:3]"  9.8969785478531588e-10 0.69999999901030208 
		0.3;
	setAttr -s 3 ".wl[2212].w[1:3]"  1.9481136957008488e-07 0.99999930787068081 
		4.973179495896121e-07;
	setAttr -s 3 ".wl[2213].w[1:3]"  9.8964888246778124e-10 0.69999999901035104 
		0.3;
	setAttr -s 3 ".wl[2214].w[1:3]"  1.948092396846283e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2215].w[1:3]"  9.8972032505118332e-10 0.69999999901027965 
		0.3;
	setAttr -s 3 ".wl[2216].w[1:3]"  1.9479947049993076e-07 0.99999930791289104 
		4.9728763837705591e-07;
	setAttr -s 3 ".wl[2217].w[1:3]"  9.8965910666043823e-10 0.69999999901034082 
		0.3;
	setAttr -s 3 ".wl[2218].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2219].w[1:3]"  9.8961101109577733e-10 0.6999999990103889 
		0.3;
	setAttr -s 3 ".wl[2220].w[1:3]"  1.9480325807654386e-07 0.99999930789945524 
		4.9729728669790103e-07;
	setAttr -s 3 ".wl[2221].w[1:3]"  9.8968124064444812e-10 0.69999999901031873 
		0.3;
	setAttr -s 3 ".wl[2222].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2223].w[1:3]"  9.8961101109577733e-10 0.6999999990103889 
		0.3;
	setAttr -s 3 ".wl[2224].w[1:3]"  1.9479673753687147e-07 0.99999930792258596 
		4.9728067653617279e-07;
	setAttr -s 3 ".wl[2225].w[1:3]"  9.8963397622203037e-10 0.69999999901036603 
		0.3;
	setAttr -s 3 ".wl[2226].w[1:3]"  1.948092396846283e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2227].w[1:3]"  9.8968347236353376e-10 0.69999999901031651 
		0.3;
	setAttr -s 3 ".wl[2228].w[1:3]"  1.9480617101079381e-07 0.99999930788912206 
		4.9730470698948537e-07;
	setAttr -s 3 ".wl[2229].w[1:3]"  9.8964888246778124e-10 0.69999999901035104 
		0.3;
	setAttr -s 3 ".wl[2230].w[1:3]"  1.9480505657331019e-07 0.99999930789307534 
		4.9730186811628649e-07;
	setAttr -s 3 ".wl[2231].w[1:3]"  9.8969785478531588e-10 0.69999999901030208 
		0.3;
	setAttr -s 3 ".wl[2232].w[1:3]"  1.9479896254533367e-07 0.99999930791469305 
		4.9728634443383492e-07;
	setAttr -s 3 ".wl[2233].w[1:3]"  9.8964888246778124e-10 0.69999999901035104 
		0.3;
	setAttr -s 3 ".wl[2234].w[1:3]"  1.9480923968462844e-07 0.99999930787823632 
		4.9731252400548337e-07;
	setAttr -s 3 ".wl[2235].w[1:3]"  9.8968347236353376e-10 0.69999999901031651 
		0.3;
	setAttr -s 3 ".wl[2236].w[1:3]"  1.9479673753687147e-07 0.99999930792258596 
		4.9728067653617279e-07;
	setAttr -s 3 ".wl[2237].w[1:3]"  9.8963397622203037e-10 0.69999999901036603 
		0.3;
	setAttr -s 3 ".wl[2238].w[1:3]"  1.9480373055761802e-07 0.99999930789777913 
		4.9729849027721315e-07;
	setAttr -s 3 ".wl[2239].w[1:3]"  9.8961101109577733e-10 0.6999999990103889 
		0.3;
	setAttr -s 3 ".wl[2240].w[1:3]"  1.9480325807654386e-07 0.99999930789945524 
		4.9729728669790103e-07;
	setAttr -s 3 ".wl[2241].w[1:3]"  9.8968124064444812e-10 0.69999999901031873 
		0.3;
	setAttr ".wl[2242].w[3]"  1;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.1538587328805594 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.6931671844843663 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -4.1858092757445267 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  6 6 6 6;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode objectSet -n "skinCluster8Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode displayLayer -n "Mesh";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode skinCluster -n "skinCluster9";
	setAttr ".skm" 1;
	setAttr -s 764 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr ".wl[386].w[1]"  1;
	setAttr ".wl[387].w[1]"  1;
	setAttr ".wl[388].w[1]"  1;
	setAttr ".wl[389].w[1]"  1;
	setAttr ".wl[390].w[1]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[1]"  1;
	setAttr ".wl[393].w[1]"  1;
	setAttr ".wl[394].w[1]"  1;
	setAttr ".wl[395].w[1]"  1;
	setAttr ".wl[396].w[1]"  1;
	setAttr ".wl[397].w[1]"  1;
	setAttr ".wl[398].w[1]"  1;
	setAttr ".wl[399].w[1]"  1;
	setAttr ".wl[400].w[1]"  1;
	setAttr ".wl[401].w[1]"  1;
	setAttr ".wl[402].w[1]"  1;
	setAttr ".wl[403].w[1]"  1;
	setAttr ".wl[404].w[1]"  1;
	setAttr ".wl[405].w[1]"  1;
	setAttr ".wl[406].w[1]"  1;
	setAttr ".wl[407].w[1]"  1;
	setAttr ".wl[408].w[1]"  1;
	setAttr ".wl[409].w[1]"  1;
	setAttr ".wl[410].w[1]"  1;
	setAttr ".wl[411].w[1]"  1;
	setAttr ".wl[412].w[1]"  1;
	setAttr ".wl[413].w[1]"  1;
	setAttr ".wl[414].w[1]"  1;
	setAttr ".wl[415].w[1]"  1;
	setAttr ".wl[416].w[1]"  1;
	setAttr ".wl[417].w[1]"  1;
	setAttr ".wl[418].w[1]"  1;
	setAttr ".wl[419].w[1]"  1;
	setAttr ".wl[420].w[1]"  1;
	setAttr ".wl[421].w[1]"  1;
	setAttr ".wl[422].w[1]"  1;
	setAttr ".wl[423].w[1]"  1;
	setAttr ".wl[424].w[1]"  1;
	setAttr ".wl[425].w[1]"  1;
	setAttr ".wl[426].w[1]"  1;
	setAttr ".wl[427].w[1]"  1;
	setAttr ".wl[428].w[1]"  1;
	setAttr ".wl[429].w[1]"  1;
	setAttr ".wl[430].w[1]"  1;
	setAttr ".wl[431].w[1]"  1;
	setAttr ".wl[432].w[1]"  1;
	setAttr ".wl[433].w[1]"  1;
	setAttr ".wl[434].w[1]"  1;
	setAttr ".wl[435].w[1]"  1;
	setAttr ".wl[436].w[1]"  1;
	setAttr ".wl[437].w[1]"  1;
	setAttr ".wl[438].w[1]"  1;
	setAttr ".wl[439].w[1]"  1;
	setAttr ".wl[440].w[1]"  1;
	setAttr ".wl[441].w[1]"  1;
	setAttr ".wl[442].w[1]"  1;
	setAttr ".wl[443].w[1]"  1;
	setAttr ".wl[444].w[1]"  1;
	setAttr ".wl[445].w[1]"  1;
	setAttr ".wl[446].w[1]"  1;
	setAttr ".wl[447].w[1]"  1;
	setAttr ".wl[448].w[1]"  1;
	setAttr ".wl[449].w[1]"  1;
	setAttr ".wl[450].w[1]"  1;
	setAttr ".wl[451].w[1]"  1;
	setAttr ".wl[452].w[1]"  1;
	setAttr ".wl[453].w[1]"  1;
	setAttr ".wl[454].w[1]"  1;
	setAttr ".wl[455].w[1]"  1;
	setAttr ".wl[456].w[1]"  1;
	setAttr ".wl[457].w[1]"  1;
	setAttr ".wl[458].w[1]"  1;
	setAttr ".wl[459].w[1]"  1;
	setAttr ".wl[460].w[1]"  1;
	setAttr ".wl[461].w[1]"  1;
	setAttr ".wl[462].w[1]"  1;
	setAttr ".wl[463].w[1]"  1;
	setAttr ".wl[464].w[1]"  1;
	setAttr ".wl[465].w[1]"  1;
	setAttr ".wl[466].w[1]"  1;
	setAttr ".wl[467].w[1]"  1;
	setAttr ".wl[468].w[1]"  1;
	setAttr ".wl[469].w[1]"  1;
	setAttr ".wl[470].w[1]"  1;
	setAttr ".wl[471].w[1]"  1;
	setAttr ".wl[472].w[1]"  1;
	setAttr ".wl[473].w[1]"  1;
	setAttr ".wl[474].w[1]"  1;
	setAttr ".wl[475].w[1]"  1;
	setAttr ".wl[476].w[1]"  1;
	setAttr ".wl[477].w[1]"  1;
	setAttr ".wl[478].w[1]"  1;
	setAttr ".wl[479].w[1]"  1;
	setAttr ".wl[480].w[1]"  1;
	setAttr ".wl[481].w[1]"  1;
	setAttr ".wl[482].w[1]"  1;
	setAttr ".wl[483].w[1]"  1;
	setAttr ".wl[484].w[1]"  1;
	setAttr ".wl[485].w[1]"  1;
	setAttr ".wl[486].w[1]"  1;
	setAttr ".wl[487].w[1]"  1;
	setAttr ".wl[488].w[1]"  1;
	setAttr ".wl[489].w[1]"  1;
	setAttr ".wl[490].w[1]"  1;
	setAttr ".wl[491].w[1]"  1;
	setAttr ".wl[492].w[1]"  1;
	setAttr ".wl[493].w[1]"  1;
	setAttr ".wl[494].w[1]"  1;
	setAttr ".wl[495].w[1]"  1;
	setAttr ".wl[496].w[1]"  1;
	setAttr ".wl[497].w[1]"  1;
	setAttr ".wl[498].w[1]"  1;
	setAttr ".wl[499].w[1]"  1;
	setAttr ".wl[500].w[1]"  1;
	setAttr ".wl[501].w[1]"  1;
	setAttr ".wl[502].w[1]"  1;
	setAttr ".wl[503].w[1]"  1;
	setAttr ".wl[504].w[1]"  1;
	setAttr ".wl[505].w[1]"  1;
	setAttr ".wl[506].w[1]"  1;
	setAttr ".wl[507].w[1]"  1;
	setAttr ".wl[508].w[1]"  1;
	setAttr ".wl[509].w[1]"  1;
	setAttr ".wl[510].w[1]"  1;
	setAttr ".wl[511].w[1]"  1;
	setAttr ".wl[512].w[1]"  1;
	setAttr ".wl[513].w[1]"  1;
	setAttr ".wl[514].w[1]"  1;
	setAttr ".wl[515].w[1]"  1;
	setAttr ".wl[516].w[1]"  1;
	setAttr ".wl[517].w[1]"  1;
	setAttr ".wl[518].w[1]"  1;
	setAttr ".wl[519].w[1]"  1;
	setAttr ".wl[520].w[1]"  1;
	setAttr ".wl[521].w[1]"  1;
	setAttr ".wl[522].w[1]"  1;
	setAttr ".wl[523].w[1]"  1;
	setAttr ".wl[524].w[1]"  1;
	setAttr ".wl[525].w[1]"  1;
	setAttr ".wl[526].w[1]"  1;
	setAttr ".wl[527].w[1]"  1;
	setAttr ".wl[528].w[1]"  1;
	setAttr ".wl[529].w[1]"  1;
	setAttr ".wl[530].w[1]"  1;
	setAttr ".wl[531].w[1]"  1;
	setAttr ".wl[532].w[1]"  1;
	setAttr ".wl[533].w[1]"  1;
	setAttr ".wl[534].w[1]"  1;
	setAttr ".wl[535].w[1]"  1;
	setAttr ".wl[536].w[1]"  1;
	setAttr ".wl[537].w[1]"  1;
	setAttr ".wl[538].w[1]"  1;
	setAttr ".wl[539].w[1]"  1;
	setAttr ".wl[540].w[1]"  1;
	setAttr ".wl[541].w[1]"  1;
	setAttr ".wl[542].w[1]"  1;
	setAttr ".wl[543].w[1]"  1;
	setAttr ".wl[544].w[1]"  1;
	setAttr ".wl[545].w[1]"  1;
	setAttr ".wl[546].w[1]"  1;
	setAttr ".wl[547].w[1]"  1;
	setAttr ".wl[548].w[1]"  1;
	setAttr ".wl[549].w[1]"  1;
	setAttr ".wl[550].w[1]"  1;
	setAttr ".wl[551].w[1]"  1;
	setAttr ".wl[552].w[1]"  1;
	setAttr ".wl[553].w[1]"  1;
	setAttr ".wl[554].w[1]"  1;
	setAttr ".wl[555].w[1]"  1;
	setAttr ".wl[556].w[1]"  1;
	setAttr ".wl[557].w[1]"  1;
	setAttr ".wl[558].w[1]"  1;
	setAttr ".wl[559].w[1]"  1;
	setAttr ".wl[560].w[1]"  1;
	setAttr ".wl[561].w[1]"  1;
	setAttr ".wl[562].w[1]"  1;
	setAttr ".wl[563].w[1]"  1;
	setAttr ".wl[564].w[1]"  1;
	setAttr ".wl[565].w[1]"  1;
	setAttr ".wl[566].w[1]"  1;
	setAttr ".wl[567].w[1]"  1;
	setAttr ".wl[568].w[1]"  1;
	setAttr ".wl[569].w[1]"  1;
	setAttr ".wl[570].w[1]"  1;
	setAttr ".wl[571].w[1]"  1;
	setAttr ".wl[572].w[1]"  1;
	setAttr ".wl[573].w[1]"  1;
	setAttr ".wl[574].w[1]"  1;
	setAttr ".wl[575].w[1]"  1;
	setAttr ".wl[576].w[1]"  1;
	setAttr ".wl[577].w[1]"  1;
	setAttr ".wl[578].w[1]"  1;
	setAttr ".wl[579].w[1]"  1;
	setAttr ".wl[580].w[1]"  1;
	setAttr ".wl[581].w[1]"  1;
	setAttr ".wl[582].w[1]"  1;
	setAttr ".wl[583].w[1]"  1;
	setAttr ".wl[584].w[1]"  1;
	setAttr ".wl[585].w[1]"  1;
	setAttr ".wl[586].w[1]"  1;
	setAttr ".wl[587].w[1]"  1;
	setAttr ".wl[588].w[1]"  1;
	setAttr ".wl[589].w[1]"  1;
	setAttr ".wl[590].w[1]"  1;
	setAttr ".wl[591].w[1]"  1;
	setAttr ".wl[592].w[1]"  1;
	setAttr ".wl[593].w[1]"  1;
	setAttr ".wl[594].w[1]"  1;
	setAttr ".wl[595].w[1]"  1;
	setAttr ".wl[596].w[1]"  1;
	setAttr ".wl[597].w[1]"  1;
	setAttr ".wl[598].w[1]"  1;
	setAttr ".wl[599].w[1]"  1;
	setAttr ".wl[600].w[1]"  1;
	setAttr ".wl[601].w[1]"  1;
	setAttr ".wl[602].w[1]"  1;
	setAttr ".wl[603].w[1]"  1;
	setAttr ".wl[604].w[1]"  1;
	setAttr ".wl[605].w[1]"  1;
	setAttr ".wl[606].w[1]"  1;
	setAttr ".wl[607].w[1]"  1;
	setAttr ".wl[608].w[1]"  1;
	setAttr ".wl[609].w[1]"  1;
	setAttr ".wl[610].w[1]"  1;
	setAttr ".wl[611].w[1]"  1;
	setAttr ".wl[612].w[1]"  1;
	setAttr ".wl[613].w[1]"  1;
	setAttr ".wl[614].w[1]"  1;
	setAttr ".wl[615].w[1]"  1;
	setAttr ".wl[616].w[1]"  1;
	setAttr ".wl[617].w[1]"  1;
	setAttr ".wl[618].w[1]"  1;
	setAttr ".wl[619].w[1]"  1;
	setAttr ".wl[620].w[1]"  1;
	setAttr ".wl[621].w[1]"  1;
	setAttr ".wl[622].w[1]"  1;
	setAttr ".wl[623].w[1]"  1;
	setAttr ".wl[624].w[1]"  1;
	setAttr ".wl[625].w[1]"  1;
	setAttr ".wl[626].w[1]"  1;
	setAttr ".wl[627].w[1]"  1;
	setAttr ".wl[628].w[1]"  1;
	setAttr ".wl[629].w[1]"  1;
	setAttr ".wl[630].w[1]"  1;
	setAttr ".wl[631].w[1]"  1;
	setAttr ".wl[632].w[1]"  1;
	setAttr ".wl[633].w[1]"  1;
	setAttr ".wl[634].w[1]"  1;
	setAttr ".wl[635].w[1]"  1;
	setAttr ".wl[636].w[1]"  1;
	setAttr ".wl[637].w[1]"  1;
	setAttr ".wl[638].w[1]"  1;
	setAttr ".wl[639].w[1]"  1;
	setAttr ".wl[640].w[1]"  1;
	setAttr ".wl[641].w[1]"  1;
	setAttr ".wl[642].w[1]"  1;
	setAttr ".wl[643].w[1]"  1;
	setAttr ".wl[644].w[1]"  1;
	setAttr ".wl[645].w[1]"  1;
	setAttr ".wl[646].w[1]"  1;
	setAttr ".wl[647].w[1]"  1;
	setAttr ".wl[648].w[1]"  1;
	setAttr ".wl[649].w[1]"  1;
	setAttr ".wl[650].w[1]"  1;
	setAttr ".wl[651].w[1]"  1;
	setAttr ".wl[652].w[1]"  1;
	setAttr ".wl[653].w[1]"  1;
	setAttr ".wl[654].w[1]"  1;
	setAttr ".wl[655].w[1]"  1;
	setAttr ".wl[656].w[1]"  1;
	setAttr ".wl[657].w[1]"  1;
	setAttr ".wl[658].w[1]"  1;
	setAttr ".wl[659].w[1]"  1;
	setAttr ".wl[660].w[1]"  1;
	setAttr ".wl[661].w[1]"  1;
	setAttr ".wl[662].w[1]"  1;
	setAttr ".wl[663].w[1]"  1;
	setAttr ".wl[664].w[1]"  1;
	setAttr ".wl[665].w[1]"  1;
	setAttr ".wl[666].w[1]"  1;
	setAttr ".wl[667].w[1]"  1;
	setAttr ".wl[668].w[1]"  1;
	setAttr ".wl[669].w[1]"  1;
	setAttr ".wl[670].w[1]"  1;
	setAttr ".wl[671].w[1]"  1;
	setAttr ".wl[672].w[1]"  1;
	setAttr ".wl[673].w[1]"  1;
	setAttr ".wl[674].w[1]"  1;
	setAttr ".wl[675].w[1]"  1;
	setAttr ".wl[676].w[1]"  1;
	setAttr ".wl[677].w[1]"  1;
	setAttr ".wl[678].w[1]"  1;
	setAttr ".wl[679].w[1]"  1;
	setAttr ".wl[680].w[1]"  1;
	setAttr ".wl[681].w[1]"  1;
	setAttr ".wl[682].w[1]"  1;
	setAttr ".wl[683].w[1]"  1;
	setAttr ".wl[684].w[1]"  1;
	setAttr ".wl[685].w[1]"  1;
	setAttr ".wl[686].w[1]"  1;
	setAttr ".wl[687].w[1]"  1;
	setAttr ".wl[688].w[1]"  1;
	setAttr ".wl[689].w[1]"  1;
	setAttr ".wl[690].w[1]"  1;
	setAttr ".wl[691].w[1]"  1;
	setAttr ".wl[692].w[1]"  1;
	setAttr ".wl[693].w[1]"  1;
	setAttr ".wl[694].w[1]"  1;
	setAttr ".wl[695].w[1]"  1;
	setAttr ".wl[696].w[1]"  1;
	setAttr ".wl[697].w[1]"  1;
	setAttr ".wl[698].w[1]"  1;
	setAttr ".wl[699].w[1]"  1;
	setAttr ".wl[700].w[1]"  1;
	setAttr ".wl[701].w[1]"  1;
	setAttr ".wl[702].w[1]"  1;
	setAttr ".wl[703].w[1]"  1;
	setAttr ".wl[704].w[1]"  1;
	setAttr ".wl[705].w[1]"  1;
	setAttr ".wl[706].w[1]"  1;
	setAttr ".wl[707].w[1]"  1;
	setAttr ".wl[708].w[1]"  1;
	setAttr ".wl[709].w[1]"  1;
	setAttr ".wl[710].w[1]"  1;
	setAttr ".wl[711].w[1]"  1;
	setAttr ".wl[712].w[1]"  1;
	setAttr ".wl[713].w[1]"  1;
	setAttr ".wl[714].w[1]"  1;
	setAttr ".wl[715].w[1]"  1;
	setAttr ".wl[716].w[1]"  1;
	setAttr ".wl[717].w[1]"  1;
	setAttr ".wl[718].w[1]"  1;
	setAttr ".wl[719].w[1]"  1;
	setAttr ".wl[720].w[1]"  1;
	setAttr ".wl[721].w[1]"  1;
	setAttr ".wl[722].w[1]"  1;
	setAttr ".wl[723].w[1]"  1;
	setAttr ".wl[724].w[1]"  1;
	setAttr ".wl[725].w[1]"  1;
	setAttr ".wl[726].w[1]"  1;
	setAttr ".wl[727].w[1]"  1;
	setAttr ".wl[728].w[1]"  1;
	setAttr ".wl[729].w[1]"  1;
	setAttr ".wl[730].w[1]"  1;
	setAttr ".wl[731].w[1]"  1;
	setAttr ".wl[732].w[1]"  1;
	setAttr ".wl[733].w[1]"  1;
	setAttr ".wl[734].w[1]"  1;
	setAttr ".wl[735].w[1]"  1;
	setAttr ".wl[736].w[1]"  1;
	setAttr ".wl[737].w[1]"  1;
	setAttr ".wl[738].w[1]"  1;
	setAttr ".wl[739].w[1]"  1;
	setAttr ".wl[740].w[1]"  1;
	setAttr ".wl[741].w[1]"  1;
	setAttr ".wl[742].w[1]"  1;
	setAttr ".wl[743].w[1]"  1;
	setAttr ".wl[744].w[1]"  1;
	setAttr ".wl[745].w[1]"  1;
	setAttr ".wl[746].w[1]"  1;
	setAttr ".wl[747].w[1]"  1;
	setAttr ".wl[748].w[1]"  1;
	setAttr ".wl[749].w[1]"  1;
	setAttr ".wl[750].w[1]"  1;
	setAttr ".wl[751].w[1]"  1;
	setAttr ".wl[752].w[1]"  1;
	setAttr ".wl[753].w[1]"  1;
	setAttr ".wl[754].w[1]"  1;
	setAttr ".wl[755].w[1]"  1;
	setAttr ".wl[756].w[1]"  1;
	setAttr ".wl[757].w[1]"  1;
	setAttr ".wl[758].w[1]"  1;
	setAttr ".wl[759].w[1]"  1;
	setAttr ".wl[760].w[1]"  1;
	setAttr ".wl[761].w[1]"  1;
	setAttr ".wl[762].w[1]"  1;
	setAttr ".wl[763].w[1]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.68933419846313426 -2.7239443641761358 -0.81798377530077382 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.6931671844843663 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  6 6;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode objectSet -n "skinCluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster10";
	setAttr ".skm" 1;
	setAttr -s 764 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[0]"  1;
	setAttr ".wl[147].w[0]"  1;
	setAttr ".wl[148].w[0]"  1;
	setAttr ".wl[149].w[0]"  1;
	setAttr ".wl[150].w[0]"  1;
	setAttr ".wl[151].w[0]"  1;
	setAttr ".wl[152].w[0]"  1;
	setAttr ".wl[153].w[0]"  1;
	setAttr ".wl[154].w[0]"  1;
	setAttr ".wl[155].w[0]"  1;
	setAttr ".wl[156].w[0]"  1;
	setAttr ".wl[157].w[0]"  1;
	setAttr ".wl[158].w[0]"  1;
	setAttr ".wl[159].w[0]"  1;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[0]"  1;
	setAttr ".wl[180].w[0]"  1;
	setAttr ".wl[181].w[0]"  1;
	setAttr ".wl[182].w[0]"  1;
	setAttr ".wl[183].w[0]"  1;
	setAttr ".wl[184].w[0]"  1;
	setAttr ".wl[185].w[0]"  1;
	setAttr ".wl[186].w[0]"  1;
	setAttr ".wl[187].w[0]"  1;
	setAttr ".wl[188].w[0]"  1;
	setAttr ".wl[189].w[0]"  1;
	setAttr ".wl[190].w[0]"  1;
	setAttr ".wl[191].w[0]"  1;
	setAttr ".wl[192].w[0]"  1;
	setAttr ".wl[193].w[0]"  1;
	setAttr ".wl[194].w[0]"  1;
	setAttr ".wl[195].w[0]"  1;
	setAttr ".wl[196].w[0]"  1;
	setAttr ".wl[197].w[0]"  1;
	setAttr ".wl[198].w[0]"  1;
	setAttr ".wl[199].w[0]"  1;
	setAttr ".wl[200].w[0]"  1;
	setAttr ".wl[201].w[0]"  1;
	setAttr ".wl[202].w[0]"  1;
	setAttr ".wl[203].w[0]"  1;
	setAttr ".wl[204].w[0]"  1;
	setAttr ".wl[205].w[0]"  1;
	setAttr ".wl[206].w[0]"  1;
	setAttr ".wl[207].w[0]"  1;
	setAttr ".wl[208].w[0]"  1;
	setAttr ".wl[209].w[0]"  1;
	setAttr ".wl[210].w[0]"  1;
	setAttr ".wl[211].w[0]"  1;
	setAttr ".wl[212].w[0]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[0]"  1;
	setAttr ".wl[228].w[0]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[0]"  1;
	setAttr ".wl[231].w[0]"  1;
	setAttr ".wl[232].w[0]"  1;
	setAttr ".wl[233].w[0]"  1;
	setAttr ".wl[234].w[0]"  1;
	setAttr ".wl[235].w[0]"  1;
	setAttr ".wl[236].w[0]"  1;
	setAttr ".wl[237].w[0]"  1;
	setAttr ".wl[238].w[0]"  1;
	setAttr ".wl[239].w[0]"  1;
	setAttr ".wl[240].w[0]"  1;
	setAttr ".wl[241].w[0]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[0]"  1;
	setAttr ".wl[244].w[0]"  1;
	setAttr ".wl[245].w[0]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[0]"  1;
	setAttr ".wl[253].w[0]"  1;
	setAttr ".wl[254].w[0]"  1;
	setAttr ".wl[255].w[0]"  1;
	setAttr ".wl[256].w[0]"  1;
	setAttr ".wl[257].w[0]"  1;
	setAttr ".wl[258].w[0]"  1;
	setAttr ".wl[259].w[0]"  1;
	setAttr ".wl[260].w[0]"  1;
	setAttr ".wl[261].w[0]"  1;
	setAttr ".wl[262].w[0]"  1;
	setAttr ".wl[263].w[0]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[0]"  1;
	setAttr ".wl[273].w[0]"  1;
	setAttr ".wl[274].w[0]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[0]"  1;
	setAttr ".wl[278].w[0]"  1;
	setAttr ".wl[279].w[0]"  1;
	setAttr ".wl[280].w[0]"  1;
	setAttr ".wl[281].w[0]"  1;
	setAttr ".wl[282].w[0]"  1;
	setAttr ".wl[283].w[0]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[0]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[0]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[0]"  1;
	setAttr ".wl[293].w[0]"  1;
	setAttr ".wl[294].w[0]"  1;
	setAttr ".wl[295].w[0]"  1;
	setAttr ".wl[296].w[0]"  1;
	setAttr ".wl[297].w[0]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[0]"  1;
	setAttr ".wl[301].w[0]"  1;
	setAttr ".wl[302].w[0]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[0]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[0]"  1;
	setAttr ".wl[315].w[0]"  1;
	setAttr ".wl[316].w[0]"  1;
	setAttr ".wl[317].w[0]"  1;
	setAttr ".wl[318].w[0]"  1;
	setAttr ".wl[319].w[0]"  1;
	setAttr ".wl[320].w[0]"  1;
	setAttr ".wl[321].w[0]"  1;
	setAttr ".wl[322].w[0]"  1;
	setAttr ".wl[323].w[0]"  1;
	setAttr ".wl[324].w[0]"  1;
	setAttr ".wl[325].w[0]"  1;
	setAttr ".wl[326].w[0]"  1;
	setAttr ".wl[327].w[0]"  1;
	setAttr ".wl[328].w[0]"  1;
	setAttr ".wl[329].w[0]"  1;
	setAttr ".wl[330].w[0]"  1;
	setAttr ".wl[331].w[0]"  1;
	setAttr ".wl[332].w[0]"  1;
	setAttr ".wl[333].w[0]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr ".wl[337].w[0]"  1;
	setAttr ".wl[338].w[0]"  1;
	setAttr ".wl[339].w[0]"  1;
	setAttr ".wl[340].w[0]"  1;
	setAttr ".wl[341].w[0]"  1;
	setAttr ".wl[342].w[0]"  1;
	setAttr ".wl[343].w[0]"  1;
	setAttr ".wl[344].w[0]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[0]"  1;
	setAttr ".wl[347].w[0]"  1;
	setAttr ".wl[348].w[0]"  1;
	setAttr ".wl[349].w[0]"  1;
	setAttr ".wl[350].w[0]"  1;
	setAttr ".wl[351].w[0]"  1;
	setAttr ".wl[352].w[0]"  1;
	setAttr ".wl[353].w[0]"  1;
	setAttr ".wl[354].w[0]"  1;
	setAttr ".wl[355].w[0]"  1;
	setAttr ".wl[356].w[0]"  1;
	setAttr ".wl[357].w[0]"  1;
	setAttr ".wl[358].w[0]"  1;
	setAttr ".wl[359].w[0]"  1;
	setAttr ".wl[360].w[0]"  1;
	setAttr ".wl[361].w[0]"  1;
	setAttr ".wl[362].w[0]"  1;
	setAttr ".wl[363].w[0]"  1;
	setAttr ".wl[364].w[0]"  1;
	setAttr ".wl[365].w[0]"  1;
	setAttr ".wl[366].w[0]"  1;
	setAttr ".wl[367].w[0]"  1;
	setAttr ".wl[368].w[0]"  1;
	setAttr ".wl[369].w[0]"  1;
	setAttr ".wl[370].w[0]"  1;
	setAttr ".wl[371].w[0]"  1;
	setAttr ".wl[372].w[0]"  1;
	setAttr ".wl[373].w[0]"  1;
	setAttr ".wl[374].w[0]"  1;
	setAttr ".wl[375].w[0]"  1;
	setAttr ".wl[376].w[0]"  1;
	setAttr ".wl[377].w[0]"  1;
	setAttr ".wl[378].w[0]"  1;
	setAttr ".wl[379].w[0]"  1;
	setAttr ".wl[380].w[0]"  1;
	setAttr ".wl[381].w[0]"  1;
	setAttr ".wl[382].w[1]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[1]"  1;
	setAttr ".wl[385].w[1]"  1;
	setAttr ".wl[386].w[1]"  1;
	setAttr ".wl[387].w[1]"  1;
	setAttr ".wl[388].w[1]"  1;
	setAttr ".wl[389].w[1]"  1;
	setAttr ".wl[390].w[1]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[1]"  1;
	setAttr ".wl[393].w[1]"  1;
	setAttr ".wl[394].w[1]"  1;
	setAttr ".wl[395].w[1]"  1;
	setAttr ".wl[396].w[1]"  1;
	setAttr ".wl[397].w[1]"  1;
	setAttr ".wl[398].w[1]"  1;
	setAttr ".wl[399].w[1]"  1;
	setAttr ".wl[400].w[1]"  1;
	setAttr ".wl[401].w[1]"  1;
	setAttr ".wl[402].w[1]"  1;
	setAttr ".wl[403].w[1]"  1;
	setAttr ".wl[404].w[1]"  1;
	setAttr ".wl[405].w[1]"  1;
	setAttr ".wl[406].w[1]"  1;
	setAttr ".wl[407].w[1]"  1;
	setAttr ".wl[408].w[1]"  1;
	setAttr ".wl[409].w[1]"  1;
	setAttr ".wl[410].w[1]"  1;
	setAttr ".wl[411].w[1]"  1;
	setAttr ".wl[412].w[1]"  1;
	setAttr ".wl[413].w[1]"  1;
	setAttr ".wl[414].w[1]"  1;
	setAttr ".wl[415].w[1]"  1;
	setAttr ".wl[416].w[1]"  1;
	setAttr ".wl[417].w[1]"  1;
	setAttr ".wl[418].w[1]"  1;
	setAttr ".wl[419].w[1]"  1;
	setAttr ".wl[420].w[1]"  1;
	setAttr ".wl[421].w[1]"  1;
	setAttr ".wl[422].w[1]"  1;
	setAttr ".wl[423].w[1]"  1;
	setAttr ".wl[424].w[1]"  1;
	setAttr ".wl[425].w[1]"  1;
	setAttr ".wl[426].w[1]"  1;
	setAttr ".wl[427].w[1]"  1;
	setAttr ".wl[428].w[1]"  1;
	setAttr ".wl[429].w[1]"  1;
	setAttr ".wl[430].w[1]"  1;
	setAttr ".wl[431].w[1]"  1;
	setAttr ".wl[432].w[1]"  1;
	setAttr ".wl[433].w[1]"  1;
	setAttr ".wl[434].w[1]"  1;
	setAttr ".wl[435].w[1]"  1;
	setAttr ".wl[436].w[1]"  1;
	setAttr ".wl[437].w[1]"  1;
	setAttr ".wl[438].w[1]"  1;
	setAttr ".wl[439].w[1]"  1;
	setAttr ".wl[440].w[1]"  1;
	setAttr ".wl[441].w[1]"  1;
	setAttr ".wl[442].w[1]"  1;
	setAttr ".wl[443].w[1]"  1;
	setAttr ".wl[444].w[1]"  1;
	setAttr ".wl[445].w[1]"  1;
	setAttr ".wl[446].w[1]"  1;
	setAttr ".wl[447].w[1]"  1;
	setAttr ".wl[448].w[1]"  1;
	setAttr ".wl[449].w[1]"  1;
	setAttr ".wl[450].w[1]"  1;
	setAttr ".wl[451].w[1]"  1;
	setAttr ".wl[452].w[1]"  1;
	setAttr ".wl[453].w[1]"  1;
	setAttr ".wl[454].w[1]"  1;
	setAttr ".wl[455].w[1]"  1;
	setAttr ".wl[456].w[1]"  1;
	setAttr ".wl[457].w[1]"  1;
	setAttr ".wl[458].w[1]"  1;
	setAttr ".wl[459].w[1]"  1;
	setAttr ".wl[460].w[1]"  1;
	setAttr ".wl[461].w[1]"  1;
	setAttr ".wl[462].w[1]"  1;
	setAttr ".wl[463].w[1]"  1;
	setAttr ".wl[464].w[1]"  1;
	setAttr ".wl[465].w[1]"  1;
	setAttr ".wl[466].w[1]"  1;
	setAttr ".wl[467].w[1]"  1;
	setAttr ".wl[468].w[1]"  1;
	setAttr ".wl[469].w[1]"  1;
	setAttr ".wl[470].w[1]"  1;
	setAttr ".wl[471].w[1]"  1;
	setAttr ".wl[472].w[1]"  1;
	setAttr ".wl[473].w[1]"  1;
	setAttr ".wl[474].w[1]"  1;
	setAttr ".wl[475].w[1]"  1;
	setAttr ".wl[476].w[1]"  1;
	setAttr ".wl[477].w[1]"  1;
	setAttr ".wl[478].w[1]"  1;
	setAttr ".wl[479].w[1]"  1;
	setAttr ".wl[480].w[1]"  1;
	setAttr ".wl[481].w[1]"  1;
	setAttr ".wl[482].w[1]"  1;
	setAttr ".wl[483].w[1]"  1;
	setAttr ".wl[484].w[1]"  1;
	setAttr ".wl[485].w[1]"  1;
	setAttr ".wl[486].w[1]"  1;
	setAttr ".wl[487].w[1]"  1;
	setAttr ".wl[488].w[1]"  1;
	setAttr ".wl[489].w[1]"  1;
	setAttr ".wl[490].w[1]"  1;
	setAttr ".wl[491].w[1]"  1;
	setAttr ".wl[492].w[1]"  1;
	setAttr ".wl[493].w[1]"  1;
	setAttr ".wl[494].w[1]"  1;
	setAttr ".wl[495].w[1]"  1;
	setAttr ".wl[496].w[1]"  1;
	setAttr ".wl[497].w[1]"  1;
	setAttr ".wl[498].w[1]"  1;
	setAttr ".wl[499].w[1]"  1;
	setAttr ".wl[500].w[1]"  1;
	setAttr ".wl[501].w[1]"  1;
	setAttr ".wl[502].w[1]"  1;
	setAttr ".wl[503].w[1]"  1;
	setAttr ".wl[504].w[1]"  1;
	setAttr ".wl[505].w[1]"  1;
	setAttr ".wl[506].w[1]"  1;
	setAttr ".wl[507].w[1]"  1;
	setAttr ".wl[508].w[1]"  1;
	setAttr ".wl[509].w[1]"  1;
	setAttr ".wl[510].w[1]"  1;
	setAttr ".wl[511].w[1]"  1;
	setAttr ".wl[512].w[1]"  1;
	setAttr ".wl[513].w[1]"  1;
	setAttr ".wl[514].w[1]"  1;
	setAttr ".wl[515].w[1]"  1;
	setAttr ".wl[516].w[1]"  1;
	setAttr ".wl[517].w[1]"  1;
	setAttr ".wl[518].w[1]"  1;
	setAttr ".wl[519].w[1]"  1;
	setAttr ".wl[520].w[1]"  1;
	setAttr ".wl[521].w[1]"  1;
	setAttr ".wl[522].w[1]"  1;
	setAttr ".wl[523].w[1]"  1;
	setAttr ".wl[524].w[1]"  1;
	setAttr ".wl[525].w[1]"  1;
	setAttr ".wl[526].w[1]"  1;
	setAttr ".wl[527].w[1]"  1;
	setAttr ".wl[528].w[1]"  1;
	setAttr ".wl[529].w[1]"  1;
	setAttr ".wl[530].w[1]"  1;
	setAttr ".wl[531].w[1]"  1;
	setAttr ".wl[532].w[1]"  1;
	setAttr ".wl[533].w[1]"  1;
	setAttr ".wl[534].w[1]"  1;
	setAttr ".wl[535].w[1]"  1;
	setAttr ".wl[536].w[1]"  1;
	setAttr ".wl[537].w[1]"  1;
	setAttr ".wl[538].w[1]"  1;
	setAttr ".wl[539].w[1]"  1;
	setAttr ".wl[540].w[1]"  1;
	setAttr ".wl[541].w[1]"  1;
	setAttr ".wl[542].w[1]"  1;
	setAttr ".wl[543].w[1]"  1;
	setAttr ".wl[544].w[1]"  1;
	setAttr ".wl[545].w[1]"  1;
	setAttr ".wl[546].w[1]"  1;
	setAttr ".wl[547].w[1]"  1;
	setAttr ".wl[548].w[1]"  1;
	setAttr ".wl[549].w[1]"  1;
	setAttr ".wl[550].w[1]"  1;
	setAttr ".wl[551].w[1]"  1;
	setAttr ".wl[552].w[1]"  1;
	setAttr ".wl[553].w[1]"  1;
	setAttr ".wl[554].w[1]"  1;
	setAttr ".wl[555].w[1]"  1;
	setAttr ".wl[556].w[1]"  1;
	setAttr ".wl[557].w[1]"  1;
	setAttr ".wl[558].w[1]"  1;
	setAttr ".wl[559].w[1]"  1;
	setAttr ".wl[560].w[1]"  1;
	setAttr ".wl[561].w[1]"  1;
	setAttr ".wl[562].w[1]"  1;
	setAttr ".wl[563].w[1]"  1;
	setAttr ".wl[564].w[1]"  1;
	setAttr ".wl[565].w[1]"  1;
	setAttr ".wl[566].w[1]"  1;
	setAttr ".wl[567].w[1]"  1;
	setAttr ".wl[568].w[1]"  1;
	setAttr ".wl[569].w[1]"  1;
	setAttr ".wl[570].w[1]"  1;
	setAttr ".wl[571].w[1]"  1;
	setAttr ".wl[572].w[1]"  1;
	setAttr ".wl[573].w[1]"  1;
	setAttr ".wl[574].w[1]"  1;
	setAttr ".wl[575].w[1]"  1;
	setAttr ".wl[576].w[1]"  1;
	setAttr ".wl[577].w[1]"  1;
	setAttr ".wl[578].w[1]"  1;
	setAttr ".wl[579].w[1]"  1;
	setAttr ".wl[580].w[1]"  1;
	setAttr ".wl[581].w[1]"  1;
	setAttr ".wl[582].w[1]"  1;
	setAttr ".wl[583].w[1]"  1;
	setAttr ".wl[584].w[1]"  1;
	setAttr ".wl[585].w[1]"  1;
	setAttr ".wl[586].w[1]"  1;
	setAttr ".wl[587].w[1]"  1;
	setAttr ".wl[588].w[1]"  1;
	setAttr ".wl[589].w[1]"  1;
	setAttr ".wl[590].w[1]"  1;
	setAttr ".wl[591].w[1]"  1;
	setAttr ".wl[592].w[1]"  1;
	setAttr ".wl[593].w[1]"  1;
	setAttr ".wl[594].w[1]"  1;
	setAttr ".wl[595].w[1]"  1;
	setAttr ".wl[596].w[1]"  1;
	setAttr ".wl[597].w[1]"  1;
	setAttr ".wl[598].w[1]"  1;
	setAttr ".wl[599].w[1]"  1;
	setAttr ".wl[600].w[1]"  1;
	setAttr ".wl[601].w[1]"  1;
	setAttr ".wl[602].w[1]"  1;
	setAttr ".wl[603].w[1]"  1;
	setAttr ".wl[604].w[1]"  1;
	setAttr ".wl[605].w[1]"  1;
	setAttr ".wl[606].w[1]"  1;
	setAttr ".wl[607].w[1]"  1;
	setAttr ".wl[608].w[1]"  1;
	setAttr ".wl[609].w[1]"  1;
	setAttr ".wl[610].w[1]"  1;
	setAttr ".wl[611].w[1]"  1;
	setAttr ".wl[612].w[1]"  1;
	setAttr ".wl[613].w[1]"  1;
	setAttr ".wl[614].w[1]"  1;
	setAttr ".wl[615].w[1]"  1;
	setAttr ".wl[616].w[1]"  1;
	setAttr ".wl[617].w[1]"  1;
	setAttr ".wl[618].w[1]"  1;
	setAttr ".wl[619].w[1]"  1;
	setAttr ".wl[620].w[1]"  1;
	setAttr ".wl[621].w[1]"  1;
	setAttr ".wl[622].w[1]"  1;
	setAttr ".wl[623].w[1]"  1;
	setAttr ".wl[624].w[1]"  1;
	setAttr ".wl[625].w[1]"  1;
	setAttr ".wl[626].w[1]"  1;
	setAttr ".wl[627].w[1]"  1;
	setAttr ".wl[628].w[1]"  1;
	setAttr ".wl[629].w[1]"  1;
	setAttr ".wl[630].w[1]"  1;
	setAttr ".wl[631].w[1]"  1;
	setAttr ".wl[632].w[1]"  1;
	setAttr ".wl[633].w[1]"  1;
	setAttr ".wl[634].w[1]"  1;
	setAttr ".wl[635].w[1]"  1;
	setAttr ".wl[636].w[1]"  1;
	setAttr ".wl[637].w[1]"  1;
	setAttr ".wl[638].w[1]"  1;
	setAttr ".wl[639].w[1]"  1;
	setAttr ".wl[640].w[1]"  1;
	setAttr ".wl[641].w[1]"  1;
	setAttr ".wl[642].w[1]"  1;
	setAttr ".wl[643].w[1]"  1;
	setAttr ".wl[644].w[1]"  1;
	setAttr ".wl[645].w[1]"  1;
	setAttr ".wl[646].w[1]"  1;
	setAttr ".wl[647].w[1]"  1;
	setAttr ".wl[648].w[1]"  1;
	setAttr ".wl[649].w[1]"  1;
	setAttr ".wl[650].w[1]"  1;
	setAttr ".wl[651].w[1]"  1;
	setAttr ".wl[652].w[1]"  1;
	setAttr ".wl[653].w[1]"  1;
	setAttr ".wl[654].w[1]"  1;
	setAttr ".wl[655].w[1]"  1;
	setAttr ".wl[656].w[1]"  1;
	setAttr ".wl[657].w[1]"  1;
	setAttr ".wl[658].w[1]"  1;
	setAttr ".wl[659].w[1]"  1;
	setAttr ".wl[660].w[1]"  1;
	setAttr ".wl[661].w[1]"  1;
	setAttr ".wl[662].w[1]"  1;
	setAttr ".wl[663].w[1]"  1;
	setAttr ".wl[664].w[1]"  1;
	setAttr ".wl[665].w[1]"  1;
	setAttr ".wl[666].w[1]"  1;
	setAttr ".wl[667].w[1]"  1;
	setAttr ".wl[668].w[1]"  1;
	setAttr ".wl[669].w[1]"  1;
	setAttr ".wl[670].w[1]"  1;
	setAttr ".wl[671].w[1]"  1;
	setAttr ".wl[672].w[1]"  1;
	setAttr ".wl[673].w[1]"  1;
	setAttr ".wl[674].w[1]"  1;
	setAttr ".wl[675].w[1]"  1;
	setAttr ".wl[676].w[1]"  1;
	setAttr ".wl[677].w[1]"  1;
	setAttr ".wl[678].w[1]"  1;
	setAttr ".wl[679].w[1]"  1;
	setAttr ".wl[680].w[1]"  1;
	setAttr ".wl[681].w[1]"  1;
	setAttr ".wl[682].w[1]"  1;
	setAttr ".wl[683].w[1]"  1;
	setAttr ".wl[684].w[1]"  1;
	setAttr ".wl[685].w[1]"  1;
	setAttr ".wl[686].w[1]"  1;
	setAttr ".wl[687].w[1]"  1;
	setAttr ".wl[688].w[1]"  1;
	setAttr ".wl[689].w[1]"  1;
	setAttr ".wl[690].w[1]"  1;
	setAttr ".wl[691].w[1]"  1;
	setAttr ".wl[692].w[1]"  1;
	setAttr ".wl[693].w[1]"  1;
	setAttr ".wl[694].w[1]"  1;
	setAttr ".wl[695].w[1]"  1;
	setAttr ".wl[696].w[1]"  1;
	setAttr ".wl[697].w[1]"  1;
	setAttr ".wl[698].w[1]"  1;
	setAttr ".wl[699].w[1]"  1;
	setAttr ".wl[700].w[1]"  1;
	setAttr ".wl[701].w[1]"  1;
	setAttr ".wl[702].w[1]"  1;
	setAttr ".wl[703].w[1]"  1;
	setAttr ".wl[704].w[1]"  1;
	setAttr ".wl[705].w[1]"  1;
	setAttr ".wl[706].w[1]"  1;
	setAttr ".wl[707].w[1]"  1;
	setAttr ".wl[708].w[1]"  1;
	setAttr ".wl[709].w[1]"  1;
	setAttr ".wl[710].w[1]"  1;
	setAttr ".wl[711].w[1]"  1;
	setAttr ".wl[712].w[1]"  1;
	setAttr ".wl[713].w[1]"  1;
	setAttr ".wl[714].w[1]"  1;
	setAttr ".wl[715].w[1]"  1;
	setAttr ".wl[716].w[1]"  1;
	setAttr ".wl[717].w[1]"  1;
	setAttr ".wl[718].w[1]"  1;
	setAttr ".wl[719].w[1]"  1;
	setAttr ".wl[720].w[1]"  1;
	setAttr ".wl[721].w[1]"  1;
	setAttr ".wl[722].w[1]"  1;
	setAttr ".wl[723].w[1]"  1;
	setAttr ".wl[724].w[1]"  1;
	setAttr ".wl[725].w[1]"  1;
	setAttr ".wl[726].w[1]"  1;
	setAttr ".wl[727].w[1]"  1;
	setAttr ".wl[728].w[1]"  1;
	setAttr ".wl[729].w[1]"  1;
	setAttr ".wl[730].w[1]"  1;
	setAttr ".wl[731].w[1]"  1;
	setAttr ".wl[732].w[1]"  1;
	setAttr ".wl[733].w[1]"  1;
	setAttr ".wl[734].w[1]"  1;
	setAttr ".wl[735].w[1]"  1;
	setAttr ".wl[736].w[1]"  1;
	setAttr ".wl[737].w[1]"  1;
	setAttr ".wl[738].w[1]"  1;
	setAttr ".wl[739].w[1]"  1;
	setAttr ".wl[740].w[1]"  1;
	setAttr ".wl[741].w[1]"  1;
	setAttr ".wl[742].w[1]"  1;
	setAttr ".wl[743].w[1]"  1;
	setAttr ".wl[744].w[1]"  1;
	setAttr ".wl[745].w[1]"  1;
	setAttr ".wl[746].w[1]"  1;
	setAttr ".wl[747].w[1]"  1;
	setAttr ".wl[748].w[1]"  1;
	setAttr ".wl[749].w[1]"  1;
	setAttr ".wl[750].w[1]"  1;
	setAttr ".wl[751].w[1]"  1;
	setAttr ".wl[752].w[1]"  1;
	setAttr ".wl[753].w[1]"  1;
	setAttr ".wl[754].w[1]"  1;
	setAttr ".wl[755].w[1]"  1;
	setAttr ".wl[756].w[1]"  1;
	setAttr ".wl[757].w[1]"  1;
	setAttr ".wl[758].w[1]"  1;
	setAttr ".wl[759].w[1]"  1;
	setAttr ".wl[760].w[1]"  1;
	setAttr ".wl[761].w[1]"  1;
	setAttr ".wl[762].w[1]"  1;
	setAttr ".wl[763].w[1]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.69311293119018613 -2.7239443641761358 -0.81728243670279732 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2.6931671844843663 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  6 6;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode objectSet -n "skinCluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode rampShader -n "TrashCan_ToonShader";
	setAttr ".dc" 1;
	setAttr -s 3 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.48695650696754456;
	setAttr ".clr[1].clri" 0;
	setAttr ".clr[2].clrp" 0.87826085090637207;
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
createNode shadingEngine -n "rampShader1SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3//Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone1.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3//Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone2.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3//Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone3.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 2 ".opt";
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
createNode mentalrayOptions -s -n "miContourPreset";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
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
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[7]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[8]" "groupParts22.ig";
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[9]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[10]" "groupParts10.ig";
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[11]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[12]" "groupParts13.ig";
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[13]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[14]" "groupParts5.ig";
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[15]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[16]" "groupParts16.ig";
connectAttr "Mesh.di" "Trashcan_v2_ModelUVFinalRN.phl[17]";
connectAttr "Trashcan_v2_ModelUVFinalRN.phl[18]" "groupParts19.ig";
connectAttr "Lid_parentConstraint1.ctx" "Lid.tx";
connectAttr "Lid_parentConstraint1.cty" "Lid.ty";
connectAttr "Lid_parentConstraint1.ctz" "Lid.tz";
connectAttr "Lid_parentConstraint1.crx" "Lid.rx";
connectAttr "Lid_parentConstraint1.cry" "Lid.ry";
connectAttr "Lid_parentConstraint1.crz" "Lid.rz";
connectAttr "Lid.s" "Ball.is";
connectAttr "Ball_parentConstraint1.ctx" "Ball.tx";
connectAttr "Ball_parentConstraint1.cty" "Ball.ty";
connectAttr "Ball_parentConstraint1.ctz" "Ball.tz";
connectAttr "Ball_parentConstraint1.crx" "Ball.rx";
connectAttr "Ball_parentConstraint1.cry" "Ball.ry";
connectAttr "Ball_parentConstraint1.crz" "Ball.rz";
connectAttr "Ball.ro" "Ball_parentConstraint1.cro";
connectAttr "Ball.pim" "Ball_parentConstraint1.cpim";
connectAttr "Ball.rp" "Ball_parentConstraint1.crp";
connectAttr "Ball.rpt" "Ball_parentConstraint1.crt";
connectAttr "Ball.jo" "Ball_parentConstraint1.cjo";
connectAttr "Ball_Control.t" "Ball_parentConstraint1.tg[0].tt";
connectAttr "Ball_Control.rp" "Ball_parentConstraint1.tg[0].trp";
connectAttr "Ball_Control.rpt" "Ball_parentConstraint1.tg[0].trt";
connectAttr "Ball_Control.r" "Ball_parentConstraint1.tg[0].tr";
connectAttr "Ball_Control.ro" "Ball_parentConstraint1.tg[0].tro";
connectAttr "Ball_Control.s" "Ball_parentConstraint1.tg[0].ts";
connectAttr "Ball_Control.pm" "Ball_parentConstraint1.tg[0].tpm";
connectAttr "Ball_parentConstraint1.w0" "Ball_parentConstraint1.tg[0].tw";
connectAttr "Lid.ro" "Lid_parentConstraint1.cro";
connectAttr "Lid.pim" "Lid_parentConstraint1.cpim";
connectAttr "Lid.rp" "Lid_parentConstraint1.crp";
connectAttr "Lid.rpt" "Lid_parentConstraint1.crt";
connectAttr "Lid.jo" "Lid_parentConstraint1.cjo";
connectAttr "Lid_Control.t" "Lid_parentConstraint1.tg[0].tt";
connectAttr "Lid_Control.rp" "Lid_parentConstraint1.tg[0].trp";
connectAttr "Lid_Control.rpt" "Lid_parentConstraint1.tg[0].trt";
connectAttr "Lid_Control.r" "Lid_parentConstraint1.tg[0].tr";
connectAttr "Lid_Control.ro" "Lid_parentConstraint1.tg[0].tro";
connectAttr "Lid_Control.s" "Lid_parentConstraint1.tg[0].ts";
connectAttr "Lid_Control.pm" "Lid_parentConstraint1.tg[0].tpm";
connectAttr "Lid_parentConstraint1.w0" "Lid_parentConstraint1.tg[0].tw";
connectAttr "JointX.out[0]" "Base.sx";
connectAttr "JointY.out[0]" "Base.sy";
connectAttr "JointZ.out[0]" "Base.sz";
connectAttr "Base_parentConstraint1.ctx" "Base.tx";
connectAttr "Base_parentConstraint1.cty" "Base.ty";
connectAttr "Base_parentConstraint1.ctz" "Base.tz";
connectAttr "Base_parentConstraint1.crx" "Base.rx";
connectAttr "Base_parentConstraint1.cry" "Base.ry";
connectAttr "Base_parentConstraint1.crz" "Base.rz";
connectAttr "Base.ro" "Base_parentConstraint1.cro";
connectAttr "Base.pim" "Base_parentConstraint1.cpim";
connectAttr "Base.rp" "Base_parentConstraint1.crp";
connectAttr "Base.rpt" "Base_parentConstraint1.crt";
connectAttr "Base.jo" "Base_parentConstraint1.cjo";
connectAttr "Base_Control.t" "Base_parentConstraint1.tg[0].tt";
connectAttr "Base_Control.rp" "Base_parentConstraint1.tg[0].trp";
connectAttr "Base_Control.rpt" "Base_parentConstraint1.tg[0].trt";
connectAttr "Base_Control.r" "Base_parentConstraint1.tg[0].tr";
connectAttr "Base_Control.ro" "Base_parentConstraint1.tg[0].tro";
connectAttr "Base_Control.s" "Base_parentConstraint1.tg[0].ts";
connectAttr "Base_Control.pm" "Base_parentConstraint1.tg[0].tpm";
connectAttr "Base_parentConstraint1.w0" "Base_parentConstraint1.tg[0].tw";
connectAttr "Lower_Ring_parentConstraint1.ctx" "Lower_Ring.tx";
connectAttr "Lower_Ring_parentConstraint1.cty" "Lower_Ring.ty";
connectAttr "Lower_Ring_parentConstraint1.ctz" "Lower_Ring.tz";
connectAttr "Lower_Ring_parentConstraint1.crx" "Lower_Ring.rx";
connectAttr "Lower_Ring_parentConstraint1.cry" "Lower_Ring.ry";
connectAttr "Lower_Ring_parentConstraint1.crz" "Lower_Ring.rz";
connectAttr "Lower_Ring.ro" "Lower_Ring_parentConstraint1.cro";
connectAttr "Lower_Ring.pim" "Lower_Ring_parentConstraint1.cpim";
connectAttr "Lower_Ring.rp" "Lower_Ring_parentConstraint1.crp";
connectAttr "Lower_Ring.rpt" "Lower_Ring_parentConstraint1.crt";
connectAttr "Lower_Ring.jo" "Lower_Ring_parentConstraint1.cjo";
connectAttr "LowerRing_Control.t" "Lower_Ring_parentConstraint1.tg[0].tt";
connectAttr "LowerRing_Control.rp" "Lower_Ring_parentConstraint1.tg[0].trp";
connectAttr "LowerRing_Control.rpt" "Lower_Ring_parentConstraint1.tg[0].trt";
connectAttr "LowerRing_Control.r" "Lower_Ring_parentConstraint1.tg[0].tr";
connectAttr "LowerRing_Control.ro" "Lower_Ring_parentConstraint1.tg[0].tro";
connectAttr "LowerRing_Control.s" "Lower_Ring_parentConstraint1.tg[0].ts";
connectAttr "LowerRing_Control.pm" "Lower_Ring_parentConstraint1.tg[0].tpm";
connectAttr "Lower_Ring_parentConstraint1.w0" "Lower_Ring_parentConstraint1.tg[0].tw"
		;
connectAttr "Upper_Ring_parentConstraint1.ctx" "Upper_Ring.tx";
connectAttr "Upper_Ring_parentConstraint1.cty" "Upper_Ring.ty";
connectAttr "Upper_Ring_parentConstraint1.ctz" "Upper_Ring.tz";
connectAttr "Upper_Ring_parentConstraint1.crx" "Upper_Ring.rx";
connectAttr "Upper_Ring_parentConstraint1.cry" "Upper_Ring.ry";
connectAttr "Upper_Ring_parentConstraint1.crz" "Upper_Ring.rz";
connectAttr "Upper_Ring.ro" "Upper_Ring_parentConstraint1.cro";
connectAttr "Upper_Ring.pim" "Upper_Ring_parentConstraint1.cpim";
connectAttr "Upper_Ring.rp" "Upper_Ring_parentConstraint1.crp";
connectAttr "Upper_Ring.rpt" "Upper_Ring_parentConstraint1.crt";
connectAttr "Upper_Ring.jo" "Upper_Ring_parentConstraint1.cjo";
connectAttr "UpperRing_Control.t" "Upper_Ring_parentConstraint1.tg[0].tt";
connectAttr "UpperRing_Control.rp" "Upper_Ring_parentConstraint1.tg[0].trp";
connectAttr "UpperRing_Control.rpt" "Upper_Ring_parentConstraint1.tg[0].trt";
connectAttr "UpperRing_Control.r" "Upper_Ring_parentConstraint1.tg[0].tr";
connectAttr "UpperRing_Control.ro" "Upper_Ring_parentConstraint1.tg[0].tro";
connectAttr "UpperRing_Control.s" "Upper_Ring_parentConstraint1.tg[0].ts";
connectAttr "UpperRing_Control.pm" "Upper_Ring_parentConstraint1.tg[0].tpm";
connectAttr "Upper_Ring_parentConstraint1.w0" "Upper_Ring_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Eye_parentConstraint1.ctx" "R_Eye.tx";
connectAttr "R_Eye_parentConstraint1.cty" "R_Eye.ty";
connectAttr "R_Eye_parentConstraint1.ctz" "R_Eye.tz";
connectAttr "R_Eye_parentConstraint1.crx" "R_Eye.rx";
connectAttr "R_Eye_parentConstraint1.cry" "R_Eye.ry";
connectAttr "R_Eye_parentConstraint1.crz" "R_Eye.rz";
connectAttr "R_Eye.ro" "R_Eye_parentConstraint1.cro";
connectAttr "R_Eye.pim" "R_Eye_parentConstraint1.cpim";
connectAttr "R_Eye.rp" "R_Eye_parentConstraint1.crp";
connectAttr "R_Eye.rpt" "R_Eye_parentConstraint1.crt";
connectAttr "R_Eye.jo" "R_Eye_parentConstraint1.cjo";
connectAttr "R_Eye_Control.t" "R_Eye_parentConstraint1.tg[0].tt";
connectAttr "R_Eye_Control.rp" "R_Eye_parentConstraint1.tg[0].trp";
connectAttr "R_Eye_Control.rpt" "R_Eye_parentConstraint1.tg[0].trt";
connectAttr "R_Eye_Control.r" "R_Eye_parentConstraint1.tg[0].tr";
connectAttr "R_Eye_Control.ro" "R_Eye_parentConstraint1.tg[0].tro";
connectAttr "R_Eye_Control.s" "R_Eye_parentConstraint1.tg[0].ts";
connectAttr "R_Eye_Control.pm" "R_Eye_parentConstraint1.tg[0].tpm";
connectAttr "R_Eye_parentConstraint1.w0" "R_Eye_parentConstraint1.tg[0].tw";
connectAttr "L_Eye_parentConstraint1.ctx" "L_Eye.tx";
connectAttr "L_Eye_parentConstraint1.cty" "L_Eye.ty";
connectAttr "L_Eye_parentConstraint1.ctz" "L_Eye.tz";
connectAttr "L_Eye_parentConstraint1.crx" "L_Eye.rx";
connectAttr "L_Eye_parentConstraint1.cry" "L_Eye.ry";
connectAttr "L_Eye_parentConstraint1.crz" "L_Eye.rz";
connectAttr "L_Eye.ro" "L_Eye_parentConstraint1.cro";
connectAttr "L_Eye.pim" "L_Eye_parentConstraint1.cpim";
connectAttr "L_Eye.rp" "L_Eye_parentConstraint1.crp";
connectAttr "L_Eye.rpt" "L_Eye_parentConstraint1.crt";
connectAttr "L_Eye.jo" "L_Eye_parentConstraint1.cjo";
connectAttr "L_Eye_Control.t" "L_Eye_parentConstraint1.tg[0].tt";
connectAttr "L_Eye_Control.rp" "L_Eye_parentConstraint1.tg[0].trp";
connectAttr "L_Eye_Control.rpt" "L_Eye_parentConstraint1.tg[0].trt";
connectAttr "L_Eye_Control.r" "L_Eye_parentConstraint1.tg[0].tr";
connectAttr "L_Eye_Control.ro" "L_Eye_parentConstraint1.tg[0].tro";
connectAttr "L_Eye_Control.s" "L_Eye_parentConstraint1.tg[0].ts";
connectAttr "L_Eye_Control.pm" "L_Eye_parentConstraint1.tg[0].tpm";
connectAttr "L_Eye_parentConstraint1.w0" "L_Eye_parentConstraint1.tg[0].tw";
connectAttr "transformGeometry6.og" "Base_ControlShape.cr";
connectAttr "transformGeometry7.og" "SquashShape.cr";
connectAttr "transformGeometry2.og" "Lid_ControlShape.cr";
connectAttr "transformGeometry3.og" "LowerRing_ControlShape.cr";
connectAttr "transformGeometry4.og" "UpperRing_ControlShape.cr";
connectAttr "transformGeometry9.og" "R_Eye_ControlShape.cr";
connectAttr "transformGeometry8.og" "L_Eye_ControlShape.cr";
connectAttr "transformGeometry5.og" "Ball_ControlShape.cr";
connectAttr "X_Scale_Nurb.out[0]" "BottomSQ.sx";
connectAttr "Z_Scale_Nurb.out[0]" "BottomSQ.sz";
connectAttr "Y_Scale_Nurb.out[0]" "BottomSQ.sy";
connectAttr "transformGeometry10.og" "BottomSQShape.cr";
connectAttr "joint1_parentConstraint1.ctx" "Top_o_the_Bottom.tx";
connectAttr "joint1_parentConstraint1.cty" "Top_o_the_Bottom.ty";
connectAttr "joint1_parentConstraint1.ctz" "Top_o_the_Bottom.tz";
connectAttr "joint1_parentConstraint1.crx" "Top_o_the_Bottom.rx";
connectAttr "joint1_parentConstraint1.cry" "Top_o_the_Bottom.ry";
connectAttr "joint1_parentConstraint1.crz" "Top_o_the_Bottom.rz";
connectAttr "Top_o_the_Bottom.ro" "joint1_parentConstraint1.cro";
connectAttr "Top_o_the_Bottom.pim" "joint1_parentConstraint1.cpim";
connectAttr "Top_o_the_Bottom.rp" "joint1_parentConstraint1.crp";
connectAttr "Top_o_the_Bottom.rpt" "joint1_parentConstraint1.crt";
connectAttr "Top_o_the_Bottom.jo" "joint1_parentConstraint1.cjo";
connectAttr "Squash.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "Squash.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "Squash.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "Squash.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "Squash.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "Squash.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "Squash.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "groupId19.id" "R_EyeShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "R_EyeShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster10GroupId.id" "R_EyeShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster10Set.mwc" "R_EyeShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster10.og[0]" "R_EyeShapeDeformed.i";
connectAttr "tweak7.vl[0].vt[0]" "R_EyeShapeDeformed.twl";
connectAttr "groupId16.id" "L_EyeShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "L_EyeShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster9GroupId.id" "L_EyeShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster9Set.mwc" "L_EyeShapeDeformed.iog.og[3].gco";
connectAttr "skinCluster9.og[0]" "L_EyeShapeDeformed.i";
connectAttr "tweak6.vl[0].vt[0]" "L_EyeShapeDeformed.twl";
connectAttr "groupId5.id" "TopShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "TopShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster8GroupId.id" "TopShapeDeformed.iog.og[5].gid";
connectAttr "skinCluster8Set.mwc" "TopShapeDeformed.iog.og[5].gco";
connectAttr "skinCluster8.og[0]" "TopShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "TopShapeDeformed.twl";
connectAttr "skinCluster4GroupId.id" "L_RingShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "L_RingShapeDeformed.iog.og[0].gco";
connectAttr "groupId13.id" "L_RingShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "L_RingShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster4.og[0]" "L_RingShapeDeformed.i";
connectAttr "tweak5.vl[0].vt[0]" "L_RingShapeDeformed.twl";
connectAttr "skinCluster3GroupId.id" "U_RingShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster3Set.mwc" "U_RingShapeDeformed.iog.og[0].gco";
connectAttr "groupId10.id" "U_RingShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "U_RingShapeDeformed.iog.og[1].gco";
connectAttr "skinCluster3.og[0]" "U_RingShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "U_RingShapeDeformed.twl";
connectAttr "skinCluster7GroupId.id" "BottomShapeDeformed.iog.og[6].gid";
connectAttr "skinCluster7Set.mwc" "BottomShapeDeformed.iog.og[6].gco";
connectAttr "groupId22.id" "BottomShapeDeformed.iog.og[7].gid";
connectAttr "tweakSet8.mwc" "BottomShapeDeformed.iog.og[7].gco";
connectAttr "skinCluster7.og[0]" "BottomShapeDeformed.i";
connectAttr "tweak8.vl[0].vt[0]" "BottomShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rampShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rampShader1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Trashcan_v2_ModelUVFinalRNfosterParent1.msg" "Trashcan_v2_ModelUVFinalRN.fp"
		;
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "TopShapeDeformed.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "Base.msg" "bindPose1.m[0]";
connectAttr "Top_o_the_Bottom.msg" "bindPose1.m[3]";
connectAttr "WholeCan.msg" "bindPose1.m[4]";
connectAttr "Lid.msg" "bindPose1.m[5]";
connectAttr "Ball.msg" "bindPose1.m[6]";
connectAttr "L_Eye.msg" "bindPose1.m[7]";
connectAttr "R_Eye.msg" "bindPose1.m[8]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[4]" "bindPose1.p[1]";
connectAttr "Lid.msg" "bindPose1.p[2]";
connectAttr "bindPose1.w" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "Lid.msg" "bindPose1.p[6]";
connectAttr "bindPose1.m[4]" "bindPose1.p[7]";
connectAttr "bindPose1.m[4]" "bindPose1.p[8]";
connectAttr "Base.bps" "bindPose1.wm[0]";
connectAttr "Top_o_the_Bottom.bps" "bindPose1.wm[3]";
connectAttr "Lid.bps" "bindPose1.wm[5]";
connectAttr "Ball.bps" "bindPose1.wm[6]";
connectAttr "L_Eye.bps" "bindPose1.wm[7]";
connectAttr "R_Eye.bps" "bindPose1.wm[8]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster3.bp";
connectAttr "Upper_Ring.wm" "skinCluster3.ma[0]";
connectAttr "Upper_Ring.liw" "skinCluster3.lw[0]";
connectAttr "Upper_Ring.obcc" "skinCluster3.ifcl[0]";
connectAttr "groupParts10.og" "tweak4.ip[0].ig";
connectAttr "groupId10.id" "tweak4.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "U_RingShapeDeformed.iog.og[0]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet4.gn" -na;
connectAttr "U_RingShapeDeformed.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "Upper_Ring.msg" "bindPose2.m[0]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "Upper_Ring.bps" "bindPose2.wm[0]";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster4.bp";
connectAttr "Lower_Ring.wm" "skinCluster4.ma[0]";
connectAttr "Lower_Ring.liw" "skinCluster4.lw[0]";
connectAttr "Lower_Ring.obcc" "skinCluster4.ifcl[0]";
connectAttr "groupParts13.og" "tweak5.ip[0].ig";
connectAttr "groupId13.id" "tweak5.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "L_RingShapeDeformed.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId13.msg" "tweakSet5.gn" -na;
connectAttr "L_RingShapeDeformed.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "Lower_Ring.msg" "bindPose3.m[0]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "Lower_Ring.bps" "bindPose3.wm[0]";
connectAttr "groupParts16.og" "tweak6.ip[0].ig";
connectAttr "groupId16.id" "tweak6.ip[0].gi";
connectAttr "groupId16.msg" "tweakSet6.gn" -na;
connectAttr "L_EyeShapeDeformed.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "groupParts19.og" "tweak7.ip[0].ig";
connectAttr "groupId19.id" "tweak7.ip[0].gi";
connectAttr "groupId19.msg" "tweakSet7.gn" -na;
connectAttr "R_EyeShapeDeformed.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "groupId19.id" "groupParts19.gi";
connectAttr "transformGeometry1.og" "transformGeometry6.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle6.oc" "transformGeometry7.ig";
connectAttr "makeNurbCircle1.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle8.oc" "transformGeometry9.ig";
connectAttr "makeNurbCircle7.oc" "transformGeometry8.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry4.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry5.ig";
connectAttr "makeNurbCircle9.oc" "transformGeometry10.ig";
connectAttr "BottomSQ.sx" "JointX.in[0]";
connectAttr ":time1.o" "JointX.tim";
connectAttr "Base.msg" "JointX.obm";
connectAttr "BottomSQ.sz" "JointZ.in[0]";
connectAttr ":time1.o" "JointZ.tim";
connectAttr "Base.msg" "JointZ.obm";
connectAttr "Squash.ty" "X_Scale_Nurb.in[0]";
connectAttr ":time1.o" "X_Scale_Nurb.tim";
connectAttr "BottomSQ.msg" "X_Scale_Nurb.obm";
connectAttr "Squash.ty" "Z_Scale_Nurb.in[0]";
connectAttr ":time1.o" "Z_Scale_Nurb.tim";
connectAttr "BottomSQ.msg" "Z_Scale_Nurb.obm";
connectAttr "BottomSQ.sy" "JointY.in[0]";
connectAttr ":time1.o" "JointY.tim";
connectAttr "Base.msg" "JointY.obm";
connectAttr "Squash.ty" "Y_Scale_Nurb.in[0]";
connectAttr ":time1.o" "Y_Scale_Nurb.tim";
connectAttr "BottomSQ.msg" "Y_Scale_Nurb.obm";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "Top_o_the_Bottom.wm" "skinCluster7.ma[0]";
connectAttr "Base.wm" "skinCluster7.ma[1]";
connectAttr "Top_o_the_Bottom.liw" "skinCluster7.lw[0]";
connectAttr "Base.liw" "skinCluster7.lw[1]";
connectAttr "Top_o_the_Bottom.obcc" "skinCluster7.ifcl[0]";
connectAttr "Base.obcc" "skinCluster7.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster7.bp";
connectAttr "Top_o_the_Bottom.msg" "skinCluster7.ptt";
connectAttr "groupParts22.og" "tweak8.ip[0].ig";
connectAttr "groupId22.id" "tweak8.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "BottomShapeDeformed.iog.og[6]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet8.gn" -na;
connectAttr "BottomShapeDeformed.iog.og[7]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "Base.wm" "skinCluster8.ma[0]";
connectAttr "Top_o_the_Bottom.wm" "skinCluster8.ma[1]";
connectAttr "Lid.wm" "skinCluster8.ma[2]";
connectAttr "Ball.wm" "skinCluster8.ma[3]";
connectAttr "Base.liw" "skinCluster8.lw[0]";
connectAttr "Top_o_the_Bottom.liw" "skinCluster8.lw[1]";
connectAttr "Lid.liw" "skinCluster8.lw[2]";
connectAttr "Ball.liw" "skinCluster8.lw[3]";
connectAttr "Base.obcc" "skinCluster8.ifcl[0]";
connectAttr "Top_o_the_Bottom.obcc" "skinCluster8.ifcl[1]";
connectAttr "Lid.obcc" "skinCluster8.ifcl[2]";
connectAttr "Ball.obcc" "skinCluster8.ifcl[3]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "TopShapeDeformed.iog.og[5]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "layerManager.dli[2]" "Mesh.id";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "L_Eye.wm" "skinCluster9.ma[0]";
connectAttr "Lid.wm" "skinCluster9.ma[1]";
connectAttr "L_Eye.liw" "skinCluster9.lw[0]";
connectAttr "Lid.liw" "skinCluster9.lw[1]";
connectAttr "L_Eye.obcc" "skinCluster9.ifcl[0]";
connectAttr "Lid.obcc" "skinCluster9.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster9.bp";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "L_EyeShapeDeformed.iog.og[3]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "skinCluster10GroupParts.og" "skinCluster10.ip[0].ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10.ip[0].gi";
connectAttr "R_Eye.wm" "skinCluster10.ma[0]";
connectAttr "Lid.wm" "skinCluster10.ma[1]";
connectAttr "R_Eye.liw" "skinCluster10.lw[0]";
connectAttr "Lid.liw" "skinCluster10.lw[1]";
connectAttr "R_Eye.obcc" "skinCluster10.ifcl[0]";
connectAttr "Lid.obcc" "skinCluster10.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "skinCluster10GroupId.msg" "skinCluster10Set.gn" -na;
connectAttr "R_EyeShapeDeformed.iog.og[3]" "skinCluster10Set.dsm" -na;
connectAttr "skinCluster10.msg" "skinCluster10Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster10GroupParts.ig";
connectAttr "skinCluster10GroupId.id" "skinCluster10GroupParts.gi";
connectAttr "file1.oc" "TrashCan_ToonShader.clr[0].clrc";
connectAttr "file2.oc" "TrashCan_ToonShader.clr[1].clrc";
connectAttr "file3.oc" "TrashCan_ToonShader.clr[2].clrc";
connectAttr "TrashCan_ToonShader.oc" "rampShader1SG.ss";
connectAttr "R_EyeShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "L_EyeShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "TopShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "L_RingShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "U_RingShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "BottomShapeDeformed.iog" "rampShader1SG.dsm" -na;
connectAttr "rampShader1SG.msg" "materialInfo1.sg";
connectAttr "TrashCan_ToonShader.msg" "materialInfo1.m";
connectAttr "TrashCan_ToonShader.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "rampShader1SG.pa" ":renderPartition.st" -na;
connectAttr "TrashCan_ToonShader.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Trashcan_v2_ModelUVFinalRN\" \"\" \"/Users/publicuser/Desktop/Trashcan-Rig/Trashcan_v2_ModelUVFinal.ma\" 4195904706 \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan_v2_ModelUVFinal.ma\" \"FileRef\"\n1\n\"file1\" \"fileTextureName\" \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone1.jpg\" 1577763648 \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone1.jpg\" \"sourceImages\"\n2\n\"file2\" \"fileTextureName\" \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone2.jpg\" 430619024 \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone2.jpg\" \"sourceImages\"\n3\n\"file3\" \"fileTextureName\" \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone3.jpg\" 617254944 \"/Users/publicuser/Desktop/Aislynns Stuff/Game Studio Things/Animation_Reference Files/Animation_Reference File_v3/Trashcan Project Folder/Trashcan Textures/Trashcan_v1_Textwip_2_CrossedCircle_newcolors2_tone3.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Trashcan_v1_RigFinal.ma
