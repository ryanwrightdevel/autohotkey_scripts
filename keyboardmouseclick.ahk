#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

LWin::Send, {LButton}
AppsKey::Send, {LButton}
LShift & LWin:: Send, {RButton}
;Launch_App2::Send,  

Control & LWin::
  leftMouseHold := !leftMouseHold
  if(leftMouseHold){
      Send, {LButton down}
  }else{
      Send, {LButton Up}
  }

Numpad1::
     mouseLeftDown := !mouseLeftDown 
     if(mouseLeftDown){
     ;Send, {LButton Down}  ;hold down left mouse button
         Click, Down
         ;ToolTip,  "HOLDING LEFT Mouse", 200, 0,1
         SplashTextOn, 300, 100, Clipboard, HOLDING LEFT Mouse ;SplashTextOn , Width, Height, Title, Text
         WinMove, Clipboard, , 1400, 0 ;
     }Else{
         Click, Up
        ;ToolTip,  "RELEASED LEFT Mouse", 200, 0,1
        SplashTextOff
     }
     Return


Numpad2::
    mouseMiddleDown := !mouseMiddleDown
    if(mouseMiddleDown){
       Send, {MButton Down}  ;hold down middle mouse button
       ;ToolTip,  "HOLDING MIDDLE Mouse", 200, 0,1
       SplashTextOn, 300, 100, Clipboard, HOLDING MIDDLE Mouse ;SplashTextOn , Width, Height, Title, Text
       WinMove, Clipboard, , 1400, 0 ;
    }else{
         Send, {MButton Up}  ;hold down middle mouse button
      ;   ToolTip,  "RELEASED MIDDLE Mouse", 200, 0,1
         SplashTextOff 
    }
    Return


Numpad3::
    mouseRightDown := ! mouseRightDown
    if(mouseRightDown){
         Send, {RButton Down}  ;hold down right mouse button
         SplashTextOn, 300, 100, Clipboard, HOLDING RIGHT Mouse ;SplashTextOn , Width, Height, Title, Text
         WinMove, Clipboard, , 1400, 0 ;
    }else{
        Send, {RButton Up}    ;release right mouse button
        SplashTextOff 
    }
    Return

;Swich Window
NumpadEnter::
   Send, {Alt Down}
   Send, {Tab}
   Return

;Release Alt::Send {Alt Up} 

;Search Box
Numpad0::
    Send, {LControl Down}
    Send, {Space}
    Send, {LControl Up}
    Return

;Right Mouse Click
NumpadDot::Send {RButton}
    Return

preset(){
msgbox, you launched PRESET

}