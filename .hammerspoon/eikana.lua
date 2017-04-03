local prevKeyCode
local escape = 0x35
local leftCommand = 0x37
local rightCommand = 0x36
local eisuu = 0x66
local kana = 0x68

-- コマンドキー空打ちで英数/かな
local function handleEvent(e)

    -- USキーボードの時のみ
    local keyboardType = e:getProperty(hs.eventtap.event.properties.keyboardEventKeyboardType)

    if not(e:getFlags()['cmd']) and (keyboardType == 40 or keyboardType == 43) then -- 40 : HHKB Professional 43 : Macbook US Keyboard
        if prevKeyCode == leftCommand then
            hs.eventtap.keyStroke({}, eisuu)
        elseif prevKeyCode == rightCommand then
            hs.eventtap.keyStroke({}, kana)
        end
    end

    prevKeyCode = e:getKeyCode()
end

eventtap = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, handleEvent)
eventtap:start()
