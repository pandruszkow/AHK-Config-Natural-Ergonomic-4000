#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent ; script will stay running after the auto-execute section (top part of the script) completes
#SingleInstance Force ; Replaces the old instance of this script automatically
SendMode Input ; Recommended for new scripts due to its superior speed and reliability

#Include %A_ScriptDir%\Natural_keyboard_4000_support.ahk

return ; nothing to do in the main part of the script

; Works best with scrolling set to 3-4 lines at a time. Smooth scroll makes the screen a bit blurry.

; === Use the zoom button to scroll ===

MsNatural4000_ZoomDown:
    SendInput, {WheelDown}
    return

MsNatural4000_ZoomUp:
    SendInput, {WheelUp}
    return

; === Example of using modifiers while pressing a button ===
MsNatural4000_MyFavorites:
    if MsNatural4000.keyModifiers.Shift {
        MsgBox Shift and MyFavorites button
        return
    }

    if MsNatural4000.keyModifiers.LCtrl and MsNatural4000.keyModifiers.RCtrl {
        MsgBox LeftCtrl+RightCtrl and MyFavorites button
        return
    }

    if MsNatural4000.keyModifiers.Fn {
        MsgBox "My Favorites Button while Fn-lock is Enabled"
    }

    return
; ======

; === Map extra numpad's keys to their ordinary functionality ===
; numpad "="
MsNatural4000_NumpadEqual:
    Send {=}
    return

; numpad "("
MsNatural4000_NumpadLeftBracket:
    Send {(}
    return

; numpad ")"
MsNatural4000_NumpadRightBracket:
    Send {)}
    return
; ======

; === Use favorites buttons ===
MsNatural4000_Favorites1:
    MsgBox Favorites 1
    return

MsNatural4000_Favorites2:
    MsgBox Favorites 2
    return

MsNatural4000_Favorites3:
    MsgBox Favorites 3
    return

MsNatural4000_Favorites4:
    MsgBox Favorites 4
    return

MsNatural4000_Favorites5:
    MsgBox Favorites 5
    return
; ======
