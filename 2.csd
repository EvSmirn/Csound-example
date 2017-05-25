<CsoundSynthesizer>
<CsOptions>
;-ndm0
;-odac
</CsOptions>
<CsInstruments>
sr=44100
kr=4410
ksmps=10
nchnls=2
0dbfs = 1

instr 1
iAmp = (15-(102-p4))*.1 ;dbamp(p5*1000)	;p5
;iCps	= cpspch(p4)
iFn	=	2
asig  diskin2 "mary1.wav", 1

aenv linen asig*iAmp, .0, p3, .0 ;Amplitude envelope
;asnd prepiano cpspch(p4),3,10,2, 3, 0.002, 2, 2, 1, 5000, - 0,01, 1, 0.6, 0, 0,1, 1, 2
;asnd oscil p5, cpspch(p4), 1
    ; outs asnd, asnd
;endin
aOut1	oscil	aenv, cpspch(p5), iFn
out aOut1, aOut1
endin

instr 	2				
idur	=		p3
iamp	=		p4
ifrq	=		cpspch(p5)
ienvfun	=		p6
iwav1	=		p7
iwav1gn	=		p8
iwav2	=		p9
iwav2gn	=		p10		
kenv    oscil   iamp, idur, ienvfun
awav2 	loscil  iwav2gn, ifrq*1.02, iwav2
awav1 	loscil  iwav1gn, ifrq, iwav1
aOut2 = (awav1+awav2)*kenv		
		out  	aOut2, aOut2
		print	idur, iamp, ifrq
		endin


</CsInstruments>
<CsScore>
f 1	0	512	10	1
f 2 0 512 10  1; .1 1 .1 1 .1 1 
f 11 0 0   -1   "piano.aif" 0 4 0
f 15 0 512  5    1   64  .7   136  .65    312  .001
f 12 0 0   -1   "marimba.aif" 0 4 0
f 13 0 0   -1   "brass.aif" 0 4 0

;функция ИЗА
i  1    0       1   99  8.00  
i  1    1       1   96  8.00  
i  1    2       1   101 8.00  
i  1    3       1   89  8.00  
i  1    4       1   89  8.00  
i  1    5       1   99  8.00  
i  1    6       1   96  8.00  
i  1    7       1   101 8.00  
i  1    8       1   89  8.00  
i  1    9       1   89  8.00  
;функция диоксид азота
i 2 	0		1	.1	8.00	15     11     1		12	1  
i 2 	1		1	.2	8.00	15     11     1		12	1  
i 2 	2		1	.3	8.00	15     11     1		12	1  
i 2   3       1	.4	8.00	15     11     1		12	.9
i 2 	4 	    1	.5	8.00	15     11     1		12 	.8
i 2 	5		1	.1	8.00	15     11     1		12	1  
i 2 	6		1	.2	8.00	15     11     1		12	1  
i 2 	7		1	.3	8.00	15     11     1		12	1  
i 2   8       1	.4	8.00	15     11     1		12	.9
i 2 	9 	    1	.5	8.00	15     11     1		12 	.8
;функция оксид серы
i 2 	0.5		1	.1	7.00	15     13     1		12	.7 
i 2 	1.5 	1	.2	7.00	15     13     1		12	.6
i 2   2.5		1	.3	7.00	15     13     1		12	1
i 2 	3.5		1	.4	7.00	15     13     1		12	.9
i 2 	4.5		1	.5	7.00	15     13     1		12	.9
i 2 	5.5		1	.1	7.00	15     13     1		12	.7 
i 2 	6.5 	1	.2	7.00	15     13     1		12	.6
i 2   7.5		1	.3	7.00	15     13     1		12	1
i 2 	8.5		1	.4	7.00	15     13     1		12	.9
i 2 	9.5		1	.5	7.00	15     13     1		12	.9
e


</CsScore>
</CsoundSynthesizer>
;Example by Andres Cabrera and Joachim Heintz
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>622</x>
 <y>704</y>
 <width>578</width>
 <height>335</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
 <bsbObject type="BSBScope" version="2">
  <objectName/>
  <x>107</x>
  <y>84</y>
  <width>350</width>
  <height>150</height>
  <uuid>{38b44667-7ad8-495f-8008-6293c6ce3560}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>0</midicc>
  <value>-255.00000000</value>
  <type>scope</type>
  <zoomx>2.00000000</zoomx>
  <zoomy>1.00000000</zoomy>
  <dispx>1.00000000</dispx>
  <dispy>1.00000000</dispy>
  <mode>0.00000000</mode>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
<MacGUI>
ioView nobackground {65535, 65535, 65535}
ioGraph {107, 84} {350, 150} scope 2.000000 -255 
</MacGUI>
