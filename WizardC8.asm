.org 0x9D93
    .db 0xbb, 0x6d

Start:

    





;----Data----

Number_0:  ; 8x4
    .db 0b00011000
    .db 0b00100100
    .db 0b00100100
    .db 0b00011000

Number_1:  ; 8x4
    .db 0b00001000
    .db 0b00101000
    .db 0b00001000
    .db 0b00111110

Number_2:  ; 8x4
    .db 0b00010000
    .db 0b00000100
    .db 0b00100000
    .db 0b01111110

Number_3:  ; 8x4
    .db 0b00011000
    .db 0b00100100
    .db 0b01011000  ; Needs improvement
    .db 0b00011100

Number_4:  ; 8x4
    .db 0b00100100
    .db 0b00111100
    .db 0b00000100
    .db 0b00000100

Number_5:  ; 8x4
    .db 0b00011100
    .db 0b00010000
    .db 0b00000100
    .db 0b00011000

Number_6:  ; 8x4
    .db 0b00100000
    .db 0b00110000
    .db 0b00101000
    .db 0b00111000

Number_7:  ; 8x4
    .db 0b00111100
    .db 0b00001000
    .db 0b00010000
    .db 0b00100000

Number_8:  ; 8x4
    .db 0b00011100
    .db 0b00110110
    .db 0b00011100  ; Needs improvement
    .db 0b00011100

Number_9:  ; 8x4
    .db 0b00011100
    .db 0b00010100
    .db 0b00001100
    .db 0b00000100

Letter_A:  ; 8x4
    .db 0b00001000
    .db 0b00010100
    .db 0b00111110
    .db 0b01000001

Letter_B:  ; 8x4
    .db 0b00111000
    .db 0b00101100
    .db 0b00111100  ; Needs improvement
    .db 0b00111000

Letter_C:  ; 8x4
    .db 0b00011100
    .db 0b00100000
    .db 0b00100000
    .db 0b00011100

Letter_D:  ; 8x4
    .db 0b00011000
    .db 0b00010100
    .db 0b00010100
    .db 0b00011000

Letter_E:  ; 8x4
    .db 0b00011100
    .db 0b00010000
    .db 0b00011100  ; Needs improvement
    .db 0b00011100

Letter_F:  ; 8x4
    .db 0b00011100
    .db 0b00010000
    .db 0b00011100
    .db 0b00010000

Letter_G:  ; 8x4
    .db 0b00011100
    .db 0b00100000
    .db 0b00101100
    .db 0b00011000

Letter_H:  ; 8x4
    .db 0b00010010
    .db 0b00010010
    .db 0b00011110
    .db 0b00010010

Letter_I:  ; 8x4
    .db 0b00111000
    .db 0b00010000
    .db 0b00010000
    .db 0b00111000

Letter_J:  ; 8x4
    .db 0b00010000
    .db 0b00010000
    .db 0b01010000
    .db 0b00110000

Letter_K:  ; 8x4
    .db 0b00101000
    .db 0b00110000
    .db 0b00101000
    .db 0b00100100

Letter_L:  ; 8x4
    .db 0b00010000
    .db 0b00010000
    .db 0b00010000
    .db 0b00011110

Letter_M:  ; 8x4
    .db 0b01000100
    .db 0b01101100
    .db 0b01010100
    .db 0b01000100

Letter_N:  ; 8x4
    .db 0b00110010
    .db 0b00101010
    .db 0b00100110
    .db 0b00100010

Letter_O:  ; 8x4
    .db 0b00011000
    .db 0b00100100
    .db 0b00100100
    .db 0b00011000

Letter_P:  ; 8x4
    .db 0b00011100
    .db 0b00010100
    .db 0b00011000
    .db 0b00010000

Letter_Q:  ; 8x4
    .db 0b00011000
    .db 0b00100110
    .db 0b00101100  ; Needs improvement
    .db 0b00011000

Letter_R:  ; 8x4
    .db 0b00011000
    .db 0b00010100
    .db 0b00011000
    .db 0b00010100

Letter_S:  ; 8x4
    .db 0b00011000
    .db 0b00100000
    .db 0b00011000  ; Needs improvement
    .db 0b00011000

Letter_T:  ; 8x4
    .db 0b00011100
    .db 0b00001000
    .db 0b00001000
    .db 0b00001000

Letter_U:  ; 8x4
    .db 0b00100100
    .db 0b00100100
    .db 0b00100100
    .db 0b00011000

Letter_V:  ; 8x4
    .db 0b01000001
    .db 0b00100010
    .db 0b00010100
    .db 0b00001000

Letter_W:  ; 8x4
    .db 0b01000100
    .db 0b01010100
    .db 0b01101100
    .db 0b01000100

Letter_X:  ; 8x4
    .db 0b01000100
    .db 0b00101000
    .db 0b00110000
    .db 0b01001000

Letter_Y:  ; 8x4
    .db 0b00101000
    .db 0b00011000
    .db 0b00001000
    .db 0b00001000

Letter_Z:  ; 8x4
    .db 0b00111100
    .db 0b00001000
    .db 0b00010000
    .db 0b00111100

Letter_a:  ; 8x4
    .db 0b00011000
    .db 0b00100100
    .db 0b00100100
    .db 0b00011010

Letter_b:  ; 8x4
    .db 0b00010000
    .db 0b00011000
    .db 0b00010100
    .db 0b00011000

Letter_c:  ; 8x4
    .db 0b00011100
    .db 0b00100000
    .db 0b00100000
    .db 0b00011100

Letter_d:  ; 8x4
    .db 0b00001000
    .db 0b00011000
    .db 0b00101000
    .db 0b00011000

Letter_e:  ; 8x4
    .db 0b00001100
    .db 0b00010110
    .db 0b00010000
    .db 0b00001100

Letter_f:  ; 8x4
    .db 0b00001100
    .db 0b00010010
    .db 0b00111000
    .db 0b00010000

Letter_g:  ; 8x4
    .db 0b00001000
    .db 0b00010100
    .db 0b00001100
    .db 0b00011100

Letter_h:  ; 8x4
    .db 0b00010000
    .db 0b00010000
    .db 0b00011000
    .db 0b00010100

Letter_i:  ; 8x4
    .db 0b00010000
    .db 0b00000000
    .db 0b00010000
    .db 0b00010000

Letter_j:  ; 8x4
    .db 0b00010000
    .db 0b00010000
    .db 0b01010000
    .db 0b00110000

Letter_k:  ; 8x4
    .db 0b00010100
    .db 0b00011000
    .db 0b00011000
    .db 0b00010100

Letter_l:  ; 8x4
    .db 0b00010000
    .db 0b00010000
    .db 0b00010000
    .db 0b00010000

Letter_m:  ; 8x4
    .db 0b00010100
    .db 0b00101010
    .db 0b00101010
    .db 0b00101010

Letter_n:  ; 8x4
    .db 0b00101000
    .db 0b00110100
    .db 0b00100100
    .db 0b00100100

Letter_o:  ; 8x4
    .db 0b00011000
    .db 0b00100100
    .db 0b00100100
    .db 0b00011000

Letter_p:  ; 8x4
    .db 0b00011000
    .db 0b00010100
    .db 0b00011000
    .db 0b00010000

Letter_q:  ; 8x4
    .db 0b00010000
    .db 0b00101000
    .db 0b00011010
    .db 0b00001100

Letter_r:  ; 8x4
    .db 0b00010100
    .db 0b00011010
    .db 0b00010000
    .db 0b00010000

Letter_s:  ; 8x4
    .db 0b00011100
    .db 0b00100000
    .db 0b00011000  ; Needs improvement
    .db 0b00111000

Letter_t:  ; 8x4
    .db 0b00010000
    .db 0b00111000
    .db 0b00010000
    .db 0b00010000

Letter_u:  ; 8x4
    .db 0b00101000
    .db 0b00101000
    .db 0b00101000
    .db 0b00010000

Letter_v:  ; 8x4
    .db 0b01000001
    .db 0b00100010
    .db 0b00010100
    .db 0b00001000

Letter_w:  ; 8x4
    .db 0b00100010
    .db 0b00101010
    .db 0b00110110
    .db 0b00100010

Letter_x:  ; 8x4
    .db 0b00100100
    .db 0b00011000
    .db 0b00011000
    .db 0b00100100

Letter_y:  ; 8x4
    .db 0b00101000
    .db 0b00011000
    .db 0b00001000
    .db 0b00001000

Letter_z:  ; 8x4
    .db 0b00111100
    .db 0b00001000
    .db 0b00010000
    .db 0b00111100

Symbol_Comma:  ; 8x4
    .db 0b00000000
    .db 0b00000000
    .db 0b00001000
    .db 0b00010000

Symbol_SemiColon:  ; 8x4
    .db 0b00010000
    .db 0b00000000
    .db 0b00000000
    .db 0b00010000

Symbol_DollarSign:  ; 8x4
    .db 0b00011100
    .db 0b11111000
    .db 0b01011100  ; Needs improvement
    .db 0b00111110
