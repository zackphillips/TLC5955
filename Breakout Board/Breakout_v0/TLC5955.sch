<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="no" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="no" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="no" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="no" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="no" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="no" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="no" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="no" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="no" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="no" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="no" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="no" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="no" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="no" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="no" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="no" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="WallerLabLib">
<packages>
<package name="56-HTSSOP">
<smd name="P42" x="0" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P43" x="-0.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P44" x="-1" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P45" x="-1.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P41" x="0.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P40" x="1" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P39" x="1.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P46" x="-2" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P38" x="2" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P37" x="2.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P47" x="-2.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P48" x="-3" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P49" x="-3.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P50" x="-4" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P51" x="-4.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P52" x="-5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P53" x="-5.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P31" x="5.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P36" x="3" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P35" x="3.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P34" x="4" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P33" x="4.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P32" x="5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P15" x="0" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P14" x="-0.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P13" x="-1" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P12" x="-1.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P16" x="0.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P17" x="1" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P18" x="1.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P11" x="-2" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P19" x="2" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P20" x="2.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P10" x="-2.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P9" x="-3" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P8" x="-3.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P7" x="-4" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P6" x="-4.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P5" x="-5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P4" x="-5.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P26" x="5.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P21" x="3" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P22" x="3.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P23" x="4" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P24" x="4.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P25" x="5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P27" x="6" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P28" x="6.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P3" x="-6" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P2" x="-6.5" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P1" x="-7" y="-3.8" dx="0.3" dy="1.55" layer="1"/>
<smd name="P30" x="6" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P29" x="6.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P54" x="-6" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P55" x="-6.5" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<smd name="P56" x="-7" y="3.75" dx="0.3" dy="1.55" layer="1"/>
<text x="-7.8" y="-4.1" size="1" layer="21" rot="R90">1</text>
<text x="-7.5" y="3" size="1" layer="21" rot="R90">56</text>
<wire x1="-7.1" y1="2.6" x2="-7.1" y2="-2.6" width="0.127" layer="21"/>
<wire x1="-7.1" y1="-2.6" x2="6.6" y2="-2.6" width="0.127" layer="21"/>
<wire x1="6.6" y1="-2.6" x2="6.6" y2="2.6" width="0.127" layer="21"/>
<wire x1="6.6" y1="2.6" x2="-7.1" y2="2.6" width="0.127" layer="21"/>
<smd name="P$1" x="0" y="0" dx="1.27" dy="0.635" layer="1"/>
</package>
<package name="28PIN_HOLES">
<pad name="P1" x="-34.29" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P2" x="-31.75" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P3" x="-29.21" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P4" x="-26.67" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P5" x="-24.13" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P6" x="-21.59" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P7" x="-19.05" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P8" x="-16.51" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P9" x="-13.97" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P10" x="-11.43" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P11" x="-8.89" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P12" x="-6.35" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P13" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P14" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P15" x="1.27" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P16" x="3.81" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P17" x="6.35" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P18" x="8.89" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P19" x="11.43" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P20" x="13.97" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P21" x="16.51" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P22" x="19.05" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P23" x="21.59" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P24" x="24.13" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P25" x="26.67" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P26" x="29.21" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P27" x="31.75" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<pad name="P28" x="34.29" y="0" drill="1.016" diameter="1.778" shape="long" rot="R90"/>
<text x="-36.83" y="1.27" size="1.27" layer="48">1</text>
</package>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="48CH_LEDDRIVER">
<pin name="G3" x="-22.86" y="5.08" length="middle"/>
<pin name="R3" x="-22.86" y="7.62" length="middle"/>
<pin name="B3" x="-22.86" y="2.54" length="middle"/>
<pin name="B2" x="-22.86" y="12.7" length="middle"/>
<pin name="G2" x="-22.86" y="15.24" length="middle"/>
<pin name="R2" x="-22.86" y="17.78" length="middle"/>
<pin name="B1" x="-22.86" y="22.86" length="middle"/>
<pin name="G1" x="-22.86" y="25.4" length="middle"/>
<pin name="R1" x="-22.86" y="27.94" length="middle"/>
<pin name="R4" x="-22.86" y="-2.54" length="middle"/>
<pin name="G4" x="-22.86" y="-5.08" length="middle"/>
<pin name="B4" x="-22.86" y="-7.62" length="middle"/>
<pin name="R5" x="-22.86" y="-12.7" length="middle"/>
<pin name="G5" x="-22.86" y="-15.24" length="middle"/>
<pin name="B5" x="-22.86" y="-17.78" length="middle"/>
<pin name="R6" x="-22.86" y="-22.86" length="middle"/>
<pin name="G6" x="-22.86" y="-25.4" length="middle"/>
<pin name="B6" x="-22.86" y="-27.94" length="middle"/>
<pin name="B0" x="-22.86" y="33.02" length="middle"/>
<pin name="G0" x="-22.86" y="35.56" length="middle"/>
<pin name="R0" x="-22.86" y="38.1" length="middle"/>
<pin name="R7" x="-22.86" y="-33.02" length="middle"/>
<pin name="G7" x="-22.86" y="-35.56" length="middle"/>
<pin name="B7" x="-22.86" y="-38.1" length="middle"/>
<wire x1="-17.78" y1="40.64" x2="-17.78" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-40.64" x2="17.78" y2="-40.64" width="0.254" layer="94"/>
<wire x1="17.78" y1="-40.64" x2="17.78" y2="40.64" width="0.254" layer="94"/>
<wire x1="17.78" y1="40.64" x2="-17.78" y2="40.64" width="0.254" layer="94"/>
<pin name="VCC" x="-2.54" y="-45.72" length="middle" rot="R90"/>
<pin name="GND" x="5.08" y="-45.72" length="middle" rot="R90"/>
<pin name="GND2" x="7.62" y="-45.72" length="middle" rot="R90"/>
<pin name="SIN" x="-5.08" y="45.72" length="middle" rot="R270"/>
<pin name="SOUT" x="-2.54" y="45.72" length="middle" rot="R270"/>
<pin name="SCLK" x="2.54" y="45.72" length="middle" rot="R270"/>
<pin name="LAT" x="5.08" y="45.72" length="middle" rot="R270"/>
<pin name="GSCLK" x="7.62" y="45.72" length="middle" rot="R270"/>
<text x="-17.018" y="41.91" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.018" y="-43.942" size="1.778" layer="96">&gt;VALUE</text>
<pin name="G8" x="22.86" y="35.56" length="middle" rot="R180"/>
<pin name="R8" x="22.86" y="33.02" length="middle" rot="R180"/>
<pin name="B8" x="22.86" y="38.1" length="middle" rot="R180"/>
<pin name="B9" x="22.86" y="27.94" length="middle" rot="R180"/>
<pin name="G9" x="22.86" y="25.4" length="middle" rot="R180"/>
<pin name="R9" x="22.86" y="22.86" length="middle" rot="R180"/>
<pin name="B10" x="22.86" y="17.78" length="middle" rot="R180"/>
<pin name="G10" x="22.86" y="15.24" length="middle" rot="R180"/>
<pin name="R10" x="22.86" y="12.7" length="middle" rot="R180"/>
<pin name="R11" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="G11" x="22.86" y="5.08" length="middle" rot="R180"/>
<pin name="B11" x="22.86" y="7.62" length="middle" rot="R180"/>
<pin name="R12" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="G12" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="B12" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="R13" x="22.86" y="-17.78" length="middle" rot="R180"/>
<pin name="G13" x="22.86" y="-15.24" length="middle" rot="R180"/>
<pin name="B13" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="B14" x="22.86" y="-22.86" length="middle" rot="R180"/>
<pin name="G14" x="22.86" y="-25.4" length="middle" rot="R180"/>
<pin name="R14" x="22.86" y="-27.94" length="middle" rot="R180"/>
<pin name="R15" x="22.86" y="-38.1" length="middle" rot="R180"/>
<pin name="G15" x="22.86" y="-35.56" length="middle" rot="R180"/>
<pin name="B15" x="22.86" y="-33.02" length="middle" rot="R180"/>
<pin name="PAD" x="2.54" y="-45.72" length="middle" rot="R90"/>
</symbol>
<symbol name="28PIN_CONN">
<pin name="P1" x="-68.58" y="-7.62" length="middle" rot="R90"/>
<pin name="P2" x="-63.5" y="-7.62" length="middle" rot="R90"/>
<pin name="P3" x="-58.42" y="-7.62" length="middle" rot="R90"/>
<pin name="P4" x="-53.34" y="-7.62" length="middle" rot="R90"/>
<pin name="P5" x="-48.26" y="-7.62" length="middle" rot="R90"/>
<pin name="P6" x="-43.18" y="-7.62" length="middle" rot="R90"/>
<pin name="P7" x="-38.1" y="-7.62" length="middle" rot="R90"/>
<pin name="P8" x="-33.02" y="-7.62" length="middle" rot="R90"/>
<pin name="P9" x="-27.94" y="-7.62" length="middle" rot="R90"/>
<pin name="P10" x="-22.86" y="-7.62" length="middle" rot="R90"/>
<pin name="P11" x="-17.78" y="-7.62" length="middle" rot="R90"/>
<pin name="P12" x="-12.7" y="-7.62" length="middle" rot="R90"/>
<pin name="P13" x="-7.62" y="-7.62" length="middle" rot="R90"/>
<pin name="P14" x="-2.54" y="-7.62" length="middle" rot="R90"/>
<pin name="P15" x="2.54" y="-7.62" length="middle" rot="R90"/>
<pin name="P16" x="7.62" y="-7.62" length="middle" rot="R90"/>
<pin name="P17" x="12.7" y="-7.62" length="middle" rot="R90"/>
<pin name="P18" x="17.78" y="-7.62" length="middle" rot="R90"/>
<pin name="P19" x="22.86" y="-7.62" length="middle" rot="R90"/>
<pin name="P20" x="27.94" y="-7.62" length="middle" rot="R90"/>
<pin name="P21" x="33.02" y="-7.62" length="middle" rot="R90"/>
<pin name="P22" x="38.1" y="-7.62" length="middle" rot="R90"/>
<pin name="P23" x="43.18" y="-7.62" length="middle" rot="R90"/>
<pin name="P24" x="48.26" y="-7.62" length="middle" rot="R90"/>
<pin name="P25" x="53.34" y="-7.62" length="middle" rot="R90"/>
<pin name="P26" x="58.42" y="-7.62" length="middle" rot="R90"/>
<pin name="P27" x="63.5" y="-7.62" length="middle" rot="R90"/>
<pin name="P28" x="68.58" y="-7.62" length="middle" rot="R90"/>
<wire x1="-71.12" y1="-2.54" x2="-71.12" y2="5.08" width="0.254" layer="94"/>
<wire x1="-71.12" y1="5.08" x2="71.12" y2="5.08" width="0.254" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="-2.54" width="0.254" layer="94"/>
<wire x1="71.12" y1="-2.54" x2="-71.12" y2="-2.54" width="0.254" layer="94"/>
<text x="-71.12" y="7.62" size="1.27" layer="95">&gt;Name</text>
<text x="55.88" y="7.62" size="1.27" layer="96">&gt;Value</text>
</symbol>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TLC5955">
<gates>
<gate name="G$1" symbol="48CH_LEDDRIVER" x="0" y="0"/>
</gates>
<devices>
<device name="V0" package="56-HTSSOP">
<connects>
<connect gate="G$1" pin="B0" pad="P7"/>
<connect gate="G$1" pin="B1" pad="P13"/>
<connect gate="G$1" pin="B10" pad="P38"/>
<connect gate="G$1" pin="B11" pad="P32"/>
<connect gate="G$1" pin="B12" pad="P50"/>
<connect gate="G$1" pin="B13" pad="P44"/>
<connect gate="G$1" pin="B14" pad="P41"/>
<connect gate="G$1" pin="B15" pad="P35"/>
<connect gate="G$1" pin="B2" pad="P16"/>
<connect gate="G$1" pin="B3" pad="P22"/>
<connect gate="G$1" pin="B4" pad="P4"/>
<connect gate="G$1" pin="B5" pad="P10"/>
<connect gate="G$1" pin="B6" pad="P19"/>
<connect gate="G$1" pin="B7" pad="P25"/>
<connect gate="G$1" pin="B8" pad="P53"/>
<connect gate="G$1" pin="B9" pad="P47"/>
<connect gate="G$1" pin="G0" pad="P9"/>
<connect gate="G$1" pin="G1" pad="P15"/>
<connect gate="G$1" pin="G10" pad="P36"/>
<connect gate="G$1" pin="G11" pad="P30"/>
<connect gate="G$1" pin="G12" pad="P48"/>
<connect gate="G$1" pin="G13" pad="P42"/>
<connect gate="G$1" pin="G14" pad="P39"/>
<connect gate="G$1" pin="G15" pad="P33"/>
<connect gate="G$1" pin="G2" pad="P18"/>
<connect gate="G$1" pin="G3" pad="P24"/>
<connect gate="G$1" pin="G4" pad="P6"/>
<connect gate="G$1" pin="G5" pad="P12"/>
<connect gate="G$1" pin="G6" pad="P21"/>
<connect gate="G$1" pin="G7" pad="P27"/>
<connect gate="G$1" pin="G8" pad="P51"/>
<connect gate="G$1" pin="G9" pad="P45"/>
<connect gate="G$1" pin="GND" pad="P56"/>
<connect gate="G$1" pin="GND2" pad="P29"/>
<connect gate="G$1" pin="GSCLK" pad="P55"/>
<connect gate="G$1" pin="LAT" pad="P3"/>
<connect gate="G$1" pin="PAD" pad="P$1"/>
<connect gate="G$1" pin="R0" pad="P8"/>
<connect gate="G$1" pin="R1" pad="P14"/>
<connect gate="G$1" pin="R10" pad="P37"/>
<connect gate="G$1" pin="R11" pad="P31"/>
<connect gate="G$1" pin="R12" pad="P49"/>
<connect gate="G$1" pin="R13" pad="P43"/>
<connect gate="G$1" pin="R14" pad="P40"/>
<connect gate="G$1" pin="R15" pad="P34"/>
<connect gate="G$1" pin="R2" pad="P17"/>
<connect gate="G$1" pin="R3" pad="P23"/>
<connect gate="G$1" pin="R4" pad="P5"/>
<connect gate="G$1" pin="R5" pad="P11"/>
<connect gate="G$1" pin="R6" pad="P20"/>
<connect gate="G$1" pin="R7" pad="P26"/>
<connect gate="G$1" pin="R8" pad="P52"/>
<connect gate="G$1" pin="R9" pad="P46"/>
<connect gate="G$1" pin="SCLK" pad="P2"/>
<connect gate="G$1" pin="SIN" pad="P1"/>
<connect gate="G$1" pin="SOUT" pad="P28"/>
<connect gate="G$1" pin="VCC" pad="P54"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="28_PINS">
<gates>
<gate name="G$1" symbol="28PIN_CONN" x="0" y="0"/>
</gates>
<devices>
<device name="0" package="28PIN_HOLES">
<connects>
<connect gate="G$1" pin="P1" pad="P1"/>
<connect gate="G$1" pin="P10" pad="P10"/>
<connect gate="G$1" pin="P11" pad="P11"/>
<connect gate="G$1" pin="P12" pad="P12"/>
<connect gate="G$1" pin="P13" pad="P13"/>
<connect gate="G$1" pin="P14" pad="P14"/>
<connect gate="G$1" pin="P15" pad="P15"/>
<connect gate="G$1" pin="P16" pad="P16"/>
<connect gate="G$1" pin="P17" pad="P17"/>
<connect gate="G$1" pin="P18" pad="P18"/>
<connect gate="G$1" pin="P19" pad="P19"/>
<connect gate="G$1" pin="P2" pad="P2"/>
<connect gate="G$1" pin="P20" pad="P20"/>
<connect gate="G$1" pin="P21" pad="P21"/>
<connect gate="G$1" pin="P22" pad="P22"/>
<connect gate="G$1" pin="P23" pad="P23"/>
<connect gate="G$1" pin="P24" pad="P24"/>
<connect gate="G$1" pin="P25" pad="P25"/>
<connect gate="G$1" pin="P26" pad="P26"/>
<connect gate="G$1" pin="P27" pad="P27"/>
<connect gate="G$1" pin="P28" pad="P28"/>
<connect gate="G$1" pin="P3" pad="P3"/>
<connect gate="G$1" pin="P4" pad="P4"/>
<connect gate="G$1" pin="P5" pad="P5"/>
<connect gate="G$1" pin="P6" pad="P6"/>
<connect gate="G$1" pin="P7" pad="P7"/>
<connect gate="G$1" pin="P8" pad="P8"/>
<connect gate="G$1" pin="P9" pad="P9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10UF-6.3V-20%(0603)" prefix="C" uservalue="yes">
<description>CAP-11015</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-11015" constant="no"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="WallerLabLib" deviceset="TLC5955" device="V0"/>
<part name="U$2" library="WallerLabLib" deviceset="28_PINS" device="0"/>
<part name="U$3" library="WallerLabLib" deviceset="28_PINS" device="0"/>
<part name="C1" library="WallerLabLib" deviceset="10UF-6.3V-20%(0603)" device="" value="10uF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="63.5" y="66.04"/>
<instance part="U$2" gate="G$1" x="-22.86" y="68.58" rot="R90"/>
<instance part="U$3" gate="G$1" x="170.18" y="68.58" rot="R270"/>
<instance part="C1" gate="G$1" x="76.2" y="12.7" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P4"/>
<wire x1="-15.24" y1="15.24" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<wire x1="30.48" y1="15.24" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B4"/>
<wire x1="30.48" y1="58.42" x2="40.64" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P5"/>
<wire x1="-15.24" y1="20.32" x2="27.94" y2="20.32" width="0.1524" layer="91"/>
<wire x1="27.94" y1="20.32" x2="27.94" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R4"/>
<wire x1="27.94" y1="63.5" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P6"/>
<wire x1="-15.24" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G4"/>
<wire x1="25.4" y1="60.96" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P7"/>
<wire x1="-15.24" y1="30.48" x2="22.86" y2="30.48" width="0.1524" layer="91"/>
<wire x1="22.86" y1="30.48" x2="22.86" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B0"/>
<wire x1="22.86" y1="99.06" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P8"/>
<wire x1="-15.24" y1="35.56" x2="20.32" y2="35.56" width="0.1524" layer="91"/>
<wire x1="20.32" y1="35.56" x2="20.32" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R0"/>
<wire x1="20.32" y1="104.14" x2="40.64" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P10"/>
<wire x1="-15.24" y1="45.72" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B5"/>
<wire x1="15.24" y1="48.26" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P11"/>
<wire x1="-15.24" y1="50.8" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
<wire x1="12.7" y1="50.8" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R5"/>
<wire x1="12.7" y1="53.34" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P12"/>
<wire x1="-15.24" y1="55.88" x2="15.24" y2="55.88" width="0.1524" layer="91"/>
<wire x1="15.24" y1="55.88" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G5"/>
<wire x1="15.24" y1="50.8" x2="40.64" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P13"/>
<wire x1="-15.24" y1="60.96" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="15.24" y1="60.96" x2="15.24" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B1"/>
<wire x1="15.24" y1="88.9" x2="40.64" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P14"/>
<wire x1="-15.24" y1="66.04" x2="12.7" y2="66.04" width="0.1524" layer="91"/>
<wire x1="12.7" y1="66.04" x2="12.7" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R1"/>
<wire x1="12.7" y1="93.98" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P15"/>
<wire x1="-15.24" y1="71.12" x2="10.16" y2="71.12" width="0.1524" layer="91"/>
<wire x1="10.16" y1="71.12" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G1"/>
<wire x1="10.16" y1="91.44" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P16"/>
<wire x1="-15.24" y1="76.2" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<wire x1="38.1" y1="76.2" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B2"/>
<wire x1="38.1" y1="78.74" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P17"/>
<wire x1="-15.24" y1="81.28" x2="33.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="33.02" y1="81.28" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R2"/>
<wire x1="33.02" y1="83.82" x2="40.64" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P18"/>
<wire x1="-15.24" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<wire x1="35.56" y1="86.36" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G2"/>
<wire x1="35.56" y1="81.28" x2="40.64" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P19"/>
<wire x1="-15.24" y1="91.44" x2="7.62" y2="91.44" width="0.1524" layer="91"/>
<wire x1="7.62" y1="91.44" x2="7.62" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B6"/>
<wire x1="7.62" y1="38.1" x2="40.64" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P20"/>
<wire x1="-15.24" y1="96.52" x2="5.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="5.08" y1="96.52" x2="5.08" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R6"/>
<wire x1="5.08" y1="43.18" x2="40.64" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P21"/>
<wire x1="-15.24" y1="101.6" x2="17.78" y2="101.6" width="0.1524" layer="91"/>
<wire x1="17.78" y1="101.6" x2="17.78" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G6"/>
<wire x1="17.78" y1="40.64" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P22"/>
<wire x1="-15.24" y1="106.68" x2="38.1" y2="106.68" width="0.1524" layer="91"/>
<wire x1="38.1" y1="106.68" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B3"/>
<wire x1="38.1" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P23"/>
<wire x1="-15.24" y1="111.76" x2="30.48" y2="111.76" width="0.1524" layer="91"/>
<wire x1="30.48" y1="111.76" x2="30.48" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R3"/>
<wire x1="30.48" y1="73.66" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P24"/>
<wire x1="-15.24" y1="116.84" x2="27.94" y2="116.84" width="0.1524" layer="91"/>
<wire x1="27.94" y1="116.84" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G3"/>
<wire x1="27.94" y1="71.12" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P9"/>
<wire x1="-15.24" y1="40.64" x2="0" y2="40.64" width="0.1524" layer="91"/>
<wire x1="0" y1="40.64" x2="0" y2="109.22" width="0.1524" layer="91"/>
<wire x1="0" y1="109.22" x2="33.02" y2="109.22" width="0.1524" layer="91"/>
<wire x1="33.02" y1="109.22" x2="33.02" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G0"/>
<wire x1="33.02" y1="101.6" x2="40.64" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P25"/>
<wire x1="-15.24" y1="121.92" x2="2.54" y2="121.92" width="0.1524" layer="91"/>
<wire x1="2.54" y1="121.92" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="B7"/>
<wire x1="2.54" y1="27.94" x2="40.64" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P26"/>
<wire x1="-15.24" y1="127" x2="-2.54" y2="127" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="127" x2="-2.54" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="R7"/>
<wire x1="-2.54" y1="33.02" x2="40.64" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P28"/>
<pinref part="U$1" gate="G$1" pin="SOUT"/>
<wire x1="-15.24" y1="137.16" x2="60.96" y2="137.16" width="0.1524" layer="91"/>
<wire x1="60.96" y1="137.16" x2="60.96" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P27"/>
<wire x1="-15.24" y1="132.08" x2="-5.08" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="132.08" x2="-5.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="G7"/>
<wire x1="35.56" y1="30.48" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P1"/>
<wire x1="-15.24" y1="0" x2="-7.62" y2="0" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="114.3" x2="58.42" y2="114.3" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="SIN"/>
<wire x1="58.42" y1="114.3" x2="58.42" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P2"/>
<wire x1="-15.24" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="SCLK"/>
<wire x1="-10.16" y1="129.54" x2="66.04" y2="129.54" width="0.1524" layer="91"/>
<wire x1="66.04" y1="129.54" x2="66.04" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P3"/>
<wire x1="-15.24" y1="10.16" x2="-12.7" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="LAT"/>
<wire x1="-12.7" y1="124.46" x2="68.58" y2="124.46" width="0.1524" layer="91"/>
<wire x1="68.58" y1="124.46" x2="68.58" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="60.96" y1="20.32" x2="60.96" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P26"/>
<wire x1="60.96" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="83.82" y1="10.16" x2="162.56" y2="10.16" width="0.1524" layer="91"/>
<wire x1="81.28" y1="12.7" x2="83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="12.7" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<junction x="83.82" y="10.16"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G11"/>
<wire x1="86.36" y1="71.12" x2="137.16" y2="71.12" width="0.1524" layer="91"/>
<wire x1="137.16" y1="71.12" x2="137.16" y2="132.08" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P2"/>
<wire x1="137.16" y1="132.08" x2="162.56" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R11"/>
<wire x1="86.36" y1="68.58" x2="134.62" y2="68.58" width="0.1524" layer="91"/>
<wire x1="134.62" y1="68.58" x2="134.62" y2="127" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P3"/>
<wire x1="134.62" y1="127" x2="162.56" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B11"/>
<wire x1="86.36" y1="73.66" x2="132.08" y2="73.66" width="0.1524" layer="91"/>
<wire x1="132.08" y1="73.66" x2="132.08" y2="121.92" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P4"/>
<wire x1="132.08" y1="121.92" x2="162.56" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G15"/>
<wire x1="86.36" y1="30.48" x2="129.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="129.54" y1="30.48" x2="129.54" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P5"/>
<wire x1="129.54" y1="116.84" x2="162.56" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R15"/>
<wire x1="86.36" y1="27.94" x2="127" y2="27.94" width="0.1524" layer="91"/>
<wire x1="127" y1="27.94" x2="127" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P6"/>
<wire x1="127" y1="111.76" x2="162.56" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B15"/>
<wire x1="86.36" y1="33.02" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<wire x1="124.46" y1="33.02" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P7"/>
<wire x1="124.46" y1="106.68" x2="162.56" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G10"/>
<wire x1="86.36" y1="81.28" x2="121.92" y2="81.28" width="0.1524" layer="91"/>
<wire x1="121.92" y1="81.28" x2="121.92" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P8"/>
<wire x1="121.92" y1="101.6" x2="162.56" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R10"/>
<wire x1="86.36" y1="78.74" x2="119.38" y2="78.74" width="0.1524" layer="91"/>
<wire x1="119.38" y1="78.74" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P9"/>
<wire x1="119.38" y1="96.52" x2="162.56" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B10"/>
<wire x1="86.36" y1="83.82" x2="116.84" y2="83.82" width="0.1524" layer="91"/>
<wire x1="116.84" y1="83.82" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P10"/>
<wire x1="116.84" y1="91.44" x2="162.56" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G14"/>
<wire x1="86.36" y1="40.64" x2="114.3" y2="40.64" width="0.1524" layer="91"/>
<wire x1="114.3" y1="40.64" x2="114.3" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P11"/>
<wire x1="114.3" y1="86.36" x2="162.56" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R14"/>
<wire x1="86.36" y1="38.1" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P12"/>
<wire x1="142.24" y1="81.28" x2="162.56" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B14"/>
<wire x1="86.36" y1="43.18" x2="144.78" y2="43.18" width="0.1524" layer="91"/>
<wire x1="144.78" y1="43.18" x2="144.78" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P13"/>
<wire x1="144.78" y1="76.2" x2="162.56" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G13"/>
<wire x1="86.36" y1="50.8" x2="147.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="147.32" y1="50.8" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P14"/>
<wire x1="147.32" y1="71.12" x2="162.56" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R13"/>
<wire x1="86.36" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="134.62" y1="48.26" x2="134.62" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P15"/>
<wire x1="134.62" y1="66.04" x2="162.56" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B13"/>
<wire x1="86.36" y1="53.34" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<wire x1="137.16" y1="53.34" x2="137.16" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P16"/>
<wire x1="137.16" y1="60.96" x2="162.56" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G9"/>
<wire x1="86.36" y1="91.44" x2="111.76" y2="91.44" width="0.1524" layer="91"/>
<wire x1="111.76" y1="91.44" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
<wire x1="111.76" y1="45.72" x2="149.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="149.86" y1="45.72" x2="149.86" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P17"/>
<wire x1="149.86" y1="55.88" x2="162.56" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R9"/>
<wire x1="86.36" y1="88.9" x2="109.22" y2="88.9" width="0.1524" layer="91"/>
<wire x1="109.22" y1="88.9" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="35.56" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
<wire x1="119.38" y1="35.56" x2="119.38" y2="40.64" width="0.1524" layer="91"/>
<wire x1="119.38" y1="40.64" x2="152.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="152.4" y1="40.64" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P18"/>
<wire x1="152.4" y1="50.8" x2="162.56" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B9"/>
<wire x1="86.36" y1="93.98" x2="106.68" y2="93.98" width="0.1524" layer="91"/>
<wire x1="106.68" y1="93.98" x2="106.68" y2="58.42" width="0.1524" layer="91"/>
<wire x1="106.68" y1="58.42" x2="154.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="154.94" y1="58.42" x2="154.94" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P19"/>
<wire x1="154.94" y1="45.72" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G12"/>
<wire x1="86.36" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<wire x1="104.14" y1="60.96" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="154.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="154.94" y1="25.4" x2="154.94" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P20"/>
<wire x1="154.94" y1="40.64" x2="162.56" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R12"/>
<wire x1="86.36" y1="58.42" x2="101.6" y2="58.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="58.42" x2="101.6" y2="22.86" width="0.1524" layer="91"/>
<wire x1="101.6" y1="22.86" x2="152.4" y2="22.86" width="0.1524" layer="91"/>
<wire x1="152.4" y1="22.86" x2="152.4" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P21"/>
<wire x1="152.4" y1="35.56" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B12"/>
<wire x1="86.36" y1="63.5" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="99.06" y1="17.78" x2="149.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="149.86" y1="17.78" x2="149.86" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P22"/>
<wire x1="149.86" y1="30.48" x2="162.56" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G8"/>
<wire x1="86.36" y1="101.6" x2="96.52" y2="101.6" width="0.1524" layer="91"/>
<wire x1="96.52" y1="101.6" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
<wire x1="96.52" y1="15.24" x2="157.48" y2="15.24" width="0.1524" layer="91"/>
<wire x1="157.48" y1="15.24" x2="157.48" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P23"/>
<wire x1="157.48" y1="25.4" x2="162.56" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="R8"/>
<wire x1="86.36" y1="99.06" x2="93.98" y2="99.06" width="0.1524" layer="91"/>
<wire x1="93.98" y1="99.06" x2="93.98" y2="12.7" width="0.1524" layer="91"/>
<wire x1="93.98" y1="12.7" x2="154.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="154.94" y1="12.7" x2="154.94" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P24"/>
<wire x1="154.94" y1="20.32" x2="162.56" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B8"/>
<wire x1="86.36" y1="104.14" x2="91.44" y2="104.14" width="0.1524" layer="91"/>
<wire x1="91.44" y1="104.14" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
<wire x1="91.44" y1="7.62" x2="160.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="160.02" y1="7.62" x2="160.02" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P25"/>
<wire x1="160.02" y1="15.24" x2="162.56" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GSCLK"/>
<wire x1="71.12" y1="111.76" x2="71.12" y2="114.3" width="0.1524" layer="91"/>
<wire x1="71.12" y1="114.3" x2="88.9" y2="114.3" width="0.1524" layer="91"/>
<wire x1="88.9" y1="114.3" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P27"/>
<wire x1="88.9" y1="5.08" x2="162.56" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="73.66" y1="12.7" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P28"/>
<wire x1="86.36" y1="0" x2="162.56" y2="0" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PAD"/>
<wire x1="66.04" y1="20.32" x2="66.04" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-2.54" x2="162.56" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-2.54" x2="162.56" y2="0" width="0.1524" layer="91"/>
<junction x="162.56" y="0"/>
<wire x1="73.66" y1="15.24" x2="86.36" y2="15.24" width="0.1524" layer="91"/>
<wire x1="86.36" y1="15.24" x2="86.36" y2="0" width="0.1524" layer="91"/>
<wire x1="86.36" y1="15.24" x2="86.36" y2="20.32" width="0.1524" layer="91"/>
<junction x="86.36" y="15.24"/>
<wire x1="139.7" y1="20.32" x2="139.7" y2="137.16" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="P1"/>
<wire x1="139.7" y1="137.16" x2="162.56" y2="137.16" width="0.1524" layer="91"/>
<wire x1="86.36" y1="20.32" x2="139.7" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="68.58" y1="20.32" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
<junction x="73.66" y="15.24"/>
<pinref part="U$1" gate="G$1" pin="GND2"/>
<wire x1="71.12" y1="15.24" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
<wire x1="71.12" y1="20.32" x2="71.12" y2="15.24" width="0.1524" layer="91"/>
<junction x="71.12" y="15.24"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
