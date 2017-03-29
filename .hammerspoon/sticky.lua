-- Sticky shift
local sticky = false

local function handleSticky(e)

    local keyCode = e:getKeyCode()
    local flags = e:getFlags()

    if keyCode == 41 then
        if flags['shift'] or sticky then
            sticky = false
        else
            e:setKeyCode(-1)
            sticky = true
        end
    else
        if sticky then
            e:setFlags({shift=true})
            sticky = false
        end
    end
end

stickyEvent = hs.eventtap.new({hs.eventtap.event.types.keyDown}, handleSticky)
stickyEvent:start()
