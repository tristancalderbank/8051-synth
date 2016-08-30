; Blinky.asm: toggles an LED attached to pin 17 (P3.7)
$MODLP52
org 0000H
 ljmp myprogram
; When using a 22.1184MHz crystal in fast mode
; one cycle takes 1.0/22.1184MHz = 45.21123 ns
WaitHalfSec:
 mov R2, #40
L3: mov R1, #240
L2: mov R0, #240
L1: djnz R0, L1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, L2 ; 22.51519us*250=5.629ms
 djnz R2, L3 ; 5.629ms*89=0.5s (approximately)
 ret
 
 
;PERIOD
;-----------------------------------------------------------


;1st Octave
;----------------------------------------------------------

D_1:
 mov R2, #2
DDD3: mov R1, #150
DDD2: mov R0, #166
DDD1: djnz R0, DDD1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, DDD2 ; 22.51519us*250=5.629ms
 djnz R2, DDD3 ; 5.629ms*89=0.5s (approximately)
 ret
 

E_1:
 mov R2, #2
EEE3: mov R1, #133
EEE2: mov R0, #166
EEE1: djnz R0, EEE1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, EEE2 ; 22.51519us*250=5.629ms
 djnz R2, EEE3 ; 5.629ms*89=0.5s (approximately)
 ret

Fs_1:
 mov R2, #1
FFFs3: mov R1, #238
FFFs2: mov R0, #166
FFFs1: djnz R0, FFFs1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, FFFs2 ; 22.51519us*250=5.629ms
 djnz R2, FFFs3 ; 5.629ms*89=0.5s (approximately)
 ret 

G_1:
 mov R2, #1
GGG3: mov R1, #224
GGG2: mov R0, #166
GGG1: djnz R0, GGG1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, GGG2 ; 22.51519us*250=5.629ms
 djnz R2, GGG3 ; 5.629ms*89=0.5s (approximately)
 ret
 


;2nd Octave
;----------------------------------------------------------
A_2:
 mov R2, #1
AA3: mov R1, #200
AA2: mov R0, #166
AA1: djnz R0, AA1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, AA2 ; 22.51519us*250=5.629ms
 djnz R2, AA3 ; 5.629ms*89=0.5s (approximately)
 ret 

B_2:
 mov R2, #1
BB3: mov R1, #178
BB2: mov R0, #166
BB1: djnz R0, BB1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, BB2 ; 22.51519us*250=5.629ms
 djnz R2, BB3 ; 5.629ms*89=0.5s (approximately)
 ret

Cs_2:
 mov R2, #1
CC3: mov R1, #159
CC2: mov R0, #166
CC1: djnz R0, CC1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, CC2 ; 22.51519us*250=5.629ms
 djnz R2, CC3 ; 5.629ms*89=0.5s (approximately)
 ret

D_2:
 mov R2, #1
D3: mov R1, #150
D2: mov R0, #166
D1: djnz R0, D1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, D2 ; 22.51519us*250=5.629ms
 djnz R2, D3 ; 5.629ms*89=0.5s (approximately)
 ret
 
E_2:
 mov R2, #1
EE3: mov R1, #133
EE2: mov R0, #166
EE1: djnz R0, EE1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, EE2 ; 22.51519us*250=5.629ms
 djnz R2, EE3 ; 5.629ms*89=0.5s (approximately)
 ret


Fs_2:
 mov R2, #1
Fs3: mov R1, #119
Fs2: mov R0, #166
Fs1: djnz R0, Fs1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, Fs2 ; 22.51519us*250=5.629ms
 djnz R2, Fs3 ; 5.629ms*89=0.5s (approximately)
 ret 

G_2:
 mov R2, #1
G3: mov R1, #112
G2: mov R0, #166
G1: djnz R0, G1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, G2 ; 22.51519us*250=5.629ms
 djnz R2, G3 ; 5.629ms*89=0.5s (approximately)
 ret
 
 ;3rd Octave
;----------------------------------------------------------

A_3:
 mov R2, #1
A3: mov R1, #100
A2: mov R0, #166
A1: djnz R0, A1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, A2 ; 22.51519us*250=5.629ms
 djnz R2, A3 ; 5.629ms*89=0.5s (approximately)
 ret

E_3:
 mov R2, #1
E3: mov R1, #67
E2: mov R0, #165
E1: djnz R0, E1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R1, E2 ; 22.51519us*250=5.629ms
 djnz R2, E3 ; 5.629ms*89=0.5s (approximately)
 ret

 
 
;PLAY
;--------------------------------------------------------

;1st octave
;---------------------------------------------------------

PlayD_1:
 mov R5, #3
PLAYDDD3: mov R4, #2
PLAYDDD2: mov R3, #6
PLAYDDD1: cpl P3.7
	   lcall D_1
 djnz R3, PLAYDDD1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYDDD2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYDDD3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayE_1:
 mov R5, #3
PLAYEEE3: mov R4, #2
PLAYEEE2: mov R3, #6
PLAYEEE1: cpl P3.7
	   lcall E_1
 djnz R3, PLAYEEE1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYEEE2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYEEE3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayFs_1:
 mov R5, #3
PLAYFFFs3: mov R4, #2
PLAYFFFs2: mov R3, #6
PLAYFFFs1: cpl P3.7
	   lcall Fs_1
 djnz R3, PLAYFFFs1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYFFFs2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYFFFs3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayG_1:
 mov R5, #3
PLAYGGG3: mov R4, #2
PLAYGGG2: mov R3, #6
PLAYGGG1: cpl P3.7
	   lcall G_1
 djnz R3, PLAYGGG1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYGGG2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYGGG3 ; 5.629ms*89=0.5s (approximately)
 ret

;2nd octave
;------------------------------------------------------
PlayA_2:
 mov R5, #3
PLAYAA3: mov R4, #2
PLAYAA2: mov R3, #8
PLAYAA1: cpl P3.7
	   lcall A_2
 djnz R3, PLAYAA1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYAA2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYAA3 ; 5.629ms*89=0.5s (approximately)
 ret

PlayB_2:
 mov R5, #3
PLAYBB3: mov R4, #2
PLAYBB2: mov R3, #8
PLAYBB1: cpl P3.7
	   lcall B_2
 djnz R3, PLAYBB1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYBB2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYBB3 ; 5.629ms*89=0.5s (approximately)
 ret

PlayCs_2:
 mov R5, #3
PLAYCCs3: mov R4, #2
PLAYCCs2: mov R3, #10
PLAYCCs1: cpl P3.7
	   lcall Cs_2
 djnz R3, PLAYCCs1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYCCs2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYCCs3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayD_2:
 mov R5, #3
PLAYDD3: mov R4, #2
PLAYDD2: mov R3, #10
PLAYDD1: cpl P3.7
	   lcall D_2
 djnz R3, PLAYDD1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYDD2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYDD3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayE_2:
 mov R5, #3
PLAYEE3: mov R4, #2
PLAYEE2: mov R3, #10
PLAYEE1: cpl P3.7
	   lcall E_2
 djnz R3, PLAYEE1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYEE2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYEE3 ; 5.629ms*89=0.5s (approximately)
 ret
 

PlayFs_2:
 mov R5, #2
PLAYFFs3: mov R4, #4
PLAYFFs2: mov R3, #10
PLAYFFs1: cpl P3.7
	   lcall Fs_2
 djnz R3, PLAYFFs1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYFFs2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYFFs3 ; 5.629ms*89=0.5s (approximately)
 ret
 
PlayG_2:
 mov R5, #2
PLAYGG3: mov R4, #4
PLAYGG2: mov R3, #10
PLAYGG1: cpl P3.7
	   lcall G_2
 djnz R3, PLAYGG1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYGG2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYGG3 ; 5.629ms*89=0.5s (approximately)
 ret
 
;3rd octave
;----------------------------------------------------------
PlayA_3:
 mov R5, #2
PLAYA3: mov R4, #4
PLAYA2: mov R3, #10
PLAYA1: cpl P3.7
	   lcall A_3
 djnz R3, PLAYA1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYA2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYA3 ; 5.629ms*89=0.5s (approximately)
 ret

PlayE_3:
 mov R5, #3
PLAYE3: mov R4, #2
PLAYE2: mov R3, #10
PLAYE1: cpl P3.7
	   lcall E_3
 djnz R3, PLAYE1 ; 3 cycles->3*45.21123ns*166=22.51519us
 djnz R4, PLAYE2 ; 22.51519us*250=5.629ms
 djnz R5, PLAYE3 ; 5.629ms*89=0.5s (approximately)
 ret


 ;-----------------------------------------------------------
myprogram:
 mov SP, #7FH
 mov PMOD, #0 ; Configure all ports in bidirectional mode
M0:

; --------------------------
;| Song:  Canon in D        |
;| Artist: Pachelbel        |
; --------------------------

 lcall PlayA_3
 lcall PlayA_3
 lcall PlayFs_2
 lcall PlayG_2
 lcall PlayA_3
 lcall PlayA_3
 lcall PlayFs_2
 lcall PlayG_2
 lcall PlayA_3
 
 lcall PlayA_2
 lcall PlayB_2
 lcall PlayCs_2
 lcall PlayD_2
 lcall PlayE_2
 lcall PlayFs_2
 lcall PlayG_2
 
 lcall PlayFs_2
 lcall PlayFs_2
 lcall PlayD_2
 lcall PlayE_2
 lcall PlayFs_2
 lcall PlayFs_2

 lcall PlayFs_1
 lcall PlayG_1
 lcall PlayA_2
 lcall PlayB_2
 lcall PlayA_2
 lcall PlayG_1
 lcall PlayA_2
 lcall PlayFs_1
 lcall PlayG_1
 lcall PlayA_2
 lcall PlayG_1
 lcall PlayG_1 ;3:19
 
 lcall PlayB_2
 lcall PlayA_2
 lcall PlayG_1
 lcall PlayG_1
 
 lcall PlayFs_1
 lcall PlayE_1
 
 lcall PlayFs_1
 lcall PlayE_1
 lcall PlayD_1
 lcall PlayE_1
 lcall PlayFs_1
 lcall PlayG_1
 lcall PlayA_2
 lcall PlayB_2
 lcall PlayG_1
 lcall PlayG_1
 
 lcall PlayB_2
 lcall PlayA_2
 lcall PlayB_2
 lcall PlayB_2
 
 lcall PlayCs_2
 lcall PlayD_2
 
 lcall PlayA_2
 lcall PlayB_2
 lcall PlayCs_2
 lcall PlayD_2
 lcall PlayE_2
 lcall PlayFs_2
 lcall PlayG_2
 lcall PlayA_3

; --------------------------
;| End                      |
;|                          |
; --------------------------

 
 

 ljmp M0
END
