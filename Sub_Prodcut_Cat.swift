//
//  Sub_Prodcut_Cat.swift
//  xcodetour
//
//  Created by Jarrad Prida on 7/21/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit

var yourArray = [String]()
var product_index = 0


let Angle_Prepunched_pn = ["607465.0009","607465.0004","609310","850128.0003","607465.0003","609309","609307","609308","607465.0001","850128.0005"]
let Bearings_Steel_pn = ["080701.0001","850059.0001","080701.0010","850059.0002","080701.0006","080701.0007"]
let Bearings_Football_pn = ["850060.0001","850060.0002"]
let Bearings_Precision_pn = ["410989.0020","410989.0021"]
let Bottom_Bars_pn = ["410952.0096","410952.0108","410952.0120","410952.0144","410952.0168","410952.0192","410952.0216","410952.0240"]
let Bottom_Brackets_Residential_pn = ["290992","290991","270355","270354","850015.0003","850016.0003"]
    let Bottom_Brackets_Commercial_pn = ["850022.0003","850023.0003","850017.0003","850018.0003"]
    let Cable_Bulk_pn = ["080804.1002","080804.1003","080804.1004","080804.0015","080804.0017"]
    let Cable_Assemblies_pn = ["409950.1001.PR","400901.1131.PR","400901.1861.PR","409944.1561.PR","409944.1681.PR","400901.1002.PR","400901.1132.PR","400901.1252.PR","400901.1382.PR","400901.1622.PR","141684","141685","141686","141687"]
    let Cable_Sleeves_pn = ["080635.1001","080635.1002","080635.1003","080635.1004","080635.1005","080635.1007"]
    let Cable_Thimbles_pn = ["605527.1001","605527.1002","605527.1003"]
    let Cable_Stops_pn = ["080636.1002","080636.1003","080636.1004","080636.1005","080636.1007"]
    let Chain_Hoist_Kits_pn = ["112592","850089.0000","052010.0004","075377.0004","850093.0000","850095.0000"]
    let Chain_Hoist_Accessories_pn = ["850100.0000","307504","080899.0002","410084.0001","850101.0000"]
    let Chain_Hoist_Connecting_Link_pn = ["080884.0007.S","080884.0108","080884.0104","080884.0103","080884.0105","080884.0102","080884.0101"]
    let Chain_Hoist_Offset_Link_pn = ["850102.0001","080885.0104","080885.0103","080885.0106","080885.0102","080885.0101"]
    let Chain_Hoist_Sproket_pn = ["075004.0001","075004.0002","086446.1216","086446.1716","086446.2616","086446.2620","086446.3616","086446.3620"]
    let Drums_Standard_Lift_pn = ["402372.0001","402372.0002","408891.0001","408891.0002","402373.0001","402373.0002","402374.0001","402374.0002","402374.0005","402374.0006","402378.0001","402378.0002","402378.0003","402378.0004"]
    let Drums_Vertical_Lift_pn = ["402375.0001","402375.0002","086957.0001","086957.0002","404569.0005","404569.0006","404569.0007","404569.0008"]
    let Drums_High_Lift_pn = ["402376.0001","402376.0002","402379.0001","402379.0002","307628","307627","402377.0001","402377.0002","086675.0001","086675.0002","086675.1001","086675.1002","086675.0003","086675.0004","086675.1003","086675.1004"]
    let Extension_Spring_Hardware_pn = ["100262","051011.0000","107544","408548.0001","051015.0000","407166.0003","850029.0001","850029.0002"]
    let Extension_Springs_Single_Loop_pn = ["606025.0060","606025.0070","606025.0080","606025.0090","606025.0100","606025.0110","606025.0120","606025.0130","606025.0140","606025.0150","606025.0160","606025.0170","606025.0180","606025.0190","606025.0200","606027.0090","606027.0100","606027.0110","606027.0120","606027.0130","606027.0140","606027.0150","606027.0160","606027.0170","606027.0180","606027.0190","606027.0200"]
    let Extension_Springs_Double_Loop_pn = ["850103.25050","850103.25060","850103.25070","850103.25080","850103.25090","850103.25100","850103.25110","850103.25120","850103.25130","850103.25140","850103.25150","850103.25160","850103.25170","850103.25180","850103.25190","850103.25200","850103.27090","850103.27100","850103.27110","850103.27120","850103.27130","850103.27140","850103.27150","850103.27160","850103.27170","850103.27180","850103.27190","850103.27200"]
    let Extension_Springs_Clipped_End_pn = ["606025.0210","606025.0220","850086.25230","606025.0240","606025.0250","606025.0260","606025.0280","850086.25300","606027.0210","606027.0220","606027.0230","606027.0240","606027.0250","ZZ22659404","606027.0280","ZZ23753395"]
    let Fasteners_Flat_Head_Carriage_Bolt_pn = ["609278.1284","609278.1285","080009.5003","080009.5004","080009.5005","609276.108446"]
    let Fasteners_Machine_Bolt_pn = ["609276.102631","609276.154531"]
    let Fasteners_Track_Bolt_pn = ["609278.1291","609278.1292","080019.5001","080019.5003"]
    let Fasteners_Hex_Head_Bolts_pn = ["609278.1506","609278.1508","609278.1526","609278.1528","609278.1546","609278.1552","609278.1554","080105.04051","080105.04061","080105.06061","080105.06081","609276.100302","080105.06121","080105.0806","080105.05061","080105.05081","609276.100006"]
    let Fasteners_Hex_Head_Nuts_pn = ["609278.1324","609278.1325","609278.1326","080352.04201","080352.05181","080352.06161"]
    let Fasteners_Flange_Hex_Head_Nuts_pn = ["609278.1314","609278.1315","609278.1316","608172.16201","100279","273772","237152"]
    let Fasteners_Kep_Hex_Head_Nuts_pn = ["609278.1304","609278.1305","609278.1306","086480.16201","086480.20181","086480.24161"]
    let Fasteners_Nylon_Lock_Hex_Head_Nuts_pn = ["086501.00131","086501.00151"]
    let Fasteners_Washers_pn = ["080302.18201","080302.22221","080302.24281","080302.28321"]
    let Fasteners_Self_Tapping_Screws_pn = ["609278.1265","609278.1266","609278.1254","605911.1001","609276.100320","609276.124467","850126.5001"]
    let Fasteners_Self_Drilling_Screws_pn = ["609278.1241","609278.1244","605879.1001","605879.1002","609276.100507","609276.108207"]
    let Fasteners_Hex_Head_Lag_Screw_pn = ["609278.1224","609278.1225","609278.1226","609278.1227","604231.04161","605574.5001","609272.355212","609276.274871","605574.5009"]
    let Fasteners_Hex_Head_Concrete_Sleeve_Anchor_pn = ["609278.0250","609278.0253","609278.0254","609278.0256","609278.0257","609276.0250","609276.0253","609276.0254","609276.0255"]
    let Hardware_Box_Residential_pn = ["410535.0003","410535.0011","410535.0001","410535.0009"]
    let Hinges_Narrow_Body_pn = ["850000.0001","850000.0002","850000.0003","850000.0004"]
    let Hinges_Wide_Body_pn = ["850005.0001","850005.0002","850005.0003","850005.0004","850001.0001","850001.0002","850001.0003","850001.0004","850001.0005","850001.0006","850004.0001","850004.0002","850004.0003","850004.0004","850004.0005","850004.0006","850004.0007","850004.0008","850004.0009","850004.0010","850004.0011","850004.0012"]
    let Lock_Assemblies_pn = ["311955","311965","316860"]
    let Lock_Slide_Lock_pn = ["333867","333871","409334.0001"]
    let Lock_Outside_Key_Release_pn = ["00001204"]
    let Lubricants_Spray_Lube_pn = ["608705.0132","608705.0131","496955.0002","492845.0002","492885.0002","496605.0001","338759","39000.1012FG"]
    let Lubricants_Private_Label_Spray_Lube_pn = ["608705.0142","608705.0141","496955.0003","492845.0003","492885.0003"]
    let Lubricants_Low_Temp_pn = ["Tribo-33T","20010A.S"]
    let Rollers_2in_Nylon_pn = ["404828.0003","141290","608682.0001","341026","320740","608758.0001","608758.0003","850034.0000","341027","608758.0002","608758.0004","320741"]
    let Rollers_2in_Steel_pn = ["061128.0000","319138","066341.0003","348920","066341.0004","066341.0006","112609","066341.0007",]
    let Rollers_3in_pn = ["061337.0007","061337.0005","850035.0000","608758.0005","061337.0006","850160.0000"]
    let Rollers_Car_Wash_pn = ["850032.0001","850032.0002","409514.0001","850033.0000"]
    let Struts_22ga_pn = ["225022.08060","225022.09060","225022.10060","225022.12060","225022.14060","225022.16060","225022.18060"]
    let Struts_20ga_pn = ["225020.08060","225020.09060","225020.10060","225020.12060","225020.14060","225020.16060","225020.18060","225020.20060"]
    let Struts_3in_20ga_pn = ["300020.08040","300020.09040","300020.10040","300020.12040","300020.14040","300020.16040","300020.18040","300020.20040"]
    let Operator_Reinforcement_Bracket_pn = ["409867.0066","409867.0067","409867.0068","409867.0069","409867.0081","409867.0092"]
    let Operator_Reinforcement_Bracket_Adjustable_pn = ["409867.0072","850025.0002","850025.0001"]
    let Top_Fixtures_Adjustable_pn = ["410123.0001","410464.0001"]
    let Top_Fixtures_Low_Head_Room_pn = ["850009.0000","850010.0000","850009.0001","850009.0002"]
    let Track_Brackets_Jamb_Brackets_pn = ["850064.0002","850064.0003","850064.0004","850064.0005","850064.0006","850064.0007","850064.0008"]
    let Track_Brackets_Splice_Plates_pn = ["850063.0001","850063.0003"]
    let Track_Brackets_Flag_Brackets_pn = ["326403","326404","280976","280564"]
    let Torsion_Spring_Plugs_1in_Shaft_pn = ["850069.0001","051006.2000","051005.2000","850072.0000","850071.0000","608062.0001","608063.0001","411038.0010","411038.0009","411038.0008","411038.0007","323130","323131","409399.0003","409399.0004","051160.0001","051160.0002","850078.0001","850077.0001","194210","320272","409392.0003","409392.0004","409391.0005","409391.0006"]
    let Torsion_Spring_Plugs_125_Shaft_pn = ["411038.0010","411038.0009","177081","177083","409399.0003","409399.0004","051160.0003","051160.0004","850078.0001","850077.0003","409392.0003","409392.0004","409391.0007","409391.0008"]
    let Torsion_Tubes_pn = ["124480","124481","124482","124483","124484","124485","124486"]
    let Torsion_Solid_Shaft_pn = ["109272","109259","109238","116023","116024","285049","116026","285050","270247","346773","161898","103091","325083","325086"]
    let Torsion_Shaft_Collars_pn = ["604297.1100","604297.1125"]
    let Torsion_Shaft_Couplers_pn = ["607586.0001","607586.0002","409447.0001"]
    let TorqueMaster_Conversion_Kits_pn = ["347284","347285","347286","347287"]
    let TorqueMaster_Parts_pn = ["320217","321801","351426","333074","142026","308963"]
    let Vinyl_Stop_No_Holes_pn = ["411262.07WT0","411262.08WT0","411262.09WT0","411262.10WT0","411262.12WT0","411262.14WT0","411262.16WT0","411262.18WT0","411262.07AL0","411262.08AL0","411262.09AL0","411262.16AL0","411262.18AL0","411262.07DT0","411262.16DT0","411262.18DT0","411262.18HG0","411262.07CB0","411262.16CB0","411262.18CB0","411262.07BR0","411262.08BR0","411262.09BR0","411262.16BR0","411262.18BR0","411262.07TP0","411262.08TP0","411262.09TP0","411262.16TP0","411262.18TP0","411262.16TB0","411262.18TB0","411262.07GY0"]
    let Vinyl_Stop_with_Holes_pn = ["411262.07WTH","411262.08WTH","411262.09WTH","411262.10WTH","411262.12WTH","411262.14WTH","411262.16WTH","411262.18WTH","411262.07ALH","411262.08ALH","411262.09ALH","411262.16ALH","411262.18ALH","411262.18DTH","411262.16BRH","411262.18BRH","411262.16GYH","411262.18GYH"]
    let Weather_Seal_T_Bottom_Seal_pn = ["108168","118379","FR-375","FR-475","FR-600"]
    let Weather_Seal_Bead_Bottom_Seal_pn = ["FRB-300","FRB-400","FRB-600"]
    let Weather_Seal_Brush_Seal_pn = ["609288.0015","609288.0042","609288.0016","609288.0045","609288.0017","609288.0048","609288.0018","609288.0051","609288.0026","609288.0054","609288.0019","609288.0057"]
    let Weather_Seal_45_Retainer_pn = ["609288.0005","609288.0030","609288.0006","609288.0007","609288.0033","609288.0008"]
    let Weather_Seal_90_Retainer_pn = ["609288.0009","609288.0036","609288.0010"]
    let Weather_Seal_180_Retainer_pn = ["609288.0001","609288.0027","609288.0002"]
    let Weather_Seal_90_and_180_Retainer_pn = ["609288.0011","609288.0039","609288.0012"]
    let Weather_Seal_Clipon_Jamb_Seal_pn = ["407100.0202","407100.0201","407100.0204","407100.0203"]
    let Weather_Seal_Reverse_Angle_Jamb_Seal_pn = ["RS-175-WT","RS-175-AL","RS-175-SD","RS-175-BR"]






let Angle_Prepunched_desc = ["16ga 1-1/4\" x 1-1/4\" x 8' Galv. ","16ga 1-1/4\" x 1-1/4\" x 10' Galv. ","14ga 1-1/4\" x 1-1/4\" x 8' Galv. ","14ga 1-1/4\" x 1-1/4\" x 10' Galv. ","13ga 1-1/4\" x 1-1/4\" x 8' Galv. ","13ga 1-1/4\" x 1-1/4\" x 10' Galv. ","12ga 1-1/2\" x 1-1/2\" x 10' Galv. ","12ga 1-5/8\" x 2-3/8\" x 10' Galv. ","12ga 2\" x 2\" x 8' Galv. ","12ga 2\" x 2\" x 10' Galv. "]
let Bearings_Steel_desc = ["BRG Flanged Steel Bearing 2\" OD 1\" 400lb. load","BRG Flanged Steel Bearing  2\" OD 1\" 400lb. Load","BRG Flanged Steel Bearing 2.5\" OD 1\" 800lb. load","BRG Flanged Steel Bearing 2\" OD 1\" 900lb. load","BRG Flanged Steel Bearing 2\" OD 1.25\" 900lb. load","BRG Steel Freeway Bearing 2.5\" OD 1.25\" 800lb load"]
let Bearings_Football_desc = ["2 hole flangette 1\" 3\" hole-to-hole spread","2 hole flangette 1.25\" 3\" hole-to-hole spread"]
let Bearings_Precision_desc = ["BRG Flanged Precision 3 Hole Bearing 1\" ","BRG Flanged Precision 3 Hole Bearing 1.25\" "]
let Bottom_Bars_desc = ["8' Residential Bottom Bar Assy. for 1-3/8\" Door","9' Residential Bottom Bar Assy. for 1-3/8\" Door","10' Residential Bottom Bar Assy. for 1-3/8\" Door","12' Residential Bottom Bar Assy. for 1-3/8\" Door","14' Residential Bottom Bar Assy. for 1-3/8\" Door","16' Residential Bottom Bar Assy. for 1-3/8\" Door","18' Residential Bottom Bar Assy. for 1-3/8\" Door","20' Residential Bottom Bar Assy. for 1-3/8\" Door"]
let Bottom_Brackets_Residential_desc = ["LH - Small Milford Pin 4\"H x 2-1/4\"W x 1-1/4\"D","RH - Small Milford Pin 4\"H x 2-1/4\"W x 1-1/4\"D","LH - Large Milford Pin 4\"H x 2-1/4\"W x 1-1/4\"D","RH - Large Milford Pin 4\"H x 2-1/4\"W x 1-1/4\"D","BB-1 Large Milford Pin 5-3/4\"H x 2-5/8\"W x 1-1/4\"D","BB-3 Large Milford Pin 7\"H x 3\"W x 1-1/4\"D"]
let Bottom_Brackets_Commercial_desc = ["2\" Track 8\"H x 3\"W x 1-3/4\"D","3\" Track 8\"H x 3\"W x 1-3/4\"D","Outside Hookup for LHR 1-3/8\" - 1-3/4\" Doors","Outside Hookup for 1-3/8\" - 2\" Doors - BB-5"]
let Cable_Bulk_desc = ["3/32\" Aircraft Cable 500' Spool 7x7 920lbs.","1/8\" Aircraft Cable 500' Spool 7x19 2000lbs.","5/32\" Aircraft Cable 500' Spool 7x19 2800lbs.","3/16\" Aircraft Cable 500' Spool 7x19 4200lbs.","1/4\" Aircraft Cable 500' Spool 7x19 4200lbs."]
let Cable_Assemblies_desc = ["3/32\" 7x19 Torsion 8' 4\" White 7' Door Ht","3/32\" 7x19 Torsion 9' 5\" White 8' Door Ht","3/32\" 7x19 Torsion 15' 6\" Green 14' Door Ht","3/32\" 7x19 Extension 13' Red 7' Door Ht","3/32\" 7x19 Extension 14' Brown 8' Door Ht","1/8\" 7x19 Torsion 8' 4\" Orange 7' Door Ht","1/8\" 7x19 Torsion 9' 5\" Green 8' Door Ht","1/8\" 7x19 Torsion 10' 5\" Red 9' Door Ht","1/8\" 7x19 Torsion 11' 6\" Green 10' Door Ht","1/8\" 7x19 Torsion 13' 6\" Yellow 12' Door Ht","5/32\" 7x7 LHR Tor Rear 119\" 400 lbs. 7' Door Ht","5/32\" 7x7 LHR Tor Rear 143\" 400 lbs. 8' Door Ht","5/32\" 7x7 LHR Tor Rear 167\" 470 lbs. 9' Door Ht","5/32\" 7x7 LHR Tor Rear 191\" 470 lbs. 10' Door Ht"]
let Cable_Sleeves_desc = ["1/16\" Aluminum Duplex Sleeve 3/8\" 100/box","3/32\" Aluminum Duplex Sleeve 1/2\" 100/box","1/8\" Aluminum Duplex Sleeve 5/8\" 100/box","5/32\" Aluminum Duplex Sleeve 11/16\" 100/box","3/16\" Aluminum Duplex Sleeve 1\" 100/box","1/4\" Aluminum Duplex Sleeve 1-1/8\" 100/box"]
let Cable_Thimbles_desc = ["1/8\" Nylon Cable Thimbles 100/box","3/16\" Nylon Cable Thimbles 100/box","1/4\" Nylon Cable Thimbles 100/box"]
let Cable_Stops_desc = ["3/32\" Aluminum Button Stop 5/16\" 100/box","1/8\" Aluminum Button Stop 5/16\" 100/box","5/32\" Aluminum Button Stop 5/16\" 100/box","3/16\" Aluminum Button Stop 5/16\" 100/box","1/4\" Aluminum Button Stop 11/16\" 100/box"]
let Chain_Hoist_Kits_desc = ["4:1 JR Chain Hoist Kit for 1\" Shaft-Jackshaft","3:1 200R Wall Mount Chain Hoist for 1\"-Wall Mount","9.75:1 #5 Chain Hoist Kit for 1\"-Wall Mount","3.6:1 #7 Chain Hoist Kit for 1\"-Wall Mount","5.375\" Offset 2000D-Direct Drive","RDD 180 Direct Drive for Sheet Doors"]
let Chain_Hoist_Accessories_desc = ["Adjustable Jackshaft Spreader Bars","Chain Tensioner for 1-1/4\" Shaft","Hand Chain Galvanized","Chain Keeper Zinc Plated","Chain Keeper Cast Steel"]
let Chain_Hoist_Connecting_Link_desc = ["#25 Chain Connecting (Master) Link 10 Pack","#35 Chain Connecting (Master) Link 10 Pack ","#40 Chain Connecting (Master) Link 10 Pack","#41 Chain Connecting (Master) Link 10 Pack","#50 Chain Connecting (Master) Link 10 Pack ","#60 Chain Connecting (Master) Link 10 Pack","#65 Chain Connecting (Master) Link 10 Pack"]
let Chain_Hoist_Offset_Link_desc = ["#35 Chain Offset (Half) Link 10 Pack","#40 Chain Offset (Half) Link 10 Pack","#41 Chain Offset (Half) Link 10 Pack","#50 Chain Offset (Half) Link 10 Pack","#60 Chain Offset (Half) Link 10 Pack","#65 Chain Offset (Half) Link 10 Pack"]
let Chain_Hoist_Sproket_desc = ["#41-38T Sprocket Assembly - 1\" Bore","#41-38T Sprocket Assembly - 1.25\" Bore","#50-12T Sprocket Assembly - 1\" Bore","#50-17T Sprocket Assembly - 1\" Bore","#50-26T Sprocket Assembly - 1\" Bore","#50-26T Sprocket Assembly - 1.25\" Bore","#50-36T Sprocket Assembly - 1\" Bore","#50-36T Sprocket Assembly - 1.25\" Bore"]
let Drums_Standard_Lift_desc = ["D400-8 Standard Lift Residential 1\" Shaft","D400-8 Standard Lift Residential 1\" Shaft","D400-10 Standard Lift Commercial 1\" Shaft","D400-10 Standard Lift Commercial 1\" Shaft","D400-12 Standard Lift Commercial 1\" Shaft","D400-12 Standard Lift Commercial 1\" Shaft","D525-216 Standard Lift Commercial 1\" Shaft","D525-216 Standard Lift Commercial 1\" Shaft","D525-216 Standard Lift Commercial 1.25\" Shaft","D525-216 Standard Lift Commercial 1.25\" Shaft","D800-384 Standard Lift Commercial 1\" Shaft","D800-384 Standard Lift Commercial 1\" Shaft","D800-384 Standard Lift Commercial 1.25\" Shaft","D800-384 Standard Lift Commercial 1.25\" Shaft"]
let Drums_Vertical_Lift_desc = ["D850-11 Full Vertical Lift Commercial 1\" Shaft","D850-11 Full Vertical Lift Commercial 1\" Shaft","D1100-18 Full Vertical Lift Commercial 1\" Shaft","D1100-18 Full Vertical Lift Commercial 1\" Shaft","D1350-28 Full Vertical Lift Commercial 1\" Shaft","D1350-28 Full Vertical Lift Commercial 1\" Shaft","D1350-28 Full Vertical Lift Commercial 1.25\" Shaft","D1350-28 Full Vertical Lift Commercial 1.25\" Shaft"]
let Drums_High_Lift_desc = ["D400-54 High Lift Commercial 1\" Shaft","D400-54 High Lift Commercial 1\" Shaft","D525-54 High Lift Commercial 1\" Shaft","D525-54 High Lift Commercial 1\" Shaft","D500-84 High Lift Commercial 1\" Shaft","D500-84 High Lift Commercial 1\" Shaft","D575-120 High Lift Commercial 1\" Shaft","D575-120 High Lift Commercial 1\" Shaft","D6375-164 High Lift Commercial 1\" Shaft","D6375-164 High Lift Commercial 1\" Shaft","D800-120 High Lift Commercial 1\" Shaft","D800-120 High Lift Commercial 1\" Shaft","D6375-164 High Lift Commercial 1.25\" Shaft","D6375-164 High Lift Commercial 1.25\" Shaft","D800-120 High Lift Commercial 1.25\" Shaft","D800-120 High Lift Commercial 1.25\" Shaft"]
let Extension_Spring_Hardware_desc = ["3\" Fork ","3\" Pulley 100lb. Load","4\" Fork ","4\" Pulley 450lb. Load","4\" Stud Pulley Assembly ","4\" Extension Spring Fastener Kit ","5\" Cast Pulley 400lb. Load","5\" Cast Pulley 900lb. Load"]
let Extension_Springs_Single_Loop_desc = ["Single Loop 7' high door - 25-42 60# BROWN","Single Loop 7' high door - 25-42 70# ORANGE","Single Loop 7' high door - 25-42 80# GOLD","Single Loop 7' high door - 25-42 90# LT BLUE","Single Loop 7' high door - 25-42 100# TAN","Single Loop 7' high door - 25-42 110# WHITE","Single Loop 7' high door - 25-42 120# GREEN","Single Loop 7' high door - 25-42 130# YELLOW","Single Loop 7' high door - 25-42 140# BLUE","Single Loop 7' high door - 25-42 150# RED","Single Loop 7' high door - 25-42 160# BROWN","Single Loop 7' high door - 25-42 170# ORANGE","Single Loop 7' high door - 25-42 180# GOLD","Single Loop 7' high door - 25-42 190# LT BLUE","Single Loop 7' high door - 25-42 200# TAN","Single Loop 8' high door - 27-48 90# LT BLUE","Single Loop 8' high door - 27-48 100# TAN","Single Loop 8' high door - 27-48 110# WHITE","Single Loop 8' high door - 27-48 120# GREEN","Single Loop 8' high door - 27-48 130# YELLOW","Single Loop 8' high door - 27-48 140# BLUE","Single Loop 8' high door - 27-48 150# RED","Single Loop 8' high door - 27-48 160# BROWN","Single Loop 8' high door - 27-48 170# ORANGE","Single Loop 8' high door - 27-48 180# GOLD","Single Loop 8' high door - 27-48 190# LT BLUE","Single Loop 8' high door - 27-48 200# TAN"]
let Extension_Springs_Double_Loop_desc = ["Double Loop 7' high door - 25-42 50# RED","Double Loop 7' high door - 25-42 60# BROWN","Double Loop 7' high door - 25-42 70# ORANGE","Double Loop 7' high door - 25-42 80# GOLD","Double Loop 7' high door - 25-42 90# LT BLUE","Double Loop 7' high door - 25-42 100# TAN","Double Loop 7' high door - 25-42 110# WHITE","Double Loop 7' high door - 25-42 120# GREEN","Double Loop 7' high door - 25-42 130# YELLOW","Double Loop 7' high door - 25-42 140# BLUE","Double Loop 7' high door - 25-42 150# RED","Double Loop 7' high door - 25-42 160# BROWN","Double Loop 7' high door - 25-42 170# ORANGE","Double Loop 7' high door - 25-42 180# GOLD","Double Loop 7' high door - 25-42 190# LT BLUE","Double Loop 7' high door - 25-42 200# TAN","Double Loop 8' high door - 27-48 90# LT BLUE","Double Loop 8' high door - 27-48 100# TAN","Double Loop 8' high door - 27-48 110# WHITE","Double Loop 8' high door - 27-48 120# GREEN","Double Loop 8' high door - 27-48 130# YELLOW","Double Loop 8' high door - 27-48 140# BLUE","Double Loop 8' high door - 27-48 150# RED","Double Loop 8' high door - 27-48 160# BROWN","Double Loop 8' high door - 27-48 170# ORANGE","Double Loop 8' high door - 27-48 180# GOLD","Double Loop 8' high door - 27-48 190# LT BLUE","Double Loop 8' high door - 27-48 200# TAN"]
let Extension_Springs_Clipped_End_desc = ["Clipped End 7' high door - 25-42 210# WHITE","Clipped End 7' high door - 25-42 220# GREEN","Clipped End 7' high door - 25-42 230# YELLOW","Clipped End 7' high door - 25-42 240# BLUE","Clipped End 7' high door - 25-42 250# RED","Clipped End 7' high door - 25-42 260# BROWN","Clipped End 7' high door - 25-42 280# GOLD","Clipped End 7' high door - 25-42 300# TAN","Clipped End 8' high door - 27-48 210# WHITE","Clipped End 8' high door - 27-48 220# GREEN","Clipped End 8' high door - 27-48 230# YELLOW","Clipped End 8' high door - 27-48 240# BLUE","Clipped End 8' high door - 27-48 250# RED","Clipped End 8' high door - 27-48 260# BROWN","Clipped End 8' high door - 27-48 280# GOLD","Clipped End 8' high door - 27-48 300# TAN"]
let Fasteners_Flat_Head_Carriage_Bolt_desc = ["Standard - 1/4\" - 20 x 2-1/4\" 500PK","Standard - 1/4\" - 20 x 2-1/2\" 500PK","Standard -  1/4-20 x 2\" 500PK","Standard - 1/4-20 x 2-1/4\" 500PK","Premium - 1/4-20 x 2-1/2\" 500PK","Premium - 5/16-18 x 3/4\" 1000PK"]
let Fasteners_Machine_Bolt_desc = ["Premium - 1/4-20 x 1-1/4\" 1000PK","Premium - 3/8-16 x 3/4\" 500PK"]
let Fasteners_Track_Bolt_desc = ["Standard - Slotted Rib Neck 1/4\" - 20 x 5/8\" 500PK","Standard - Slotted Rib Neck 1/4\" - 20 x 1\" 500PK","Premium - Slotted Rib Neck 1/4-20 x 9/16\" 500PK","Premium -  Slotted Rib Neck 1/4-20 x 1\" 500PK"]
let Fasteners_Hex_Head_Bolts_desc = ["Standard - 1/4-20 x 3/4\" 500PK","Standard - 1/4-20 x 1\" 500PK","Standard - 5/16-18 x 3/4\" 500PK","Standard - 5/16 -18 x 1\" 500PK","Standard - 3/8 -16 x 3/4\" 500PK","Standard - 3/8-16 x 1-1/2\" 500PK","Standard - 3/8 - 6 x 1-3/4\" 500PK","Premium - Plated 1/4-20 x 5/8\" 1000PK","Premium - Plated 1/4-20 x 3/4\" 1000PK","Premium - Plated 3/8-16 x 3/4\" 1000PK","Premium - Plated 3/8-16 x 1\" 1000PK","Premium - Plated 3/8-16 x 1-1/4\" 500PK","Premium - Plated 3/8-16 x 1-1/2\" 1000PK","Premium - Plated 1/2-13 x 3/4\"","Premium - Plated 5/16-18 x 3/4\" 1000PK","Premium - Plated 5/16-18 x 1\" 1000PK","Premuim - Plated 5/16-18 x 1-1/4\" 500PK"]
let Fasteners_Hex_Head_Nuts_desc = ["Standard - Plated Nut 1/4\" - 20 500PK","Standard - Plated Nut 5/16\" - 18 500PK","Standard - Plated Nut 3/8\" - 16 500PK","Premium - Plated Nut 1/4-20 500PK","Premium - Plated Nut 5/16-18 500PK","Premium - Plated Nut 3/8-16 500PK"]
let Fasteners_Flange_Hex_Head_Nuts_desc = ["Standard - Flange Lock Nut 1/4\" - 20 500PK","Standard - Flange Lock Nut 5/16\" - 18 500PK","Standard - Flange Lock Nut 3/8\" - 16 500PK","Premium - Flange Lock Nut 1/4-20 500PK","Premium - Flange Nut 1/4-20 500PK","Premium - Flange Nut 5/16-18 500PK","Premium - Flange Nut 3/8-16 500PK"]
let Fasteners_Kep_Hex_Head_Nuts_desc = ["Standard - Kep Nut 1/4\" - 20 500PK","Standard - Kep Nut 5/16\" - 18 500PK","Standard - Kep Nut 3/8\" - 16 500PK","Premium - Kep Nut 1/4-20 500PK","Premium - Kep Nut 5/16-18 500PK","Premium - Kep Nut 3/8-16 500PK"]
let Fasteners_Nylon_Lock_Hex_Head_Nuts_desc = ["Premium - Lock Nut w/ Nylon Insert 5/16-18 500PK","Premium - Lock Nut w/ Nylon Insert 3/8-16 500PK"]
let Fasteners_Washers_desc = ["Premium - Plated 1/4 x 5/8\"OD 1000PK","Premium - Plated 5/16 x 11/16\"OD 1000PK","Premium - Plated 5/16 x 7/8\"OD 1000PK","Premium - Plated 3/8 x 1\"OD 1000PK"]
let Fasteners_Self_Tapping_Screws_desc = ["Standard - AB Point 1/4-14 x 5/8\" 500PK","Standard - AB Point 1/4-14 x 3/4\" 500PK","Standard -  5/16\" x 1\"  - 7/16\" Head 1000PK","Premium - AB Point 1/4-14  x 5/8\" 1000PK ","Premium - AB Point 1/4-14 x 5/8\" 1000PK","Premium - 6-20 x 1/2\" -  7/16\" Head 1000PK","Premium - 1/4-20 x 1\"  - 7/16\" Head 1000PK"]
let Fasteners_Self_Drilling_Screws_desc = ["Standard - 1/4-20 x 5/8\" - 7/16\" Head 1000PK","Standard - 1/4-20 x 1\" - 7/16\" Head 1000PK","Premium - 1/4-20 x 3/4\" - 3/8\" Head 1000PK","Premium - 1/4-20 x 5/8\" - 3/8\" Head 1000PK","Premium - 1/4-20 x .88  - 3/8\" Head 1000PK","Premium - 5/16-12 x 1\" - 3/8\" Head 1000PK"]
let Fasteners_Hex_Head_Lag_Screw_desc = ["Standard - High Hat 5/16 x 1-3/4\" - 7/16\" HD 500PK","Standard - High Hat  5/16 x 2\" - 7/16\" Head  500PK","Standard - High Hat 5/16 x 2-1/2\" - 7/16\" HD  500PK","Standard - High Hat 5/16 x 3\" - 7/16\" Head 500PK","Premium - Plated 1/4-10 x 1\" - 7/16\" HD 500PK","Premium - Plated 5/16 x 1-3/4\" - 7/16\" HD 500PK","Premium - Plated 5/16 x 2\"- 7/16\" Head 500PK","Premium - Plated 5/16 x 3\" - 7/16\" Head 500PK","Premium - 1/4\" x 1-1/2\" - 7/16\" Head 1000 PK"]
let Fasteners_Hex_Head_Concrete_Sleeve_Anchor_desc = ["Standard - 5/16 x 1-1/2\" 100PK","Standard - 3/8 x 1-7/8\" 100PK","Standard - 3/8 x 3\" 100PK","Standard - 1/2 x 2-1/4\" 50PK","Standard - 1/2 x 4\" 50PK","Premium - 5/16 x 1-1/2\"","Premium - 3/8 x 1-7/8\"","Premium - 3/8 x 3\"","Premium - 3/8 x 4\""]
let Hardware_Box_Residential_desc = ["8' x 7' Single Door ","8' x 8' Single Door ","16' x 7' 0Double Door ","16' x 8' Double Door "]
let Hinges_Narrow_Body_desc = ["#1 18ga. Narrow Body Hinge ","#2 18ga. Narrow Body Hinge ","#3 18ga. Narrow Body Hinge ","#4 18ga. Narrow Body Hinge "]
let Hinges_Wide_Body_desc = ["#1 16ga. Wide Body Hinge ","#2 16ga. Wide Body Hinge ","#3 16ga. Wide Body Hinge ","#4 16ga. Wide Body Hinge ","#1 14ga. Wide Body Hinge ","#2 14ga. Wide Body Hinge ","#3 14ga. Wide Body Hinge ","#4 14ga. Wide Body Hinge ","#5 14ga. Wide Body Hinge ","#6 14ga. Wide Body Hinge ","#1 11ga. Wide Body Hinge ","#2 11ga. Wide Body Hinge ","#3 11ga. Wide Body Hinge ","#4 11ga. Wide Body Hinge ","#5 11ga. Wide Body Hinge ","#6 11ga. Wide Body Hinge ","#7 11ga. Wide Body Hinge ","#8 11ga. Wide Body Hinge ","#9 11ga. Wide Body Hinge ","#10 11ga. Wide Body Hinge ","#11 11ga. Wide Body Hinge ","#12 11ga. Wide Body Hinge "]
let Lock_Assemblies_desc = ["Universal ECR Spring Latch Lock Kit-  5 pack","Universal Double Lockbar ECR Rim Cylinder Lock Kit","Rim Cylinder Lock Kit & 2 Keys "]
let Lock_Slide_Lock_desc = ["2\" Residential Slide Lock 2\" Track - 1-7/8\" Throw ","Universal Slide Lock 2\" & 3\" Track - 2-3/8\" Throw ","3\" Comm. Slide Lock 2\" & 3\" Track - 2-5/8\" Throw "]
let Lock_Outside_Key_Release_desc = ["Emergency Outside  Key Release Lock Kit"]
let Lubricants_Spray_Lube_desc = ["Pro-Series Heavyweight Lube 15oz ","Pro-Series Heavyweight Lube 6oz ","Pro-Series Clear Grease Penetrating Lube 15oz ","Pro-Series  Penetrating Oil with PTFE 15oz ","Pro-Series Multi-Purpose Foaming Lube 15oz ","Pro-Series White Lithium Grease 15oz ","Pro SL Spray Lube 9oz ","TODCO Food Grade Lube 12oz "]
let Lubricants_Private_Label_Spray_Lube_desc = ["Private Label Pro-Series Heavyweight Lube 15oz ","Private Label Pro-Series Heavyweight Lube 6oz ","Private Label Clear Grease Penetrating Lube 15oz ","Private Label Penetrating Oil with PTFE 15oz ","Private Label Multi-Purpose Foaming Lube 15oz "]
let Lubricants_Low_Temp_desc = ["Tribolube-33T - 8oz","Lubriplate Low Temp Grease - 10oz"]
let Rollers_2in_Nylon_desc = ["TR-1 Standard Roller - 4.5\" Long","TR-1 Silent Glide Roller 4\" Long","TR-3 11 Ball Roller - 4.75\" Long","11 Ball Standard Roller - 4.75\" Long","11 Ball Thin Wall Roller - 4.5\" Long","TR-5 13 Ball Precision Sealed Roller - 4.5\" Long","TR-5 6200Z BRG Sealed Roller - 4.7\" Long","Nylon BRG Roller - 7\" Long","11 Ball Standard Roller - 7\" Long","TR-5 13 Ball Precision Sealed Roller - 7.625\" Long","TR-5 6200Z BRG Sealed Roller - 7\" Long","11 Ball Thin Wall Roller - 9.5\" Long"]
let Rollers_2in_Steel_desc = ["TR-1 7 Ball Roller - 4\" Long","TR-3 10 Ball Roller - 5.125\", Long","TR-5 Heavy Duty 10 Ball Roller  - 4.47\", Long","TR-3 10 Ball Roller - 7.562\" Long","TR-5 Heavy Duty 10 Ball Roller - 7.12\", Long","TR-5 Heavy Duty 10 Ball Roller 5/8\" Stem - 9.5\"Long","TR-3 10 Ball Roller - 10\" Long","TR-5 Heavy Duty 10 Ball Roller - 10.5\" Long"]
let Rollers_3in_desc = ["3\" TR-7 Heavy Duty Steel 10 Ball Roller - 5.96\" Long","3\" TR-7 Heavy Duty Steel 10 Ball Roller - 7.94\" Long","3\" ZP Heavy Duty Steel 10 Ball Roller - 7.25\" Long","3\" BRG White Nylon Roller - 7.25\" Long","3\" TR-7 Heavy Duty Steel 10 Ball Roller - 9.5\"","3\" TR-7 Heavy Duty Steel 10 Ball Roller 10.67\""]
let Rollers_Car_Wash_desc = ["2\" ZP Sealed White Nylon 6200RS Roller - 4.56\"","2\" ZP Sealed White Nylon 6200RS Roller 7\"","3\" TR-7 6203 Sealed Precision Nylon Roller 7.83\"","3\" UHMW 6202 Sealed Precision Bearing 7.25\""]
let Struts_22ga_desc = ["Galvanized Steel Hemmed Strut 2-1/4\" x 8' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 9' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 10' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 12' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 14' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 16' 22ga","Galvanized Steel Hemmed Strut 2-1/4\" x 18' 22ga"]
let Struts_20ga_desc = ["Galvanized Steel Hemmed Strut 2-1/4\" x 9' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 10' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 12' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 14' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 16' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 18' 20ga","Galvanized Steel Hemmed Strut 2-1/4\" x 20' 20ga"]
let Struts_3in_20ga_desc = ["Galvanized Steel Hemmed Strut 3\" x 9' 20ga","Galvanized Steel Hemmed Strut 3\" x 10' 20ga","Galvanized Steel Hemmed Strut 3\" x 12' 20ga","Galvanized Steel Hemmed Strut 3\" x 14' 20ga","Galvanized Steel Hemmed Strut 3\" x 16' 20ga","Galvanized Steel Hemmed Strut 3\" x 18' 20ga","Galvanized Steel Hemmed Strut 3\" x 20' 20ga"]
let Operator_Reinforcement_Bracket_desc = ["18\" Operator Reinforcement Bracket Galvanized","18\" Operator Reinforcement Bracket White","21\" Operator Reinforcement Bracket Galvanized","21\" Operator Reinforcement Bracket White","24\" Operator Reinforcement Bracket Galvanized","24\" Operator Reinforcement Bracket White"]
let Operator_Reinforcement_Bracket_Adjustable_desc = ["18-24\" Adjustable Operator Bracket Galvanized","18-24\" Adjustable  Bracket w/ Half Hinge Galv.","18-24\" Adjustable Bracket w/ Full Hinge Galv."]
let Top_Fixtures_Adjustable_desc = ["Residential Adjustable Top Fixture ","Commercial Adjustable Top Fixture "]
let Top_Fixtures_Low_Head_Room_desc = ["LHR Top Fixture ","Quick Close LHR Top Fixture","Super Sneaky SS-10","Super Sneaky SSNT-10 - No tabs"]
let Track_Brackets_Jamb_Brackets_desc = ["J-0 Jamb Bracket ","J-1 Jamb Bracket ","J-3 Jamb Bracket ","J-4 Jamb Bracket ","J-5 Jamb Bracket ","J-6 Jamb Bracket ","J-7 Jamb Bracket "]
let Track_Brackets_Splice_Plates_desc = ["#18 Adjustable Offset - 7' to 10' high door","#14 Adjustable Offset - 11' to 14' high door"]
let Track_Brackets_Flag_Brackets_desc = ["Adjustable Flag Bracket Residential, 4.21\" leg  ","Adjustable Flag Bracket Residential - 4.21\" leg  ","Adjustable Flag Bracket Commercial 4.25\" leg  ","Adjustable Flag Bracket Commercial, 4.25\" leg  "]
let Torsion_Spring_Plugs_1in_Shaft_desc = ["1-3/4\" Universal Anchor & Winding Cones ","2\" Universal Anchor Cone","2\" Universal Winding Cone","2-5/8\" Universal Anchor Cone","2-5/8\" Universal Winding Cone","3-3/8\" Universal Anchor Cone","3-3/8\" Universal Winding Cone","LH - 3-3/4\" Anchor Cone","RH - 3-3/4\" Anchor Cone","LH - 3-3/4\" Winding Cone","RH - 3-3/4\" Winding Cone","5-1/4\" Universal Anchor Cone","5-1/4\" Universal Winding Cone","LH - 5-7/8\" Anchor Cone","RH - 5-7/8\" Anchor Cone","LH - 5-7/8\" Winding Cone","RH - 5-7/8\" Winding Cone","6\" Universal Anchor Cone","6\" Universal Winding Cone","6\" Duplex Winding Cone","6\" Spring Filler - Sold in 12' lengths only","LH - 7-5/8\" Anchor Cone","RH - 7-5/8\" Anchor Cone","LH - 7-5/8\" Winding Cone","RH - 7-5/8\" Winding Cone"]
let Torsion_Spring_Plugs_125_Shaft_desc = ["LH - 3-3/4\" Anchor Cone","RH - 3-3/4\" Anchor Cone","LH - 3-3/4\" Winding Cone","RH - 3-3/4\" Winding Cone","LH - 5-7/8\" Anchor Cone","RH - 5-7/8\" Anchor Cone","LH - 5-7/8\" Winding Cone","RH - 5-7/8\" Winding Cone","6\" Universal Anchor Cone","6\" Universal Winding Cone","LH - 7-5/8\" Anchor Cone","RH - 7-5/8\" Anchor Cone","LH - 7-5/8\" Winding Cone","RH - 7-5/8\" Winding Cone"]
let Torsion_Tubes_desc = ["1\" Galvanized Tube 16ga. X 8' 10\" ","1\" Galvanized Tube 16ga. X 9' 10\" ","1\" Galvanized Tube 16ga. X 10' 10\" ","1\" Galvanized Tube 16ga. X 12' 10\" ","1\" Galvanized Tube 16ga. X 15' 10\" ","1\" Galvanized Tube 16ga. X 16' 10\" ","1\" Galvanized Tube 16ga. X 18' 10\" "]
let Torsion_Solid_Shaft_desc = ["1\" - Full Length  Keyed  Solid Shaft 6' 10\"","1\" - Full Length  Keyed  Solid Shaft 7' 10\" ","1\" - Full Length  Keyed  Solid Shaft 8' 10\" ","1\" - Full Length  Keyed  Solid Shaft 9' 10\"","1\" - Full Length  Keyed  Solid Shaft 10' 10\"","1\" - Full Length  Keyed  Solid Shaft 11' 10\" ","1\" - Full Length  Keyed  Solid Shaft 12' 10\" ","1\" - Full Length  Keyed  Solid Shaft 13' 10\"","1\" - Full Length  Keyed  Solid Shaft 14' 10\"","1\" - Full Length  Keyed  Solid Shaft 15' 10\"","1\" - Full Length  Keyed  Solid Shaft 17' 08\"","1\" - Full Length  Keyed  Solid Shaft 19' 08\"","1-1/4\" - Full Length  Keyed  Solid Shaft 13' 10\"","1-1/4\" - Full Length  Keyed  Solid Shaft 18' 10\""]
let Torsion_Shaft_Collars_desc = ["1\" Shaft Collar w/ Set Screw - 1-5/8\" O.D.","1-1/4\" Shaft Collar w/ Set Screw - 2\" O.D."]
let Torsion_Shaft_Couplers_desc = ["Adjustable Shaft Coupling Assembly - 1\" Bore","Adjustable Shaft Coupling Assembly - 1-1/4\" Bore","Adjustable Shaft Coupling Assy - 1\" to 1-1/4\" Bore"]
let TorqueMaster_Conversion_Kits_desc = ["TQM1 Conversion Kit for 12\" radius track ","TQM1 Conversion Kit for 15\" radius track ","TQM1 Conv. Kit for 12\"R WD Quick Install Track ","TQM1 Conv. Kit for 15\"R WD Quick Install Track "]
let TorqueMaster_Parts_desc = ["Cable & Drum Assembly for Front Mounted TQM Spring","Cable & Drum Assembly for Rear Mounted TQM Spring","End Bracket Assembly for TQM+ single spring","End Bracket Assembly for TQM+ double spring","TM Center Bearing Bracket and Bushing ","TM Winding Tool "]
let Vinyl_Stop_No_Holes_desc = ["Uniflex - 7' - White - No Holes","Uniflex - 8' - White - No Holes","Uniflex - 9' - White - No Holes","Uniflex - 10' - White - No Holes","Uniflex - 12' - White - No Holes","Uniflex - 14' - White - No Holes","Uniflex - 16' - White - No Holes","Uniflex - 18' - White - No Holes","Uniflex - 7' - Almond No Holes","Uniflex - 8' - Almond - No Holes","Uniflex - 9' - Almond No Holes","Uniflex - 16' - Almond - No Holes","Uniflex - 18' - Almond - No Holes","Uniflex - 7' - Desert Tan - No Holes","Uniflex - 16' - Desert Tan - No Holes","Uniflex - 18' - Desert Tan - No Holes","Uniflex - 18' - Hunter Green - No Holes","Uniflex - 7' - Cedar Brown - No Holes","Uniflex - 16' - Cedar Brown - No Holes","Uniflex - 18' - Cedar Brown - No Holes","Uniflex - 7' - Brown - No Holes","Uniflex - 8' - Brown - No Holes","Uniflex - 9' - Brown - No Holes","Uniflex - 16' - Brown - No Holes","Uniflex - 18' - Brown - No Holes","Uniflex - 7' - Taupe - No Holes","Uniflex - 8' - Taupe - No Holes","Uniflex - 9' - Taupe - No Holes","Uniflex - 16' - Taupe - No Holes","Uniflex - 18' - Taupe - No Holes","Uniflex - 16' - Terra Bronze - No Holes","Uniflex - 18' - Terra Bronze - No Holes","Uniflex - 7' - Gray - No Holes"]
let Vinyl_Stop_with_Holes_desc = ["Uniflex - 7' - White - with Holes","Uniflex - 8' - White - with Holes","Uniflex - 9' - White - with Holes","Uniflex - 10' - White - with Holes","Uniflex - 12' - White - with Holes","Uniflex - 14' - White - with Holes","Uniflex - 16' - White - with Holes","Uniflex - 18' - White - with Holes","Uniflex - 7' - Almond with Holes","Uniflex - 8' - Almond - with Holes","Uniflex - 9' - Almond with Holes","Uniflex - 16' - Almond - with Holes","Uniflex - 18' - Almond - with Holes","Uniflex - 18' - Desert Tan - with Holes","Uniflex - 16' - Brown - with Holes","Uniflex - 18' - Brown - with Holes","Uniflex - 16' - Gray - with Holes","Uniflex - 18' - Gray - with Holes"]
let Weather_Seal_T_Bottom_Seal_desc = ["T-Style - 2-3/4\" wide - T-width = 1/4\" Black ","T-Style - 3-1/2\" wide  - T-width = 1/4\", Black","T-Style - 3-3/4\" wide - T-width = 5/16\" Black","T-Style - 4-3/4\" wide - T-width = 5/16\" Black","T-Style - 6\" wide - T-width = 5/16\" Black"]
let Weather_Seal_Bead_Bottom_Seal_desc = ["Bead Style - 3\" wide - Bead width = 3/16\" Black ","Bead Style - 4\" wide - Bead width = 3/16\" Black ","Bead Style - 6\" wide  - Bead width = 3/16\" Black"]
let Weather_Seal_Brush_Seal_desc = ["1\" Wide x 6' Long Brush Seal ","1\" Wide x 8' Long Brush Seal  ","1-3/8\" Wide x 6' Long Brush Seal  ","1-3/8\" Wide x 8' Long Brush Seal  ","2\" Wide x 6' Long Brush Seal  ","2\" Wide x 8' Long Brush Seal  ","3\" Wide x 6' Long Brush Seal  ","3\" Wide x 8' Long Brush Seal  ","4\" Wide x 6' Long Brush Seal  ","4\" Wide x 8' Long Brush Seal  ","6\" Wide x 6' Long Brush Seal  ","6\" Wide x 8' Long Brush Seal  "]
let Weather_Seal_45_Retainer_desc = ["1-1/4\" x 45 x 6' Aluminum Retainer","1-1/4\" x 45 x 8' Aluminum Retainer","1-1/4\" x 45 x 12' Aluminum Retainer","2\" x 45 x 6' Aluminum Retainer","2\" x 45 x 8' Aluminum Retainer","2\" x 45 x 12' Aluminum Retainer"]
let Weather_Seal_90_Retainer_desc = ["1-1/4\" x 90 x 6' Aluminum Retainer","1-1/4\" x 90 x 8' Aluminum Retainer","1-1/4\" x 90 x 12' Aluminum Retainer"]
let Weather_Seal_180_Retainer_desc = ["1-1/4\" x 180 x 6' Aluminum Retainer","1-1/4\" x 180 x 8' Aluminum Retainer","1-1/4\" x 180 x 12' Aluminum Retainer"]
let Weather_Seal_90_and_180_Retainer_desc = ["1-7/8\" x 90 & 180 x 6' Alum. Retainer","1-7/8\" x 90 & 180 x 8' Alum. Retainer","1-7/8\" x 90 & 180 x 12' Alum. Retainer"]
let Weather_Seal_Clipon_Jamb_Seal_desc = ["JS-02 Clip-on RA Jamb Seal - Brown","JS-02 Clip-on RA Jamb Seal - Gray","JS-02 Clip-on RA Jamb Seal - White","JS-02 Clip-on RA Jamb Seal - Black"]
let Weather_Seal_Reverse_Angle_Jamb_Seal_desc = ["RS-175 Reverse Jamb Angle Seal - White","RS-175 Reverse Jamb Angle Seal - Almond","RS-175 Reverse Jamb Angle Seal - Sandstone","RS-175 Reverse Jamb Angle Seal - Brown"]



class Sub_Prodcut_Cat: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          //if catagory == ["rollers"]{
            return yourArray.count
    }
    private func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "sub_product_cell")
       
            cell.textLabel?.text = yourArray[indexPath.row]
            cell.textLabel?.numberOfLines=0
            cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            cell.backgroundColor = UIColor.blue
            cell.textLabel?.textColor = UIColor.white
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         product_index = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var tb_view: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    var catagory = [products[cat_index]]
        if catagory == ["Angle_Prepunched"]{
            yourArray = Angle_Prepunched_desc
        }
        if catagory == ["Bearings_Steel"]{
            yourArray = Bearings_Steel_desc
        }
        if catagory == ["Bearings_Football"]{
            yourArray = Bearings_Football_desc
        }
        if catagory == ["Bearings_Precision"]{
            yourArray = Bearings_Precision_desc
        }
        if catagory == ["Bottom_Bars"]{
            yourArray = Bottom_Bars_desc
        }
        if catagory == ["Bottom_Brackets_Residential"]{
            yourArray = Bottom_Brackets_Residential_desc
        }
        if catagory == ["Bottom_Brackets_Commercial"]{
            yourArray = Bottom_Brackets_Commercial_desc
        }
        if catagory == ["Cable_Bulk"]{
            yourArray = Cable_Bulk_desc
        }
        if catagory == ["Cable_Assemblies"]{
            yourArray = Cable_Assemblies_desc
        }
        if catagory == ["Cable_Sleeves"]{
            yourArray = Cable_Sleeves_desc
        }
        if catagory == ["Cable_Thimbles"]{
            yourArray = Cable_Thimbles_desc
        }
        if catagory == ["Cable_Stops"]{
            yourArray = Cable_Stops_desc
        }
        if catagory == ["Chain_Hoist_Kits"]{
            yourArray = Chain_Hoist_Kits_desc
        }
        if catagory == ["Chain_Hoist_Accessories"]{
            yourArray = Chain_Hoist_Accessories_desc
        }
        if catagory == ["Chain_Hoist_Connecting_Link"]{
            yourArray = Chain_Hoist_Connecting_Link_desc
        }
        if catagory == ["Chain_Hoist_Offset_Link"]{
            yourArray = Chain_Hoist_Offset_Link_desc
        }
        if catagory == ["Chain_Hoist_Sproket"]{
            yourArray = Chain_Hoist_Sproket_desc
        }
        if catagory == ["Drums_Standard_Lift"]{
            yourArray = Drums_Standard_Lift_desc
        }
        if catagory == ["Drums_Vertical_Lift"]{
            yourArray = Drums_Vertical_Lift_desc
        }
        if catagory == ["Drums_High_Lift"]{
            yourArray = Drums_High_Lift_desc
        }
        if catagory == ["Extension_Spring_Hardware"]{
            yourArray = Extension_Spring_Hardware_desc
        }
        if catagory == ["Extension_Springs_Single_Loop"]{
            yourArray = Extension_Springs_Single_Loop_desc
        }
        if catagory == ["Extension_Springs_Double_Loop"]{
            yourArray = Extension_Springs_Double_Loop_desc
        }
        if catagory == ["Extension_Springs_Clipped_End"]{
            yourArray = Extension_Springs_Clipped_End_desc
        }
        if catagory == ["Fasteners_Flat_Head_Carriage_Bolt"]{
            yourArray = Fasteners_Flat_Head_Carriage_Bolt_desc
        }
        if catagory == ["Fasteners_Machine_Bolt"]{
            yourArray = Fasteners_Machine_Bolt_desc
        }
        if catagory == ["Fasteners_Track_Bolt"]{
            yourArray = Fasteners_Track_Bolt_desc
        }
        if catagory == ["Fasteners_Hex_Head_Bolts"]{
            yourArray = Fasteners_Hex_Head_Bolts_desc
        }
        if catagory == ["Fasteners_Hex_Head_Nuts"]{
            yourArray = Fasteners_Hex_Head_Nuts_desc
        }
        if catagory == ["Fasteners_Flange_Hex_Head_Nuts"]{
            yourArray = Fasteners_Flange_Hex_Head_Nuts_desc
        }
        if catagory == ["Fasteners_Kep_Hex_Head_Nuts"]{
            yourArray = Fasteners_Kep_Hex_Head_Nuts_desc
        }
        if catagory == ["Fasteners_Nylon_Lock_Hex_Head_Nuts"]{
            yourArray = Fasteners_Nylon_Lock_Hex_Head_Nuts_desc
        }
        if catagory == ["Fasteners_Hex_Head_Nuts"]{
            yourArray = Fasteners_Hex_Head_Nuts_desc
        }
        if catagory == ["Fasteners_Washers"]{
            yourArray = Fasteners_Washers_desc
        }
        if catagory == ["Fasteners_Self_Tapping_Screws"]{
            yourArray = Fasteners_Self_Tapping_Screws_desc
        }
        if catagory == ["Fasteners_Self_Drilling_Screws"]{
            yourArray = Fasteners_Self_Drilling_Screws_desc
        }
        if catagory == ["Fasteners_Hex_Head_Lag_Screw"]{
            yourArray = Fasteners_Hex_Head_Lag_Screw_desc
        }
        if catagory == ["Fasteners_Hex_Head_Concrete_Sleeve_Anchor"]{
            yourArray = Fasteners_Hex_Head_Concrete_Sleeve_Anchor_desc
        }
        if catagory == ["Hardware_Box_Residential"]{
            yourArray = Hardware_Box_Residential_desc
        }
        if catagory == ["Hinges_Narrow_Body"]{
            yourArray = Hinges_Narrow_Body_desc
        }
        if catagory == ["Lock_Assemblies"]{
            yourArray = Lock_Assemblies_desc
        }
        if catagory == ["Lock_Slide_Lock"]{
            yourArray = Lock_Slide_Lock_desc
        }
        if catagory == ["Hinges_Wide_Body"]{
            yourArray = Hinges_Wide_Body_desc
        }
        if catagory == ["Lock_Outside_Key_Release"]{
            yourArray = Lock_Outside_Key_Release_desc
        }
        if catagory == ["Lubricants_Spray_Lube"]{
            yourArray = Lubricants_Spray_Lube_desc
        }
        if catagory == ["Lubricants_Private_Label_Spray_Lube"]{
            yourArray = Lubricants_Private_Label_Spray_Lube_desc
        }
        if catagory == ["Lubricants_Low_Temp"]{
            yourArray = Lubricants_Low_Temp_desc
        }
        if catagory == ["Rollers_2in_Nylon"]{
            yourArray = Rollers_2in_Nylon_desc
        }
        if catagory == ["Rollers_2in_Steel"]{
            yourArray = Rollers_2in_Steel_desc
        }
        if catagory == ["Rollers_3in"]{
            yourArray = Rollers_3in_desc
        }
        if catagory == ["Rollers_Car_Wash"]{
            yourArray = Rollers_Car_Wash_desc
        }
        if catagory == ["Struts_22ga"]{
            yourArray = Struts_22ga_desc
        }
        if catagory == ["Struts_20ga"]{
            yourArray = Struts_20ga_desc
        }
        if catagory == ["Struts_3in_20ga"]{
            yourArray = Struts_3in_20ga_desc
        }
        if catagory == ["Operator_Reinforcement_Bracket"]{
            yourArray = Operator_Reinforcement_Bracket_desc
        }
        if catagory == ["Operator_Reinforcement_Bracket_Adjustable"]{
            yourArray = Operator_Reinforcement_Bracket_Adjustable_desc
        }
        if catagory == ["Top_Fixtures_Adjustable"]{
            yourArray = Top_Fixtures_Adjustable_desc
        }
        if catagory == ["Top_Fixtures_Low_Head_Room"]{
            yourArray = Top_Fixtures_Low_Head_Room_desc
        }
        if catagory == ["Track_Brackets_Jamb_Brackets"]{
            yourArray = Track_Brackets_Jamb_Brackets_desc
        }
        if catagory == ["Track_Brackets_Splice_Plates"]{
            yourArray = Track_Brackets_Splice_Plates_desc
        }
        if catagory == ["Track_Brackets_Flag_Brackets"]{
            yourArray = Track_Brackets_Flag_Brackets_desc
        }
        if catagory == ["Torsion_Spring_Plugs_1in_Shaft"]{
            yourArray = Torsion_Spring_Plugs_1in_Shaft_desc
        }
        if catagory == ["Torsion_Spring_Plugs_125in_Shaft"]{
            yourArray = Torsion_Spring_Plugs_125_Shaft_desc
        }
        if catagory == ["Torsion_Tubes"]{
            yourArray = Torsion_Tubes_desc
        }
        if catagory == ["Torsion_Solid_Shaft"]{
            yourArray = Torsion_Solid_Shaft_desc
        }
        if catagory == ["Torsion_Shaft_Collars"]{
            yourArray = Torsion_Shaft_Collars_desc
        }
        if catagory == ["Torsion_Shaft_Couplers"]{
            yourArray = Torsion_Shaft_Couplers_desc
        }
        if catagory == ["TorqueMaster_Conversion_Kits"]{
            yourArray = TorqueMaster_Conversion_Kits_desc
        }
        if catagory == ["TorqueMaster_Parts"]{
            yourArray = TorqueMaster_Parts_desc
        }
        if catagory == ["Vinyl_Stop_No_Holes"]{
            yourArray = Vinyl_Stop_No_Holes_desc
        }
        if catagory == ["Vinyl_Stop_with_Holes"]{
            yourArray = Vinyl_Stop_with_Holes_desc
        }
        if catagory == ["Weather_Seal_T_Bottom_Seal"]{
            yourArray = Weather_Seal_T_Bottom_Seal_desc
        }
        if catagory == ["Weather_Seal_Bead_Bottom_Seal"]{
            yourArray = Weather_Seal_Bead_Bottom_Seal_desc
        }
        if catagory == ["Weather_Seal_Brush_Seal"]{
            yourArray = Weather_Seal_Brush_Seal_desc
        }
        if catagory == ["Weather_Seal_45_Retainer"]{
            yourArray = Weather_Seal_45_Retainer_desc
        }
        if catagory == ["Weather_Seal_90_Retainer"]{
            yourArray = Weather_Seal_90_Retainer_desc
        }
        if catagory == ["Weather_Seal_180_Retainer"]{
            yourArray = Weather_Seal_180_Retainer_desc
        }
        if catagory == ["Weather_Seal_90_and_180_Retainer"]{
            yourArray = Weather_Seal_90_and_180_Retainer_desc
        }
        if catagory == ["Weather_Seal_Clipon_Jamb_Seal"]{
            yourArray = Weather_Seal_Clipon_Jamb_Seal_desc
        }
        if catagory == ["Weather_Seal_Reverse_Angle_Jamb_Seal"]{
            yourArray = Weather_Seal_Reverse_Angle_Jamb_Seal_desc
        }
        tb_view.reloadData()
       
//
        
        
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.addTapped))
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControlState.normal)
        button.addTarget(self, action: "cart:", for: UIControlEvents.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        var barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
        
    }
    
    func cart(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cart", sender: nil)
    }

   }
