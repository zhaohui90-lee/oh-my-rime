-- rime.lua - Lua module loader for oh-my-rime
-- Adds the local lua/ directory to package.path and requires all bundled modules.

local current_dir = debug.getinfo(1, "S").source:match("@?(.*[/\\])") or "./"
package.path = package.path .. ';' .. current_dir .. 'lua/?.lua'

-- processors
select_character = require('select_character')
codeLengthLimit_processor = require('codeLengthLimit_processor')

-- translators
mint_date_time_translator = require('mint_date_time_translator')
number_translator = require('number_translator')
chineseLunarCalendar_translator = require('chineseLunarCalendar_translator')
mint_calculator_translator = require('mint_calculator_translator')
force_gc = require('force_gc')

-- filters
corrector_filter = require('corrector_filter')
autocap_filter = require('autocap_filter')
reduce_english_filter = require('reduce_english_filter')
auxCode_filter = require('auxCode_filter')

return true
