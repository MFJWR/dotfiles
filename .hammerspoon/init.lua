require('watcher')
require("sticky")
--require("eikana")

-- Window management
local grid = require "grid"

local mashalt = {"cmd", "alt", "ctrl"}
hs.hotkey.bind(mashalt, 'left', grid.snap_northwest)  -- 左上
hs.hotkey.bind(mashalt, 'up', grid.snap_northeast)    -- 右上
hs.hotkey.bind(mashalt, 'right', grid.snap_southeast) -- 右下
hs.hotkey.bind(mashalt, 'down', grid.snap_southwest)  -- 左下

local mash =    {"cmd", "alt"}
hs.hotkey.bind(mash, 'left', grid.snap_west)  -- 左半分
hs.hotkey.bind(mash, 'up', grid.snap_north)   -- 上半分
hs.hotkey.bind(mash, 'right', grid.snap_east) -- 右半分
hs.hotkey.bind(mash, 'down', grid.snap_south) -- 下半分

hs.hotkey.bind(mash, 'f', grid.maximize_window) --全画面

-- local function batteryEvent()
--     hs.alert.show(hs.battery.percentage())
--
-- end
--
-- batteryWatcher = hs.battery.watcher.new(batteryEvent)
-- batteryWatcher:start()
--hs.notify.new({title="test", informativeText="test",alwaysPresent=true,actionButtonTitle="button"}):send()
