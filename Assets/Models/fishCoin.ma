//Maya ASCII 2016 scene
//Name: fishCoin.ma
//Last modified: Sun, Apr 24, 2016 01:11:36 AM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "F8B04145-304E-F32D-0F35-70A233871E15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.89230995889401843 0.54860449885278917 1.1160695821409137 ;
	setAttr ".r" -type "double3" -11.138352727065202 754.59999999986951 -4.8299328079765176e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "393BB4C7-3C42-F1C4-8B2E-F08E9BA81CB7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1.813491183666103;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "57EFBC0D-154E-658E-6A0C-AFB223C0C084";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "89A2F9B2-0848-7AE6-F737-B6A3D3EF7A40";
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
	rename -uid "D4F03A39-2249-06D9-DEF6-B9AF453188F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "22F6B4D9-F84D-8F50-8B13-52832241C2CA";
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
	rename -uid "F0DCE18A-ED4A-C23A-1FFC-2FA6D904944F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "666F3F2F-4E46-DAC6-BF3A-C0B9BD02B80E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "8497283D-9E47-C3F4-8E38-3D85B330A95C";
	setAttr ".t" -type "double3" 0.013827106874776904 0.013081204480012782 -0.00013327448646320225 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "79E69C78-6E4E-CAA2-1136-D5AF49DD6BCE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "null1";
	rename -uid "2C6DF1B7-D246-170B-516B-219BE9BC6334";
createNode transform -n "group1";
	rename -uid "714DE736-7743-2041-CE53-169AB3755017";
createNode transform -n "group2" -p "group1";
	rename -uid "BC39DD15-894B-EE2E-2475-A495EF7A9C55";
createNode transform -n "pTorus1" -p "group2";
	rename -uid "52C167B2-A143-50B5-E9F6-3081DD9E4781";
	setAttr ".t" -type "double3" -0.10920049893816111 0.81963617792889798 -1.4780769539450669 ;
	setAttr ".s" -type "double3" 0.55558441383593182 0.39059181482524286 0.49596157518189982 ;
createNode transform -n "transform2" -p "pTorus1";
	rename -uid "7CD3E91F-CF49-23CE-4A1A-208215072AA8";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform2";
	rename -uid "374DB015-0C4A-0E62-700B-00B5748B5BAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pPipe1" -p "group2";
	rename -uid "2EDD6D08-864F-19DD-F076-4C84F1D26697";
	setAttr ".t" -type "double3" -0.11228257846595341 0.3941222849982548 -1.4789427677473035 ;
createNode transform -n "transform1" -p "pPipe1";
	rename -uid "02FE47EC-C243-DA80-B716-D2A8A4FE236A";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform1";
	rename -uid "DE4B28B6-D240-FB50-8C08-06A64E291A46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.28625839948654175 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pCylinder2";
	rename -uid "A4CA1D5B-4642-42DF-4AC0-52A3364D6158";
	setAttr ".t" -type "double3" -0.32336508131841712 0.43542103767881285 -1.8899970293636779 ;
createNode transform -n "transform3" -p "pCylinder2";
	rename -uid "B3814CEF-3941-0CA2-EC3C-F9B258696F24";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform3";
	rename -uid "5B091CCB-1647-ED4C-6FE8-1A98B87C7B2E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pCube1";
	rename -uid "63DBD0D2-6241-3D55-6988-14BD64AA6FF8";
	setAttr ".t" -type "double3" 2.501389270432941 0.15079487891079707 0.054158820640612948 ;
	setAttr ".s" -type "double3" 0.89815976451539115 1 1 ;
createNode transform -n "transform7" -p "pCube1";
	rename -uid "2F9DF50B-DD4B-8B5B-0E5A-FE8B71EEBB06";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform7";
	rename -uid "89765563-9A4D-FC14-B8C4-F7B9BD6E540A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pCube2";
	rename -uid "21162690-2A45-9CEE-FF11-FE8C2EE8A92C";
	setAttr ".t" -type "double3" 2.5080501069445589 0.4192105849936662 0.054158820640612948 ;
	setAttr ".s" -type "double3" 0.55134593993383019 0.82776986463060465 1 ;
createNode transform -n "transform6" -p "pCube2";
	rename -uid "0DFFDF0A-484A-1441-AD47-3486219EA54E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform6";
	rename -uid "23BF5352-914C-1A9D-C170-63B50A5A91D9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.625 0 0.375 0.75 0.875 0 0.125 0 0.37499997 -6.8599597e-09 0.38431755
		 0.266276 0.375 0.25 0.37361053 0.22311366 0.37266001 0.19720477 0.39455906 0.28341225
		 0.62638944 0.22311366 0.625 0.25 0.61568242 0.266276 0.60544097 0.28341225 0.62734002
		 0.19720477 0.375 0.52902699 0.125 0.220973 0.375 0.5 0.125 0.25 0.38431755 0.483724
		 0.39455906 0.46658775 0.375 0.55487943 0.125 0.19512057 0.625 0.52902699 0.875 0.220973
		 0.625 0.5 0.875 0.25 0.61568242 0.483724 0.60544097 0.46658775 0.875 0.19512057 0.625
		 0.55487943;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.3746531 -0.15079488 0.23163764 0.3746531 -0.15079488 0.23163764
		 -0.3746531 -0.15079488 -0.23163766 0.3746531 -0.15079488 -0.23163766 -0.32811379 0.14505617 0.1850982
		 -0.35257196 0.12871368 0.20955645 -0.36891437 0.10425545 0.22589894 -0.3746531 0.075404972 0.23163764
		 -0.29926324 0.15079488 0.15624774 0.36891437 0.10425545 0.22589894 0.35257196 0.12871368 0.20955645
		 0.32811379 0.14505617 0.1850982 0.29926324 0.15079488 0.15624774 0.3746531 0.075404972 0.23163764
		 -0.36891437 0.10425545 -0.22589894 -0.35257196 0.12871368 -0.20955646 -0.32811379 0.14505617 -0.18509822
		 -0.29926324 0.15079488 -0.15624776 -0.3746531 0.075404972 -0.23163766 0.36891437 0.10425545 -0.22589894
		 0.35257196 0.12871368 -0.20955646 0.32811379 0.14505617 -0.18509822 0.29926324 0.15079488 -0.15624776
		 0.3746531 0.075404972 -0.23163766;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 2 0 0 3 1 0 7 6 0 6 14 1 14 18 0
		 18 7 1 6 5 0 5 15 1 15 14 0 5 4 0 4 16 1 16 15 0 4 8 1 8 17 1 17 16 1 4 11 1 11 12 1
		 12 8 1 5 10 1 10 11 0 6 9 1 9 10 0 7 13 1 13 9 0 11 21 1 21 22 1 22 12 1 10 20 1
		 20 21 0 9 19 1 19 20 0 13 23 1 23 19 0 14 19 1 23 18 1 15 20 1 16 21 1 17 22 1 1 13 0
		 7 0 0 23 3 0 2 18 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 4 0 2 1
		f 4 4 5 6 7
		mu 0 4 11 10 19 25
		f 4 8 9 10 -6
		mu 0 4 10 9 21 19
		f 4 11 12 13 -10
		mu 0 4 9 8 22 20
		f 4 14 15 16 -13
		mu 0 4 8 12 23 22
		f 4 -15 17 18 19
		mu 0 4 12 8 15 16
		f 4 -12 20 21 -18
		mu 0 4 8 9 14 15
		f 4 -9 22 23 -21
		mu 0 4 9 10 13 14
		f 4 -5 24 25 -23
		mu 0 4 10 11 17 13
		f 4 -19 26 27 28
		mu 0 4 16 15 30 31
		f 4 -22 29 30 -27
		mu 0 4 15 14 28 30
		f 4 -24 31 32 -30
		mu 0 4 14 13 27 29
		f 4 -26 33 34 -32
		mu 0 4 13 17 32 27
		f 4 -7 35 -35 36
		mu 0 4 24 18 26 33
		f 4 -11 37 -33 -36
		mu 0 4 18 20 28 26
		f 4 -14 38 -31 -38
		mu 0 4 20 22 30 28
		f 4 -17 39 -28 -39
		mu 0 4 22 23 31 30
		f 4 0 40 -25 41
		mu 0 4 7 3 17 11
		f 4 -20 -29 -40 -16
		mu 0 4 12 16 31 23
		f 4 -37 42 -2 43
		mu 0 4 24 33 0 4
		f 4 -4 -43 -34 -41
		mu 0 4 3 5 32 17
		f 4 2 -42 -8 -44
		mu 0 4 6 7 11 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
createNode transform -n "pPipe2";
	rename -uid "21C750FD-FB4D-D638-3525-6DA870617ADA";
	setAttr ".t" -type "double3" 2.5265517412129288 0.65992609398616364 0.08439691215538625 ;
createNode transform -n "transform5" -p "pPipe2";
	rename -uid "FC7A7C3C-5A47-00BE-F99D-91ABEA2A1A08";
	setAttr ".v" no;
createNode mesh -n "pPipeShape2" -p "transform5";
	rename -uid "513DFB47-0B4B-4A60-863D-3C9E3907204D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pCone1";
	rename -uid "145DADFE-CD4C-F834-B3DA-05A385EACCBC";
	setAttr ".t" -type "double3" 2.5266429400729957 0.88135198574936346 0.11447546493550087 ;
	setAttr ".s" -type "double3" 0.24194364824628659 0.70337854119639431 1 ;
createNode transform -n "transform4" -p "pCone1";
	rename -uid "102515E9-574E-42C3-02A4-04ACF6A7CF2E";
	setAttr ".v" no;
createNode mesh -n "pConeShape1" -p "transform4";
	rename -uid "A502DF07-9749-A28D-2AE6-34BF2A87E1F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.25000127591192722 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 261 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0.010186804 0 0 0.010186804 0 0 0.010186804 
		0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 
		0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 
		0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 0 0 0.010186804 
		0 0 0.010186804 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 
		0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 
		0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 0 0.030572828 0 
		0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 
		0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 
		0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 
		0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 
		0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 
		0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 
		0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 
		0.028516786 0 0 0.028516786 0 0 0.028516786 0 0 0.035825096 0 -0.016843036 -0.0059715891 
		0.007451267 0 0.010186804 0 -0.014327513 -0.0059715891 0.014173185 0 0.010186804 
		0 -0.010409531 -0.0059715891 0.019507732;
	setAttr ".pt[166:260]" 0 0.010186804 0 -0.0054726312 -0.0059715891 0.022932654 
		0 0.010186804 0 0 -0.0059715891 0.02411285 0 0.010186804 0 0.0054726312 -0.0059715891 
		0.022932686 0 0.010186804 0 0.010409531 -0.0059715891 0.019507701 0 0.010186804 0 
		0.014327513 -0.0059715891 0.014173185 0 0.010186804 0 0.016843036 -0.0059715891 0.007451267 
		0 0.010186804 0 0.01770981 -0.0059715891 -1.5339559e-08 0 0.010186804 0 0.016843036 
		-0.0059715891 -0.0074512982 0 0.010186804 0 0.014327513 -0.0059715891 -0.014173215 
		0 0.010186804 0 0.010409531 -0.0059715891 -0.019507732 0 0.010186804 0 0.0054726312 
		-0.0059715891 -0.022932686 0 0.010186804 0 0 -0.0059715891 -0.02411285 0 0.010186804 
		0 -0.0054726312 -0.0059715891 -0.022932686 0 0.010186804 0 -0.010409531 -0.0059715891 
		-0.019507732 0 0.010186804 0 -0.014327513 -0.0059715891 -0.014173215 0 0.010186804 
		0 -0.016843036 -0.0059715891 -0.0074512982 0 0.010186804 0 -0.01770981 -0.0059715891 
		-1.5339559e-08 0 0.010186804 0 -0.0026064245 0.0037610412 0 0 0.010186804 0 -0.0047451784 
		0 0.0012036059 -0.0026064264 0.0037610414 0 -0.0050087147 0 4.7639439e-08 0 0.010186804 
		0 -0.0026064264 0.0037610417 0 0 0.010186804 0 -0.0039935722 0 0.0022664282 -0.0026064268 
		0.0037610419 0 0 0.010186804 0 -0.00286105 0 0.0030797604 -0.0026064254 0.0037610417 
		-9.3132257e-10 0 0.010186804 0 -0.0014856524 0 0.0035813765 -0.0026064259 0.0037610414 
		-9.3132257e-10 0 0.010186804 0 0 0 0.0037490355 -0.0026064257 0.0037610417 0 0 0.010186804 
		0 0.0014856524 0 0.0035813809 -0.0026064273 0.0037610412 0 0 0.010186804 0 0.00286105 
		0 0.0030797559 -0.0026064273 0.0037610417 0 0 0.010186804 0 0.0039935722 0 0.0022664235 
		-0.0026064282 0.0037610412 0 0 0.010186804 0 0.0047451784 0 0.0012036059 -0.0026064273 
		0.0037610414 0 0 0.010186804 0 0.0050087147 0 4.7639439e-08 -0.0026064273 0.0037610417 
		0 0 0.010186804 0 0.0047453707 0 -0.001203506 -0.0026064254 0.0037610412 9.3132257e-10 
		0 0.010186804 0 0.0039940011 0 -0.0022663509 -0.0026064236 0.0037610417 0 0 0.010186804 
		0 0.002861446 0 -0.0030797468 -0.0026064247 0.0037610412 -9.3132257e-10 0 0.010186804 
		0 0.0014858334 0 -0.0035813991 -0.0026064259 0.0037610412 9.3132257e-10 0 0.010186804 
		0 0 0 -0.0037490355 -0.0026064259 0.0037610412 -9.3132257e-10 0 0.010186804 0 -0.0014858334 
		0 -0.0035813991 -0.0026064264 0.0037610417 0 0 0.010186804 0 -0.002861446 0 -0.0030797468 
		-0.002606425 0.0037610412 9.3132257e-10 0 0.010186804 0 -0.0039940011 0 -0.0022663509 
		-0.0026064264 0.0037610417 0 0 0.010186804 0 -0.0047453707 0 -0.001203506;
	setAttr ".bck" 3;
createNode transform -n "pCube3";
	rename -uid "28BDFC8A-9F42-3F29-3D95-31B5A9CFDFE5";
	setAttr ".t" -type "double3" -2.4783292500516394 0.037373004329992687 0.34271799864530778 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.2115517337564165 ;
	setAttr ".rp" -type "double3" 2.5138826828719196 0 0 ;
	setAttr ".sp" -type "double3" 2.5138826828719196 0 0 ;
createNode transform -n "transform8" -p "pCube3";
	rename -uid "47B13A15-D94F-48B5-9014-CCA8145AF161";
	setAttr ".v" no;
createNode mesh -n "pCube3Shape" -p "transform8";
	rename -uid "EBA7932C-6348-C948-CEAD-7D97C6FFF056";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pSphere1";
	rename -uid "6453298F-4E4D-E680-4717-0C8AA47B17AD";
	setAttr ".t" -type "double3" 0.12470196112602738 0.046484757303072222 -0.19989597861329425 ;
	setAttr ".s" -type "double3" 1.1 0.11569033548993513 0.4 ;
createNode transform -n "transform10" -p "pSphere1";
	rename -uid "25D154A2-F044-8999-5AE2-C4B1548B059A";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform10";
	rename -uid "09D969A2-1A46-D9AF-63FF-8F816A3D6C4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.14999999850988388 0.97500008344650269 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 117 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0068617873 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.0068617747 0 0 ;
	setAttr ".pt[9]" -type "float3" -0.0072148964 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.0068617747 0 0 ;
	setAttr ".pt[18]" -type "float3" 0.0068617836 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.099254228 0 0 ;
	setAttr ".pt[20]" -type "float3" 0.013554608 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.013554594 0 0 ;
	setAttr ".pt[29]" -type "float3" -0.014252145 0 0 ;
	setAttr ".pt[30]" -type "float3" -0.013554594 0 0 ;
	setAttr ".pt[38]" -type "float3" 0.013554601 0 0 ;
	setAttr ".pt[39]" -type "float3" -0.092216976 0 0 ;
	setAttr ".pt[40]" -type "float3" 0.019913675 0 0 ;
	setAttr ".pt[48]" -type "float3" -0.019913653 0 0 ;
	setAttr ".pt[49]" -type "float3" -0.020938454 0 0 ;
	setAttr ".pt[50]" -type "float3" -0.019913653 0 0 ;
	setAttr ".pt[58]" -type "float3" 0.019913662 0 0 ;
	setAttr ".pt[59]" -type "float3" -0.085530654 0 0 ;
	setAttr ".pt[60]" -type "float3" 0.025782397 0 0 ;
	setAttr ".pt[68]" -type "float3" -0.025782375 0 0 ;
	setAttr ".pt[69]" -type "float3" -0.027109198 0 0 ;
	setAttr ".pt[70]" -type "float3" -0.025782375 0 0 ;
	setAttr ".pt[78]" -type "float3" 0.025782384 0 0 ;
	setAttr ".pt[79]" -type "float3" -0.079359919 0 0 ;
	setAttr ".pt[80]" -type "float3" 0.031016266 0 0 ;
	setAttr ".pt[88]" -type "float3" -0.031016244 0 0 ;
	setAttr ".pt[89]" -type "float3" -0.032612409 0 0 ;
	setAttr ".pt[90]" -type "float3" -0.031016244 0 0 ;
	setAttr ".pt[98]" -type "float3" 0.031016245 0 0 ;
	setAttr ".pt[99]" -type "float3" -0.073856711 0 0 ;
	setAttr ".pt[100]" -type "float3" 0.035486419 0 0 ;
	setAttr ".pt[108]" -type "float3" -0.035486396 0 0 ;
	setAttr ".pt[109]" -type "float3" -0.037312604 0 0 ;
	setAttr ".pt[110]" -type "float3" -0.035486396 0 0 ;
	setAttr ".pt[118]" -type "float3" 0.035486396 0 0 ;
	setAttr ".pt[119]" -type "float3" -0.06915652 0 0 ;
	setAttr ".pt[120]" -type "float3" 0.039082777 0 0 ;
	setAttr ".pt[128]" -type "float3" -0.039082754 0 0 ;
	setAttr ".pt[129]" -type "float3" -0.041094035 0 0 ;
	setAttr ".pt[130]" -type "float3" -0.039082754 0 0 ;
	setAttr ".pt[138]" -type "float3" 0.039082754 0 0 ;
	setAttr ".pt[139]" -type "float3" -0.065375097 0 0 ;
	setAttr ".pt[140]" -type "float3" 0.041716788 0 0 ;
	setAttr ".pt[148]" -type "float3" -0.041716758 0 0 ;
	setAttr ".pt[149]" -type "float3" -0.043863591 0 0 ;
	setAttr ".pt[150]" -type "float3" -0.041716758 0 0 ;
	setAttr ".pt[158]" -type "float3" 0.041716754 0 0 ;
	setAttr ".pt[159]" -type "float3" -0.062605545 0 0 ;
	setAttr ".pt[160]" -type "float3" 0.043323591 0 0 ;
	setAttr ".pt[168]" -type "float3" -0.043323565 0 0 ;
	setAttr ".pt[169]" -type "float3" -0.045553088 0 0 ;
	setAttr ".pt[170]" -type "float3" -0.043323565 0 0 ;
	setAttr ".pt[178]" -type "float3" 0.043323565 0 0 ;
	setAttr ".pt[179]" -type "float3" -0.060916036 0 0 ;
	setAttr ".pt[180]" -type "float3" 0.043863624 0 0 ;
	setAttr ".pt[188]" -type "float3" -0.043863591 0 0 ;
	setAttr ".pt[189]" -type "float3" -0.046120901 0 0 ;
	setAttr ".pt[190]" -type "float3" -0.043863591 0 0 ;
	setAttr ".pt[198]" -type "float3" 0.043863591 0 0 ;
	setAttr ".pt[199]" -type "float3" -0.060348228 0 0 ;
	setAttr ".pt[200]" -type "float3" 0.043323591 0 0 ;
	setAttr ".pt[208]" -type "float3" -0.043323565 0 0 ;
	setAttr ".pt[209]" -type "float3" -0.045553088 0 0 ;
	setAttr ".pt[210]" -type "float3" -0.043323565 0 0 ;
	setAttr ".pt[218]" -type "float3" 0.043323565 0 0 ;
	setAttr ".pt[219]" -type "float3" -0.060916036 0 0 ;
	setAttr ".pt[220]" -type "float3" 0.041716788 0 0 ;
	setAttr ".pt[228]" -type "float3" -0.041716758 0 0 ;
	setAttr ".pt[229]" -type "float3" -0.043863591 0 0 ;
	setAttr ".pt[230]" -type "float3" -0.041716758 0 0 ;
	setAttr ".pt[238]" -type "float3" 0.041716754 0 0 ;
	setAttr ".pt[239]" -type "float3" -0.062605545 0 0 ;
	setAttr ".pt[240]" -type "float3" 0.039082777 0 0 ;
	setAttr ".pt[248]" -type "float3" -0.039082754 0 0 ;
	setAttr ".pt[249]" -type "float3" -0.041094035 0 0 ;
	setAttr ".pt[250]" -type "float3" -0.039082754 0 0 ;
	setAttr ".pt[258]" -type "float3" 0.039082754 0 0 ;
	setAttr ".pt[259]" -type "float3" -0.065375097 0 0 ;
	setAttr ".pt[260]" -type "float3" 0.035486419 0 0 ;
	setAttr ".pt[268]" -type "float3" -0.035486396 0 0 ;
	setAttr ".pt[269]" -type "float3" -0.037312604 0 0 ;
	setAttr ".pt[270]" -type "float3" -0.035486396 0 0 ;
	setAttr ".pt[278]" -type "float3" 0.035486396 0 0 ;
	setAttr ".pt[279]" -type "float3" -0.06915652 0 0 ;
	setAttr ".pt[280]" -type "float3" 0.031016266 0 0 ;
	setAttr ".pt[288]" -type "float3" -0.031016244 0 0 ;
	setAttr ".pt[289]" -type "float3" -0.032612409 0 0 ;
	setAttr ".pt[290]" -type "float3" -0.031016244 0 0 ;
	setAttr ".pt[298]" -type "float3" 0.031016245 0 0 ;
	setAttr ".pt[299]" -type "float3" -0.073856711 0 0 ;
	setAttr ".pt[300]" -type "float3" 0.025782397 0 0 ;
	setAttr ".pt[308]" -type "float3" -0.025782375 0 0 ;
	setAttr ".pt[309]" -type "float3" -0.027109198 0 0 ;
	setAttr ".pt[310]" -type "float3" -0.025782375 0 0 ;
	setAttr ".pt[318]" -type "float3" 0.025782384 0 0 ;
	setAttr ".pt[319]" -type "float3" -0.079359919 0 0 ;
	setAttr ".pt[320]" -type "float3" 0.019913675 0 0 ;
	setAttr ".pt[328]" -type "float3" -0.019913653 0 0 ;
	setAttr ".pt[329]" -type "float3" -0.020938454 0 0 ;
	setAttr ".pt[330]" -type "float3" -0.019913653 0 0 ;
	setAttr ".pt[338]" -type "float3" 0.019913662 0 0 ;
	setAttr ".pt[339]" -type "float3" -0.085530654 0 0 ;
	setAttr ".pt[340]" -type "float3" 0.013554608 0 0 ;
	setAttr ".pt[348]" -type "float3" -0.013554594 0 0 ;
	setAttr ".pt[349]" -type "float3" -0.014252145 0 0 ;
	setAttr ".pt[350]" -type "float3" -0.013554594 0 0 ;
	setAttr ".pt[358]" -type "float3" 0.013554601 0 0 ;
	setAttr ".pt[359]" -type "float3" -0.092216976 0 0 ;
	setAttr ".pt[360]" -type "float3" 0.0068617873 0 0 ;
	setAttr ".pt[368]" -type "float3" -0.0068617747 0 0 ;
	setAttr ".pt[369]" -type "float3" -0.0072148964 0 0 ;
	setAttr ".pt[370]" -type "float3" -0.0068617747 0 0 ;
	setAttr ".pt[378]" -type "float3" 0.0068617836 0 0 ;
	setAttr ".pt[379]" -type "float3" -0.099254228 0 0 ;
	setAttr ".pt[380]" -type "float3" -0.10646912 0 0 ;
	setAttr ".pt[381]" -type "float3" -0.10646912 0 0 ;
	setAttr ".bck" 3;
createNode transform -n "pPyramid1";
	rename -uid "FDEF2CFF-D94A-FEE2-4F6B-D2AA28E5C598";
	setAttr ".t" -type "double3" -0.36970212768518018 0.03755637028406715 -0.21394988652847752 ;
	setAttr ".r" -type "double3" 0 0 -98.279226242285148 ;
	setAttr ".s" -type "double3" 0.39396529391227098 1.9846403636068872 1.457566853508212 ;
createNode transform -n "transform9" -p "pPyramid1";
	rename -uid "5075D62A-1E4A-8425-1726-9D836C215842";
	setAttr ".v" no;
createNode mesh -n "pPyramidShape1" -p "transform9";
	rename -uid "19B8C759-9442-4D1B-A532-75B434F1FB25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[1]" -type "float3" -0.0049642217 0.034115091 0 ;
	setAttr ".pt[3]" -type "float3" -0.0049642217 0.034115091 0 ;
	setAttr ".bck" 3;
createNode transform -n "pSphere2";
	rename -uid "09BD99F0-4A4F-BD94-1D2E-0FAA515C7910";
	setAttr ".t" -type "double3" 0.3431356308615845 0.085856163686523379 -0.26382564987728785 ;
	setAttr ".s" -type "double3" 1.5 1 1.5 ;
createNode transform -n "transform11" -p "pSphere2";
	rename -uid "28260193-0D41-4273-3F4A-26B3924EC023";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform11";
	rename -uid "CD0BEFC1-DE4E-9830-74DD-1D99F9590E6C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode transform -n "pSphere3";
	rename -uid "BF40273C-3C48-62AC-2CBD-EC9DEB84787A";
	setAttr ".t" -type "double3" -0.17821372624069001 0 0.22105202144078126 ;
	setAttr ".r" -type "double3" 0 -31.237161314703378 0 ;
	setAttr ".s" -type "double3" 1.2336395397678777 1 1.4356822517924615 ;
createNode mesh -n "pSphere3Shape" -p "pSphere3";
	rename -uid "E6F55931-324A-C842-38FB-E8BE90AF871B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bck" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "55E42558-DB45-C958-DBF2-719CCB91F4FF";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "F25FE640-344B-2EAE-9B4E-B5ADEDA6A0FA";
createNode displayLayer -n "defaultLayer";
	rename -uid "A34EF7FA-B747-9A8A-B969-E39281AF4D23";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F5CC1ACC-F744-07AC-12A3-53BD4F62EBFE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F826ECA1-3F4B-C7BB-A83A-1D86C696A956";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "1B8BD1ED-374B-37B7-0C51-FEA062D274CE";
	setAttr ".r" 0.72588258428533503;
	setAttr ".h" 0.026162408960025564;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lambert -n "CoinMaterial";
	rename -uid "3EE5A87F-BF4E-67F3-AA33-AB8B16CC747D";
	setAttr ".c" -type "float3" 0.80800003 0.46540806 0 ;
	setAttr ".ambc" -type "float3" 0.58536661 0.58536661 0.58536661 ;
	setAttr ".ic" -type "float3" 0.073167011 0.073167011 0.073167011 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E2C63C79-D049-8049-29FA-FD8DD93366E1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C290D84F-DE44-AC87-8184-F6A06976EA91";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A78437AE-FB40-9BB6-68EF-EA83329A55A7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 440\n                -height 484\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 440\n            -height 484\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 440\\n    -height 484\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 440\\n    -height 484\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F8C5331B-864E-FEE0-1C38-D7A0FD9BAC31";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPipe -n "polyPipe1";
	rename -uid "2C1161FD-2940-0E3D-6C09-988AF13528C0";
	setAttr ".r" 0.13922355048437321;
	setAttr ".h" 1.7353412159930763;
	setAttr ".t" 0.01;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "C1D35290-6144-8B86-356D-C08048299FD2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.11228257846595341 0.3941222849982548 -1.4789427677473035 1;
	setAttr ".wt" 0.19171515107154846;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "5EB2F340-9449-A30B-817B-8AAB0E2C755C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[160:161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.11228257846595341 0.3941222849982548 -1.4789427677473035 1;
	setAttr ".wt" 0.82056623697280884;
	setAttr ".dr" no;
	setAttr ".re" 160;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "ADF57189-8745-E16D-2F4F-869B9FB3800B";
	setAttr ".r" 0.12883827668120837;
	setAttr ".sr" 0.099999999999999978;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "2ECD3085-8F47-0CD6-E264-E794A269A7F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]" "e[196]" "e[198:199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.11228257846595341 0.3941222849982548 -1.4789427677473035 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.60000000000000009;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak1";
	rename -uid "9178C5CD-6A4E-C63E-6E4D-16B12A8C8DA1";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk[0:80]" -type "float3"  7.4505806e-09 0 0 0 0 0 7.4505806e-09
		 0 0 3.7252903e-09 0 0 0 0 3.7252903e-09 -1.7763568e-15 0 -3.7252903e-09 -1.8626451e-09
		 0 0 0 0 3.7252903e-09 0 0 0 0 0 0 0 0 0 0 0 0 7.4505806e-09 0 0 -7.4505806e-09 0
		 0 0 0 0 0 0 -3.7252903e-09 -1.8626451e-09 0 -3.7252903e-09 0 0 -3.7252903e-09 0 0
		 -1.8626451e-09 0 0 0 -0.08054243 0 9.2014911e-09 -0.076600395 0 0.02465825 -0.065160185
		 0 0.046902768 -0.047341656 0 0.064556122 -0.024888989 0 0.075890273 -1.8399758e-08
		 0 0.079795755 0.024888957 0 0.07589028 0.047341626 0 0.064556129 0.065160163 0 0.046902779
		 0.076600365 0 0.024658261 0.080542415 0 1.1501864e-08 0.076600365 0 -0.024658233
		 0.06516017 0 -0.046902757 0.047341637 0 -0.064556114 0.024888974 0 -0.075890273 -9.112167e-09
		 0 -0.079795755 -0.024888989 0 -0.07589028 -0.047341656 0 -0.064556129 -0.065160207
		 0 -0.046902779 -0.076600432 0 -0.024658255 -0.086775213 0 9.2014911e-09 -0.082528137
		 0 0.026566438 -0.070202634 0 0.050532363 -0.051005203 0 0.069551826 -0.026815034
		 0 0.081763081 -1.8399758e-08 0 0.085970797 0.026815001 0 0.081763089 0.051005181
		 0 0.069551848 0.070202619 0 0.050532378 0.082528129 0 0.026566453 0.086775213 0 1.6102607e-08
		 0.082528129 0 -0.026566425 0.070202626 0 -0.050532356 0.051005192 0 -0.069551826
		 0.026815016 0 -0.081763074 -6.7902679e-09 0 -0.085970804 -0.026815031 0 -0.081763089
		 -0.051005214 0 -0.069551848 -0.070202656 0 -0.050532375 -0.082528181 0 -0.026566442
		 0 0 0 0 0 0 7.4505806e-09 0 0 3.7252903e-09 0 -3.7252903e-09 3.7252903e-09 0 0 -1.7763568e-15
		 0 0 -1.8626451e-09 0 0 -3.7252903e-09 0 0 7.4505806e-09 0 -3.7252903e-09 0 0 -1.8626451e-09
		 0 0 -8.8817842e-16 0 0 0 0 0 0 0 0 3.7252903e-09 0 0 3.7252903e-09 -8.8817842e-16
		 0 0 5.5879354e-09 0 0 0 0 -3.7252903e-09 0 0 0 0 0 -1.8626451e-09 0 0 0;
createNode groupId -n "groupId1";
	rename -uid "9E971C3D-2C41-48B0-4BC1-68BDBF0CC364";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "BDC05D93-7C40-93A6-2612-6ABC41D46A94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId2";
	rename -uid "CE0A135E-8B4E-50D9-500E-48ABF4422499";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "1B1C4C69-6A43-21D8-0241-90A9EFCD10EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "5C5127E2-134A-C057-4A40-6CA8DE8EA2C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId4";
	rename -uid "9C504DAC-EF42-4EFE-CF29-A68FCD5BAD15";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "5F772A9E-F741-5D5E-AB69-33BF6AC486BD";
	setAttr ".r" 0.51000883738066605;
	setAttr ".h" 0.8708420753576257;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4F074D7A-0C42-C99D-7AB7-79AE3AAD120B";
	setAttr ".dc" -type "componentList" 3 "f[1:19]" "f[21:39]" "f[41:59]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "A4D7234E-4642-E075-3A8F-98971FA7DC1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.32336508131841712 0.43542103767881285 -1.8899970293636779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16168244 0.43542105 -2.0475986 ;
	setAttr ".rs" 333056907;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.5;
	setAttr ".cbn" -type "double3" 0.16168243788858361 -1.19160663003548e-08 -2.0475985199804763 ;
	setAttr ".cbx" -type "double3" 0.16168243788858361 0.87084208727369194 -2.0475985199804763 ;
createNode polyChipOff -n "polyChipOff1";
	rename -uid "07F6FC01-F840-8B7D-80C1-8D94DAF6E4FB";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.32336508131841712 0.43542103767881285 -1.8899970293636779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.32336509 0.43542105 -1.889997 ;
	setAttr ".rs" 1903833418;
	setAttr ".lt" -type "double3" -9.0205620750793969e-17 -3.0344108302438055e-17 -0.10659789139648934 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "56A1CF1A-D84D-7FAD-0153-3E996E6D3BCE";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[6]" -type "float3" -0.029416407 0.0057822894 -0.070757814 ;
	setAttr ".tk[7]" -type "float3" -0.046673317 0.0072251363 -0.066252261 ;
createNode groupId -n "groupId5";
	rename -uid "17A4F674-0748-4FFD-CE5C-23A35B963CA2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "A7588F09-BE4C-271C-DCA4-158F28955055";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId6";
	rename -uid "9B184A7F-DD4D-C57B-3D9E-0EAB8C6B7D87";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube1";
	rename -uid "90D624EE-8D47-2458-5682-45B62CD72024";
	setAttr ".w" 0.74930605614487344;
	setAttr ".h" 0.30158975782159414;
	setAttr ".d" 0.46327529868034389;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "BC7BB386-4E4A-6AC0-7C89-3681D2922AE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.4980132311903147 0.15079487891079707 0.054158820640612948 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 4;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyPipe -n "polyPipe2";
	rename -uid "483158A3-E449-163A-2CBB-CDBF70791634";
	setAttr ".r" 0.032225580803201419;
	setAttr ".h" 0.3770197420588059;
createNode polyCone -n "polyCone1";
	rename -uid "B538CC04-774F-7385-BC99-1E9AC62C82EC";
	setAttr ".r" 0.10900570488885594;
	setAttr ".h" 0.25003475322634472;
	setAttr ".sh" 9;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "CF4C66BD-104D-BE7B-7954-5C9631D2F219";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6338453245112379 0.12501737661317236 1.1398662726380957 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "2054E60C-2A4E-AB2C-20DA-4D8E6658749A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[321]" "e[327]" "e[332]" "e[337]" "e[342]" "e[347]" "e[352]" "e[357]" "e[362]" "e[367]" "e[372]" "e[377]" "e[382]" "e[387]" "e[392]" "e[397]" "e[402]" "e[407]" "e[412]" "e[417]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6338453245112379 0.12501737661317236 1.1398662726380957 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak3";
	rename -uid "22E11838-824D-FC31-ACDC-09BAC287E605";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.02089422 0 ;
	setAttr ".tk[161]" -type "float3" 0.010726564 0 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[164]" -type "float3" 0.0091245398 0 0 ;
	setAttr ".tk[165]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[167]" -type "float3" 0.0066293776 0 0 ;
	setAttr ".tk[168]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[169]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[170]" -type "float3" 0.0034852943 0 0 ;
	setAttr ".tk[171]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[174]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[176]" -type "float3" -0.0034852943 0 0 ;
	setAttr ".tk[177]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[178]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[179]" -type "float3" -0.0066293776 0 0 ;
	setAttr ".tk[180]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[182]" -type "float3" -0.0091245398 0 0 ;
	setAttr ".tk[183]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[184]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[185]" -type "float3" -0.010726564 0 0 ;
	setAttr ".tk[186]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[188]" -type "float3" -0.011278572 0 0 ;
	setAttr ".tk[189]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[191]" -type "float3" -0.010726564 0 0 ;
	setAttr ".tk[192]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[194]" -type "float3" -0.0091245398 0 0 ;
	setAttr ".tk[195]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[196]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[197]" -type "float3" -0.0066293776 0 0 ;
	setAttr ".tk[198]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[199]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[200]" -type "float3" -0.0034852675 0 0 ;
	setAttr ".tk[201]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[202]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[204]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[206]" -type "float3" 0.0034852675 0 0 ;
	setAttr ".tk[207]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[209]" -type "float3" 0.0066293776 0 0 ;
	setAttr ".tk[210]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[212]" -type "float3" 0.0091245398 0 0 ;
	setAttr ".tk[213]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[215]" -type "float3" 0.010726564 0 0 ;
	setAttr ".tk[216]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[217]" -type "float3" 0 0.015211752 0.00012519627 ;
	setAttr ".tk[218]" -type "float3" 0.011278572 0 0 ;
	setAttr ".tk[219]" -type "float3" 0 -0.02187535 0 ;
	setAttr ".tk[220]" -type "float3" 0 0.015211752 0.00012519627 ;
createNode polyUnite -n "polyUnite1";
	rename -uid "F5CF2508-B84A-60D9-8738-5B9F35E45051";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId7";
	rename -uid "2DB979A5-7548-532E-77A5-13B3E911D23C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "3CCCFB17-654B-12F2-5868-38B8A2A203BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId8";
	rename -uid "546230DF-4640-686B-5C0A-CCA549DBE03A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "DE40EF71-EC4E-A7B5-D312-80BAD07B06F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "36B9C271-DB4D-A454-5CAF-1986E0518D89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "77899552-AD45-94C1-4751-A1AA797DFD83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "346A7EC6-FF42-A258-CA6C-96BCDCCBDCE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId12";
	rename -uid "EA60A879-3E41-26EC-7A9C-498D29BEDA7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "B1A356DF-924E-72C6-0F87-7A84CC470EA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "EF68D5BC-9946-00E8-03A3-A6A2120BB2AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:260]";
createNode groupId -n "groupId14";
	rename -uid "C01FEA2A-3B45-7B6A-EDA9-18AEE09C1ED1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "961FAA37-434B-4A19-DEF9-868A61214833";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "3BD65169-5E4C-4924-9320-E2AF37D8C261";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:384]";
createNode polySphere -n "polySphere1";
	rename -uid "0181F071-8D46-7591-7983-0890E83B2679";
	setAttr ".r" 0.38728462047076539;
createNode polyPyramid -n "polyPyramid1";
	rename -uid "077B7D46-A246-9B4D-C81E-FD82630DA42B";
	setAttr ".w" 0.1588921253130422;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere2";
	rename -uid "4BBC6B78-BE4A-637A-D59D-02A6AB87C809";
	setAttr ".r" 0.011996983941138462;
createNode polyUnite -n "polyUnite2";
	rename -uid "31E7B7A1-4A4A-EDA4-C3BA-B28CF4EF02D6";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId16";
	rename -uid "1CC9A93A-8D41-CB13-24B5-A5B412F377B6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "327A475B-6E41-75CD-BB62-35B12A91A1D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId17";
	rename -uid "2F473C28-7549-09AF-3E4B-1D8D7BACD5D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "1634C41A-6E4A-9DE2-C159-3F8BED3886D8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "E8D37687-D543-009E-769D-0FB346AEAE3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId19";
	rename -uid "BDAD6B0C-5A46-6A48-3655-349E4B67DFEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "7E438EA1-9742-6937-C7B5-A19CFBFF3EB9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "A33550EC-3C47-2A86-B484-FCA57C84CD2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId21";
	rename -uid "C999DCE4-FD46-319C-B5C7-41BD1DDA1D2C";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "groupId1.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pTorusShape1.i";
connectAttr "groupId2.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pPipeShape1.i";
connectAttr "groupId4.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts3.og" "pCylinderShape2.i";
connectAttr "groupId6.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape1.i";
connectAttr "groupId8.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId10.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pPipeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape2.iog.og[0].gco";
connectAttr "groupParts5.og" "pPipeShape2.i";
connectAttr "groupId12.id" "pPipeShape2.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pConeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pConeShape1.iog.og[0].gco";
connectAttr "groupParts6.og" "pConeShape1.i";
connectAttr "groupId14.id" "pConeShape1.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "pCube3Shape.i";
connectAttr "groupId15.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId18.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts9.og" "pSphereShape1.i";
connectAttr "groupId19.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupId20.id" "pPyramidShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPyramidShape1.iog.og[0].gco";
connectAttr "groupParts10.og" "pPyramidShape1.i";
connectAttr "groupId21.id" "pPyramidShape1.ciog.cog[0].cgid";
connectAttr "groupId16.id" "pSphereShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape2.iog.og[0].gco";
connectAttr "groupParts8.og" "pSphereShape2.i";
connectAttr "groupId17.id" "pSphereShape2.ciog.cog[0].cgid";
connectAttr "polyUnite2.out" "pSphere3Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "CoinMaterial.oc" "lambert2SG.ss";
connectAttr "pCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "pSphere3Shape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "CoinMaterial.msg" "materialInfo1.m";
connectAttr "polyPipe1.out" "polySplitRing1.ip";
connectAttr "pPipeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pPipeShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "pPipeShape1.wm" "polyBevel1.mp";
connectAttr "polySplitRing2.out" "polyTweak1.ip";
connectAttr "polyTorus1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyBevel1.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyCylinder2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak2.out" "polyChipOff1.ip";
connectAttr "pCylinderShape2.wm" "polyChipOff1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak2.ip";
connectAttr "polyChipOff1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyCube1.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyCone1.out" "polyBevel3.ip";
connectAttr "pConeShape1.wm" "polyBevel3.mp";
connectAttr "polyTweak3.out" "polyBevel4.ip";
connectAttr "pConeShape1.wm" "polyBevel4.mp";
connectAttr "polyBevel3.out" "polyTweak3.ip";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pPipeShape2.o" "polyUnite1.ip[2]";
connectAttr "pConeShape1.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pPipeShape2.wm" "polyUnite1.im[2]";
connectAttr "pConeShape1.wm" "polyUnite1.im[3]";
connectAttr "polyBevel2.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyPipe2.out" "groupParts5.ig";
connectAttr "groupId11.id" "groupParts5.gi";
connectAttr "polyBevel4.out" "groupParts6.ig";
connectAttr "groupId13.id" "groupParts6.gi";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId15.id" "groupParts7.gi";
connectAttr "pSphereShape2.o" "polyUnite2.ip[0]";
connectAttr "pSphereShape1.o" "polyUnite2.ip[1]";
connectAttr "pPyramidShape1.o" "polyUnite2.ip[2]";
connectAttr "pSphereShape2.wm" "polyUnite2.im[0]";
connectAttr "pSphereShape1.wm" "polyUnite2.im[1]";
connectAttr "pPyramidShape1.wm" "polyUnite2.im[2]";
connectAttr "polySphere2.out" "groupParts8.ig";
connectAttr "groupId16.id" "groupParts8.gi";
connectAttr "polySphere1.out" "groupParts9.ig";
connectAttr "groupId18.id" "groupParts9.gi";
connectAttr "polyPyramid1.out" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "CoinMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPyramidShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPyramidShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
// End of fishCoin.ma
