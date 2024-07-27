#Requires AutoHotkey v1.0
#SingleInstance Force
DetectHiddenWindows, On

WinHide, ahk_class NotifyIconOverflowWindow ; Hide the system tray window if it's hidden
;WinMinimize, ahk_class NotifyIconOverflowWindow ; Minimize the system tray window if it's minimized
return