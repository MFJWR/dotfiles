-- Sticky shift
local sticky = false

local function handleSticky(e)

    local keyCode = e:getKeyCode()
    local flags = e:getFlags()

    if keyCode == 41 then -- セミコロン
        if flags['shift'] or sticky then -- シフト付き or sticky=true
            sticky = false
        else -- セミコロン単独
            e:setKeyCode(-1)
            sticky = true
        end
    else -- セミコロン以外
        if sticky then
            e:setFlags({shift=true})
            sticky = false
        end
    end
end

stickyEvent = hs.eventtap.new({hs.eventtap.event.types.keyDown}, handleSticky)
stickyEvent:start()
