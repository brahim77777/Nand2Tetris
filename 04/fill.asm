// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(CONFIG)
    @16384
    D=A

    @tempScreen // temp = screen
    M=D

    @scr
    M=D


    @8192
    D=A

    @tempLimit
    M=D

// routing
    @24576 // d = keyboard value
    D=M

    
    @WHITE // if keyboard is not pressed  --> WHITE
    D;JEQ

    @BLACK // if keybaord is pressed --> BLACK
    D;JGT


(BLACK)
    @tempScreen
    D=M


    @scr
    A=D
    M=-1

    @tempScreen
    M=M+1

    @tempLimit
    D=M

    D=D-1

    @tempLimit
    M=D

    @END
    D;JEQ

    @24576 // d = keyboard value
    D=M

    @CONFIG
    D;JEQ


    @BLACK
    0;JMP


(WHITE)

    @tempScreen
    D=M


    @scr
    A=D
    M=0

    @tempScreen
    M=M+1

    @tempLimit
    D=M

    D=D-1

    @tempLimit
    M=D

    @END
    D;JEQ


    @24576 // d = keyboard value
    D=M

    @CONFIG
    D;JGT

    @WHITE
    0;JMP

    @CONFIG
    0;JMP


