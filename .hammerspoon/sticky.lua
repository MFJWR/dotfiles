-- Sticky shift
local sticky = false

local function handleSticky(e)
    if e:getKeyCode() == 41 then -- セミコロン
        local flags = e:getFlags()
        sticky = not(sticky) and not(flags['shift'])
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
