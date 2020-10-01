#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using luamacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg

; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s

; If you have never used AutoHotKey, you must take this tutorial before proceeding!
; https://autohotkey.com/docs/Tutorial.htm

; So you will need luamacros, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luamacros, because I believe interecept.exe is even better! My current code is available in "ALL_MULTIPLE_KEYBOARD_ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------

;#IfWinActive ahk_exe Adobe Premiere Pro.exe ;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO. But you can change this to anything you like. You can use Window Spy to determine the ahk_exe of any program, so that your macros will only work when and where you want them to.

;There is no code here. T'was just an example.

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
FileRead, key, C:\luamacros\mykeyboard\keypressed.txt


    
If (key = "a"){
   ; msgbox, you launched PRESET with the parameter %myflag%
    myflag := !myflag

    if(myflag){
        Send {a down}
        Send {a up}
    }else{
        send {b down}
        send {b up}
    }
}else if(key = "b"){
}else if(key = "c"){
}else if (key = "d"){
}else if(key = "e"){
}else if(key = "f"){
}else if(key = "g"){
}else if(key = "h"){
}else if(key = "i"){
}else if(key = "j"){
}else if(key = "k"){
}else if(key = "l"){
}else if (key = "m"){
        Send {LButton}
 Return
}else if(key = "n"){
}else if(key = "o"){
}else if(key = "p"){
}else if(key = "q"){
}else if(key = "r"){
}else if(key = "s"){
}else if(key = "t"){
}else if(key = "u"){
}else if(key = "v"){
}else if(key = "w"){
}else if(key = "x"){
}else if(key = "y"){
}else if(key = "z"){
}else if(key = "period"){
    Send {LButton}
}else if(key = "slash"){
    Click, Right
}else if(key = "singlequote"){
}else if(key = "semicolon"){
}else if(key = "comma"){
}else if (key = "leftbracket"){
}else if(key = "rightbracket"){
}else if(key = "F6"){
}else if(key = "F7"){
}else if(key = "F8"){
}else if(key = "F9"){
}else if(key = "F10"){
}else if(key = "F11"){
}else if(key = "F12"){
}else if(key = "F5"){
}else if (key = "insert"){
}else if(key = "home"){
}else if(key = "pageup"){
}else if(key = "delete"){
}else if(key = "end"){
}else if(key = "pagedown"){
}else if(key = "minus"){
}else if(key = "equals"){
}else if(key = "rCtrl"){
    Click
}else if(key = "up"){ ;impact push transitions - fun fact, you can SAVE TRANSITION PRESETS if they are cross dissolve or from a 3rd party. In the effect controls triple line menu.

}else if(key = "left"){
   leftMouseClick := !leftMouseClick 
   if(leftMouseClick){ 
     Click, Left, down
   }else{
     Click, Left, up
   }
}else if(key = "right"){
   rightMouseClick := rightMouseClick
   if(rightMouseClick){ 
     Click, Right, down
   }else{
     Click, Right, up  
   }
}else if(key = "down"){
   centerMouseDown := centerMouseDown
   if(centerMouseDown){
     Click, Center, down
   }else{
     Click, Center, up       
   }
}else if(key = "enter")
Send ^!e ;in premiere, set this (CTRL ALT E) to "remove effects"

else if(key = "num0"){
}else if(key = "num1"){
}else if(key = "num2"){
}else if(key = "num3"){
}else if(key = "num4"){
}else if(key = "num5"){
}else if(key = "num6"){
}else if(key = "num7"){
}else if(key = "num8"){
}else if(key = "num9"){
}else if(key = "numDiv"){
}else if(key = "numMult"){
}

Return

preset(parameter){
msgbox, you launched PRESET with the parameter %parameter%

}