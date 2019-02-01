; Change MiniHost position to real position if you have problems with this configuration.
; This is considered to be the default path.
MiniHost = "C:\Program Files (x86)\Image-Line\Minihost\MiniHostModular_x64.exe"

Run, %MiniHost%,,, MyPID
Process, Exist, MiniHostModular_x64.exe
MyPID = %ErrorLevel%
while (MyPID = 0)
{
Sleep, 500
Process, Exist, MiniHostModular_x64.exe
MyPID = %ErrorLevel%
}
Sleep, 5000
msgbox % "Setting up audio..."

ControlClick, x700 y500, ahk_pid %MyPID%
ControlClick, x45 y15, ahk_pid %MyPID%
ControlSend,, {Down}, ahk_pid %MyPID%
ControlSend,, {Down}, ahk_pid %MyPID%
ControlSend,, {Enter}, ahk_pid %MyPID%
Sleep, 1000

; Change file position to what you chose for your graph.
; Remember to use an absolute path and to include file extension (.gra)
FileName = "C:\Program Files (x86)\Image-Line\Minihost\System Audio Routing.gra"


Control, EditPaste, %FileName%, Edit1, ahk_pid %MyPID%
ControlSend,, {Enter}, ahk_pid %MyPID%
