-- Sticky shift
local sticky = false

local function handleSticky(e)
    if e:getKeyCode() == 41 and not e:getFlags()['shift'] then -- セミコロン単独, Shift押しは除外
        sticky = not sticky
        if sticky then
            e:setKeyCode(-1)
        end
    elseif sticky then -- stickyが有効の時にセミコロン以外のキーが入力された
        e:setFlags({shift=true})
        sticky = false
    end
end

stickyEvent = hs.eventtap.new({hs.eventtap.event.types.keyDown}, handleSticky)
stickyEvent:start()
