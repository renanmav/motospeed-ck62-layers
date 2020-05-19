# motospeed-ck62-layers

This repo contains an [Hammerspoon](https://github.com/Hammerspoon/hammerspoon) script written in Lua to fix the layers of Motospeed CK62 keyboard on OSX.

- The modifier key is `alt`. 
- To make it properly working, the third layer must be active, you achieve this by hitting `fn + 3` for 5 seconds. 

If you are using Windows, use this AHK.

```ahk
SetCapsLockState, AlwaysOff
CapsLock & /::Up
CapsLock & SC15D::Down
CapsLock & SC138::Left
CapsLock & SC11D::Right
CapsLock & l::Home
CapsLock & .::End
CapsLock & ,::Delete
CapsLock & `;::PgUp
CapsLock & '::PgDn
CapsLock & Esc::
if GetKeyState("Shift")
	Send {~}
else
	Send {``}
return
CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & Backspace::Delete
CapsLock & c::Send {vkAFsc130} ;Volume up
CapsLock & x::Send {vkAEsc12e} ;Volume down
CapsLock & z::Send {vkADsc120} ;Volume mute

CapsLock & [:: Send {PrintScreen}
CapsLock & ]::Send {Pause}

<+CapsLock::CapsLock
```
