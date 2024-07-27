#Requires AutoHotkey v2.0.2
#SingleInstance Force

init(){
    RunWait("powershell" . " py -3.10 'C:\Program Files\yasb\src\main.py'",,"Hide")
}
init()

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; App Shortcuts
#Enter::Run 'wt.exe'
#b::Run 'floorp'

; komorebi + yasb
#q::Komorebic("close")
#m::Komorebic("minimize")
#+o::Komorebic("reload-configuration")
#+w::Komorebic("watch-configuration")
#+q::{
  RunWait("komorebic restore-windows",,"Hide")
  RunWait("powershell " . "Stop-Process -Name 'komorebi'",,"Hide")
  RunWait("powershell " . "Stop-Process -Name 'python'",,"Hide")
  RunWait("komorebic start --ahk") ;; intend to not hide it
  ;; Delay 1000 milisecond
  Sleep(1000)
}

; Focus windows
#Left::Komorebic("focus left")
#Down::Komorebic("focus down")
#Up::Komorebic("focus up")
#Right::Komorebic("focus right")

#[::Komorebic("cycle-focus previous")
#]::Komorebic("cycle-focus next")

; Move windows
#+Left::Komorebic("move left")
#+Down::Komorebic("move down")
#+Up::Komorebic("move up")
#+Right::Komorebic("move right")

;; Stack windows
; !+a::Komorebic("stack left")
; !+s::Komorebic("stack down")
; !+w::Komorebic("stack up")
; !+d::Komorebic("stack right")
; !;::Komorebic("unstack")
; ![::Komorebic("cycle-stack previous")
; !]::Komorebic("cycle-stack next")

; Resize
#=::Komorebic("resize-axis horizontal increase")
#-::Komorebic("resize-axis horizontal decrease")
#+=::Komorebic("resize-axis vertical increase")
#+_::Komorebic("resize-axis vertical decrease")

; Manipulate windows
#+f::Komorebic("toggle-float")
#+n::Komorebic("toggle-monocle")
#+t::Komorebic("toggle-tiling")

; Window manager options
#+r::Komorebic("retile")
#+p::Komorebic("toggle-pause")

; Layouts
#+x::Komorebic("flip-layout horizontal")
#+y::Komorebic("flip-layout vertical")
#+c::Komorebic("cycle-layout")

; Workspaces
#1::Komorebic("focus-workspace 0")
#2::Komorebic("focus-workspace 1")
#3::Komorebic("focus-workspace 2")
#4::Komorebic("focus-workspace 3")
#5::Komorebic("focus-workspace 4")
#6::Komorebic("focus-workspace 5")
#7::Komorebic("focus-workspace 6")
#8::Komorebic("focus-workspace 7")

; Move windows across workspaces
#+1::Komorebic("move-to-workspace 0")
#+2::Komorebic("move-to-workspace 1")
#+3::Komorebic("move-to-workspace 2")
#+4::Komorebic("move-to-workspace 3")
#+5::Komorebic("move-to-workspace 4")
#+6::Komorebic("move-to-workspace 5")
#+7::Komorebic("move-to-workspace 6")
#+8::Komorebic("move-to-workspace 7")