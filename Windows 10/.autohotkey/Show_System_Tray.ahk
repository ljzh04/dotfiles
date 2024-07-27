#Requires AutoHotkey v1.0
#SingleInstance Force
DetectHiddenWindows, On

WinShow, ahk_class NotifyIconOverflowWindow ; Show the system tray window if it's hidden
;WinRestore, ahk_class NotifyIconOverflowWindow ; Restore the system tray window if it's minimized
WinActivate, ahk_class NotifyIconOverflowWindow ; Activate the system tray window
Return

