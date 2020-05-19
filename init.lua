local function keyCode(key, modifiers)
    modifiers = modifiers or {}

    return function()
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
        hs.timer.usleep(1000)
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
    end
end
  
-- Arrows
hs.hotkey.bind({"ALT"}, "W", nil, keyCode("UP"))
hs.hotkey.bind({"ALT"}, "S", nil, keyCode("DOWN"))
hs.hotkey.bind({"ALT"}, "D", nil, keyCode("RIGHT"))
hs.hotkey.bind({"ALT"}, "A", nil, keyCode("LEFT"))

-- Home, End and this kinda of stuff
hs.hotkey.bind({"ALT"}, "L", nil, keyCode("HOME"))
hs.hotkey.bind({"ALT"}, ".", nil, keyCode("END"))
hs.hotkey.bind({"ALT"}, ",", nil, keyCode("FORWARDDELETE"))
hs.hotkey.bind({"ALT"}, ";", nil, keyCode("PAGEUP"))
hs.hotkey.bind({"ALT"}, "'", nil, keyCode("PAGEDOWN"))

-- Functions
hs.hotkey.bind({"ALT"}, "1", nil, keyCode("F1"))
hs.hotkey.bind({"ALT"}, "2", nil, keyCode("F2"))
hs.hotkey.bind({"ALT"}, "3", nil, keyCode("F3"))
hs.hotkey.bind({"ALT"}, "4", nil, keyCode("F4"))
hs.hotkey.bind({"ALT"}, "5", nil, keyCode("F5"))
hs.hotkey.bind({"ALT"}, "6", nil, keyCode("F6"))
hs.hotkey.bind({"ALT"}, "7", nil, keyCode("F7"))
hs.hotkey.bind({"ALT"}, "8", nil, keyCode("F8"))
hs.hotkey.bind({"ALT"}, "9", nil, keyCode("F9"))
hs.hotkey.bind({"ALT"}, "0", nil, keyCode("F10"))
hs.hotkey.bind({"ALT"}, "-", nil, keyCode("F11"))
hs.hotkey.bind({"ALT"}, "=", nil, keyCode("F12"))

-- Escape
hs.hotkey.bind({"ALT"}, "ESCAPE", nil, keyCode("`"))
hs.hotkey.bind({"ALT", "SHIFT"}, "ESCAPE", nil, keyCode("~"))

-- Slash
hs.hotkey.bind({"ALT"}, "UP", nil, keyCode("/"))
hs.hotkey.bind({"ALT", "SHIFT"}, "UP", nil, keyCode("/", {"SHIFT"}))
hs.hotkey.bind({"ALT", "RIGHTSHIFT"}, "UP", nil, keyCode("/", {"SHIFT"}))
