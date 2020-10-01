#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

LWin::Send, {LButton}
AppsKey::Send, {LButton}
LShift & LWin:: Send, {RButton}
;Launch_App2::Send,  


Numpad1::
     mouseLeftDown := !mouseLeftDown 
     if(mouseLeftDown){
     ;Send, {LButton Down}  ;hold down left mouse button
         Click, Down
     }Else{
         Click, Up
     }
     Return


Numpad2::
    mouseMiddleDown := !mouseMiddleDown
    if(mouseMiddleDown){
       Send, {MButton Down}  ;hold down middle mouse button
    }else{
       Send, {MButton Up}  ;hold down middle mouse button 
    }
    Return


Numpad3::
    mouseRightDown := ! mouseRightDown
    if(mouseRightDown){
        Send, {RButton Down}  ;hold down right mouse button
    }else{
        Send, {RButton Up}    ;release right mouse button
    }

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