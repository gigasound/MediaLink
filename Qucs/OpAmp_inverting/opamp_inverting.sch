<QucsStudio Schematic 4.2.2>
<Properties>
View=28,-37,896,453,1,0,0
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.dpl
OpenDisplay=1
showFrame=0
FrameText0=Title
FrameText1=Drawn By:
FrameText2=Date:
FrameText3=Revision:
</Properties>
<Symbol>
</Symbol>
<Components>
Lib TL071 1 350 270 26 -26 1 0 "M_OpAmps" 0 "TL071" 0 "8DIP-OpAmp" 0
GND * 1 410 200 0 0 0 0
Vdc V1 5 380 190 44 -11 0 3 "15 V" 1 "battery" 0 "SIL-2" 0
Vdc V2 5 380 330 42 -9 0 1 "15 V" 1 "battery" 0 "SIL-2" 0
C C1 5 380 160 48 -11 0 0 "0.1uF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
C C2 5 380 350 48 -11 0 0 "0.1uF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
GND * 1 410 370 0 0 0 0
R Rf 1 380 100 -28 -57 0 0 "10kΩ" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
R Ri 1 260 250 -28 -57 0 0 "10kΩ" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
GND * 1 290 290 0 0 0 0
Vac V3 1 170 280 -122 -26 0 0 "1 V" 1 "1000Hz" 1 "0" 0 "0" 0 "SUBCLICK" 0
GND * 1 170 310 0 0 0 0
.AC AC1 1 620 50 0 38 0 0 "lin" 1 "10Hz" 1 "40kHz" 1 "1000" 1 "no" 0 "none" 0
.TR TR1 0 620 200 0 63 0 0 "lin" 0 "0" 1 "5ms" 1 "2000" 1 "Trapezoidal" 0 "1e-16" 0 "500" 0 "0.001" 0 "1 µV" 0 "yes" 0 "none" 0
Eqn Eqn1 1 630 370 0 8 0 0 "G=20*log10(abs(Vout.V/Vin.V))=" 1 "phase=arctan(Vout.V/Vin.V)/pi*180=" 1 "yes" 0
</Components>
<Wires>
350 160 350 190 "" 0 0 0 ""
350 190 350 230 "" 0 0 0 ""
410 160 410 190 "" 0 0 0 ""
410 190 410 200 "" 0 0 0 ""
350 310 350 330 "" 0 0 0 ""
350 330 350 350 "" 0 0 0 ""
410 330 410 350 "" 0 0 0 ""
410 350 410 370 "" 0 0 0 ""
170 250 230 250 "Vin" 150 210 25 ""
290 250 310 250 "" 0 0 0 ""
310 100 350 100 "" 0 0 0 ""
310 250 320 250 "" 0 0 0 ""
310 100 310 250 "" 0 0 0 ""
290 290 320 290 "" 0 0 0 ""
390 270 520 270 "" 0 0 0 ""
520 100 520 270 "" 0 0 0 ""
410 100 520 100 "" 0 0 0 ""
520 270 520 270 "Vout" 550 220 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
