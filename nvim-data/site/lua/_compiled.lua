-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\wax5798\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\wax5798\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\wax5798\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\wax5798\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\wax5798\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\2\n�\3\0\0\6\0\17\0%6\0\0\0009\0\1\0006\1\0\0009\1\1\0019\1\2\1'\2\3\0006\3\0\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\1\4\1=\1\2\0006\0\b\0'\2\t\0B\0\2\0029\0\n\0009\0\v\0005\2\f\0B\0\2\0016\0\b\0'\2\r\0B\0\2\0029\0\14\0B\0\1\0016\0\b\0'\2\15\0B\0\2\0029\0\14\0B\0\1\0016\0\b\0'\2\16\0B\0\2\0029\0\14\0B\0\1\1K\0\1\0\"luasnip.loaders.from_snipmate luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\1\0\3\fhistory\2\24delete_check_events\28TextChanged,InsertLeave\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire /.config/nvim/my-snippets/,\tHOME\vgetenv\afn\6,\16runtimepath\6o\bvim\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\LuaSnip",
    url = "git@github.com:L3MON4D3/LuaSnip"
  },
  ["accelerated-jk.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0=\3\6\0024\3\3\0005\4\a\0>\4\1\3=\3\b\2B\0\2\1K\0\1\0\23deceleration_table\1\3\0\0\3�\1\3�N\23acceleration_table\1\t\0\0\3\a\3\f\3\17\3\21\3\24\3\26\3\28\3\30\25acceleration_motions\1\0\3\24enable_deceleration\1\23acceleration_limit\3�\1\tmode\16time_driven\nsetup\19accelerated-jk\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\accelerated-jk.nvim",
    url = "git@github.com:rainbowhxch/accelerated-jk.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\1\6\0\0186\0\0\0009\0\1\0009\0\2\0-\2\0\0'\3\3\0&\2\3\2+\3\2\0+\4\1\0+\5\2\0B\0\5\0026\1\0\0009\1\1\0019\1\4\1\18\3\0\0'\4\5\0+\5\1\0B\1\4\1K\0\1\0\5�\6t\18nvim_feedkeys\r<Ignore>\27nvim_replace_termcodes\bapi\bvim�\2\1\5\v\0\17\0\"\18\a\0\0009\5\0\0'\b\1\0'\t\2\0B\5\4\2\18\a\5\0009\5\0\5\18\b\2\0'\t\3\0B\5\4\0025\6\4\0=\0\5\6\v\3\0\0X\a\1�\18\3\5\0006\a\6\0009\a\a\a9\a\b\a\18\t\4\0005\n\t\0B\a\3\2\18\4\a\0005\a\v\0>\5\2\a>\3\3\a>\4\4\a=\a\n\0063\a\f\0005\b\r\0=\1\14\b=\a\15\b=\6\16\b2\0\0�L\b\2\0\topts\ron_press\bval\1\0\1\ttype\vbutton\0\1\2\0\0\6n\vkeymap\1\0\3\vsilent\2\vnowait\2\fnoremap\2\vif_nil\6F\bvim\rshortcut\1\0\5\vcursor\3\5\16hl_shortcut\fKeyword\19align_shortcut\nright\rposition\vcenter\nwidth\0032\r<leader>\5\a%s\tgsub�\1\0\0\v\0\f\0\0266\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0'\1\3\0'\2\4\0006\3\0\0009\3\5\3B\3\1\0029\3\6\3'\4\a\0006\5\0\0009\5\5\5B\5\1\0029\5\b\5'\6\a\0006\a\0\0009\a\5\aB\a\1\0029\a\t\a'\b\n\0\18\t\0\0'\n\v\0&\1\n\1L\1\2\0\r plugins\v   \npatch\nminor\6.\nmajor\fversion\f   v\31   Have Fun with neovim\19packer_plugins\rtbl_keys\bvim�\26\1\0\15\0002\3�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0023\2\a\0'\3\b\0009\4\3\0019\4\t\0044\5\b\0\18\6\2\0'\b\n\0'\t\v\0\18\n\3\0'\v\f\0B\6\5\2>\6\1\5\18\6\2\0'\b\r\0'\t\14\0\18\n\3\0'\v\15\0B\6\5\2>\6\2\5\18\6\2\0'\b\16\0'\t\17\0\18\n\3\0'\v\18\0B\6\5\2>\6\3\5\18\6\2\0'\b\19\0'\t\20\0\18\n\3\0'\v\21\0B\6\5\2>\6\4\5\18\6\2\0'\b\22\0'\t\23\0\18\n\3\0'\v\24\0B\6\5\2>\6\5\5\18\6\2\0'\b\25\0'\t\26\0\18\n\3\0'\v\27\0B\6\5\2>\6\6\5\18\6\2\0'\b\28\0'\t\29\0\18\n\3\0'\v\30\0B\6\5\0?\6\0\0=\5\5\0049\4\3\0019\4\t\0049\4\31\4'\5!\0=\5 \0043\4\"\0009\5\3\0019\5#\5\18\6\4\0B\6\1\2=\6\5\0059\5\3\0019\5#\0059\5\31\5'\6$\0=\6 \5)\5\2\0009\6\3\0019\6\4\0069\6\5\6\21\6\6\0009\a\3\0019\a\t\a9\a\5\a\21\a\a\0\29\a\1\a \6\a\6 \6\5\0066\a%\0009\a&\a)\t\0\0006\n%\0009\n'\n6\f(\0009\f)\f9\f*\f'\14+\0B\f\2\2!\f\6\f\24\f\2\fB\n\2\0A\a\1\2)\b\1\0009\t,\0014\n\a\0005\v.\0=\a\5\v>\v\1\n9\v\3\0019\v\4\v>\v\2\n5\v/\0=\5\5\v>\v\3\n9\v\3\0019\v\t\v>\v\4\n5\v0\0=\b\5\v>\v\5\n9\v\3\0019\v#\v>\v\6\n=\n-\t9\t1\0009\v\31\1B\t\2\1K\0\1\0\nsetup\1\0\1\ttype\fpadding\1\0\1\ttype\fpadding\1\0\1\ttype\fpadding\vlayout\vconfig\6$\14winheight\afn\bvim\tceil\bmax\tmath\rFunction\vfooter\0\vString\ahl\topts!<cmd>Telescope live_grep<cr>\18 Word find\14comma f w\18<cmd>enew<cr>\17 File new\14comma f n\"<cmd>Telescope find_files<cr>\18 File find\14comma f f\31<cmd>Telescope project<cr>\21 Project find\14comma f p <cmd>Telescope oldfiles<cr>\21 File history\14comma f e <cmd>Telescope frecency<cr>\22 File frecency\14comma f r#<cmd>Telescope colorscheme<cr>\22 Scheme change\14comma s c\fbuttons\ncomma\0\1\20\0\0}⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿}⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿}⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿}⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿}⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿}⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿}⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿}⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\4\1����\3\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\alpha-nvim",
    url = "git@github.com:goolord/alpha-nvim"
  },
  ["auto-session"] = {
    commands = { "SaveSession", "RestoreSession", "DeleteSession" },
    config = { "\27LJ\2\n�\1\0\0\4\1\5\0\n5\0\0\0-\1\0\0=\1\1\0006\1\2\0'\3\3\0B\1\2\0029\1\4\1\18\3\0\0B\1\2\1K\0\1\0\1�\nsetup\17auto-session\frequire\26auto_session_root_dir\1\0\5\14log_level\tinfo\25auto_restore_enabled\2\22auto_save_enabled\2\25auto_session_enabled\2%auto_session_enable_last_session\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\auto-session",
    url = "git@github.com:rmagatti/auto-session"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3=\3\t\2B\0\2\1K\0\1\0\ftimeout\15timeoutlen\6o\bvim\fmapping\1\0\2\tkeys\n<Esc>\22clear_empty_lines\1\1\3\0\0\ajk\ajj\nsetup\18better_escape\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\better-escape.nvim",
    url = "git@github.com:max397574/better-escape.nvim"
  },
  ["bufdelete.nvim"] = {
    commands = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bufdelete.nvim",
    url = "git@github.com:famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n\31\0\1\4\0\2\0\5'\1\0\0\18\2\0\0'\3\1\0&\1\3\1L\1\2\0\6)\6(�\v\1\0\n\0G\0{5\0\5\0005\1\0\0004\2\3\0005\3\1\0>\3\1\2=\2\2\0013\2\3\0=\2\4\1=\1\6\0004\1\0\0=\1\a\0006\1\b\0009\1\t\0019\1\n\1\a\1\v\0X\1d�6\1\f\0'\3\r\0B\1\2\0029\1\14\1B\1\1\2'\2\16\0=\2\15\0015\2B\0006\3\f\0'\5\17\0B\3\2\0029\3\18\0035\5\20\0005\6\19\0=\6\21\0055\6?\0005\a\25\0005\b\23\0009\t\22\1=\t\24\b=\b\26\a5\b\27\0009\t\22\1=\t\24\b=\b\28\a5\b\29\0009\t\22\1=\t\24\b=\b\30\a5\b\31\0009\t\22\1=\t\24\b=\b \a5\b!\0009\t\22\1=\t\24\b=\b\"\a5\b#\0009\t\22\1=\t\24\b=\b$\a5\b&\0009\t%\1=\t\24\b=\b'\a5\b(\0009\t%\1=\t\24\b=\b)\a5\b*\0009\t%\1=\t\24\b=\b+\a5\b,\0009\t%\1=\t\24\b=\b-\a5\b.\0009\t%\1=\t\24\b=\b/\a5\b0\0009\t%\1=\t\24\b=\b1\a5\b3\0009\t2\1=\t\24\b=\b4\a5\b5\0009\t2\1=\t\24\b=\b6\a5\b7\0009\t2\1=\t\24\b=\b8\a5\b9\0009\t2\1=\t\24\b=\b:\a5\b;\0009\t2\1=\t\24\b=\b<\a5\b=\0009\t2\1=\t\24\b=\b>\a=\a@\6=\6A\5B\3\2\2=\3\a\0026\3\b\0009\3C\3'\5D\0\18\6\0\0\18\a\2\0B\3\4\2\18\0\3\0006\1\f\0'\3E\0B\1\2\0029\1F\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\15bufferline\nforce\20tbl_deep_extend\1\0\0\vcustom\nmocha\1\0\0\29hint_diagnostic_selected\1\0\0\28hint_diagnostic_visible\1\0\0\20hint_diagnostic\1\0\0\18hint_selected\1\0\0\17hint_visible\1\0\0\thint\1\0\0\14rosewater\29info_diagnostic_selected\1\0\0\28info_diagnostic_visible\1\0\0\20info_diagnostic\1\0\0\18info_selected\1\0\0\17info_visible\1\0\0\tinfo\1\0\0\bsky warning_diagnostic_selected\1\0\0\31warning_diagnostic_visible\1\0\0\23warning_diagnostic\1\0\0\21warning_selected\1\0\0\20warning_visible\1\0\0\fwarning\1\0\0\afg\1\0\0\vyellow\vstyles\1\0\0\1\3\0\0\vitalic\tbold\bget.catppuccin.groups.integrations.bufferline\tNONE\tnone\16get_palette\24catppuccin.palettes\frequire\15catppuccin\16colors_name\6g\bvim\15highlights\foptions\1\0\0\26diagnostics_indicator\0\foffsets\1\0\4\15text_align\vcenter\rfiletype\rNvimTree\ttext\18File Explorer\fpadding\3\1\1\0\r\rtab_size\3\20\18modified_icon\b✥\22show_buffer_icons\2\22buffer_close_icon\b\24show_tab_indicators\2\22max_prefix_length\3\r\22left_trunc_marker\b\28show_buffer_close_icons\2\27always_show_bufferline\2\23right_trunc_marker\b\20max_name_length\3\14\16diagnostics\rnvim_lsp\20separator_style\tthin\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bufferline.nvim",
    url = "git@github.com:akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n�\5\0\0\3\0:\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2'\1\4\0=\1\3\0006\1\5\0009\1\6\0019\1\a\1\a\1\b\0X\0012�'\1\n\0=\1\t\0'\1\f\0=\1\v\0'\1\14\0=\1\r\0'\1\16\0=\1\15\0'\1\18\0=\1\17\0'\1\20\0=\1\19\0'\1\22\0=\1\21\0'\1\24\0=\1\23\0'\1\26\0=\1\25\0'\1\28\0=\1\27\0'\1\30\0=\1\29\0'\1 \0=\1\31\0'\1\"\0=\1!\0'\1$\0=\1#\0'\1&\0=\1%\0'\1(\0=\1'\0'\1*\0=\1)\0'\1,\0=\1+\0'\1.\0=\1-\0'\1.\0=\1/\0'\0011\0=\0010\0'\0013\0=\0012\0'\0015\0=\0014\0'\0017\0=\0016\0'\0019\0=\0018\0L\0\2\0\f#161320\ncrust\f#1A1826\vmantle\f#1E1E2E\tbase\f#302D41\rsurface0\f#575268\rsurface1\rsurface2\f#6E6C7E\roverlay0\f#988BA2\roverlay1\f#C3BAC6\roverlay2\f#A6ADC8\rsubtext0\f#BAC2DE\rsubtext1\f#D9E0EE\ttext\f#C9CBFF\rlavender\f#B5E8E0\tteal\f#89DCEB\bsky\f#96CDFB\tblue\f#ABE9B3\ngreen\f#FAE3B0\vyellow\f#F8BD96\npeach\f#E8A2AF\vmaroon\f#F28FAD\bred\f#F5C2E7\tpink\f#DDB6F2\nmauve\f#F2CDCD\rflamingo\f#F5E0DC\14rosewater\nmocha\23catppuccin_flavour\6g\bvim\tNONE\tnone\16get_palette\24catppuccin.palettes\frequire:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\\\1\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0003\2\5\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\fcompile\15catppuccin\frequire�\1\1\1\6\0\n\0\17\15\0\0\0X\1\14�6\1\0\0009\1\1\0019\1\2\1'\3\3\0005\4\4\0B\1\3\0016\1\0\0009\1\1\0019\1\5\1'\3\6\0005\4\a\0003\5\b\0=\5\t\4B\1\3\1K\0\1\0\rcallback\0\1\0\2\ngroup\16_catppuccin\fpattern\22PackerCompileDone\tUser\24nvim_create_autocmd\1\0\1\nclear\2\16_catppuccin\24nvim_create_augroup\bapi\bvim�\30\1\0\v\0�\1\0�\0023\0\0\0003\1\1\0006\2\2\0009\2\3\2'\3\5\0=\3\4\2\18\2\0\0B\2\1\2+\3\2\0\18\4\1\0\18\6\3\0B\4\2\0016\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\n\0005\a\t\0=\a\v\0065\a\f\0=\3\r\a6\b\2\0009\b\14\b9\b\15\b'\n\16\0B\b\2\2'\t\17\0&\b\t\b=\b\18\a=\a\19\0065\a\21\0005\b\20\0=\b\22\a5\b\23\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a5\b\29\0=\b\30\a5\b\31\0=\b \a5\b!\0=\b\"\a5\b#\0=\b$\a4\b\0\0=\b%\a4\b\0\0=\b&\a4\b\0\0=\b'\a4\b\0\0=\b(\a=\a)\0065\a*\0005\b+\0005\t-\0005\n,\0=\n.\t5\n/\0=\n0\t5\n1\0=\n2\t5\n3\0=\n4\t=\t5\b5\t7\0005\n6\0=\n.\t5\n8\0=\n0\t5\n9\0=\n2\t5\n:\0=\n4\t=\t;\b=\b<\a5\b=\0=\b>\a5\b?\0=\b@\a5\bA\0=\bB\a5\bC\0=\bD\a=\aE\0065\aG\0005\bF\0=\b\5\a=\aH\0065\a�\0005\bL\0005\tJ\0009\nI\2=\nK\t=\tM\b5\tO\0009\nN\2=\nP\t9\nQ\2=\nK\t5\nR\0=\nS\t=\tT\b5\tU\0009\nQ\2=\nP\t9\nN\2=\nK\t=\tV\b5\tX\0009\nW\2=\nP\t=\tY\b5\tZ\0009\nW\2=\nP\t=\t[\b5\t\\\0009\nW\2=\nP\t=\t]\b5\t_\0009\n^\2=\nK\t9\nW\2=\nP\t=\t`\b5\ta\0009\n^\2=\nK\t=\tb\b5\tc\0009\n^\2=\nK\t=\td\b5\te\0009\n^\2=\nK\t=\tf\b5\tg\0009\n^\2=\nK\t=\th\b5\ti\0009\n^\2=\nj\t=\tk\b5\tl\0009\nW\2=\nP\t9\nm\2=\nK\t=\tn\b5\tp\0009\no\2=\nK\t5\nq\0=\nS\t=\tr\b5\ts\0009\n^\2=\nK\t=\tt\b5\tv\0009\nu\2=\nK\t=\tw\b5\ty\0009\nx\2=\nK\t=\tz\b5\t|\0009\n{\2=\nK\t=\t}\b5\t~\0009\n{\2=\nK\t=\t\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t4\n\0\0=\nS\t=\t�\b5\t�\0009\n^\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nQ\2=\nK\t4\n\0\0=\nS\t=\t�\b5\t�\0005\n�\0=\nS\t=\t�\b5\t�\0009\n^\2=\nK\t=\t�\b5\t�\0009\nx\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\nu\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nx\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nu\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b=\b\5\a=\a�\6B\4\2\1K\0\1\0\24highlight_overrides\1\0\0\18cppTSProperty\1\0\0\18cssTSProperty\1\2\0\0\vitalic\1\0\0\14cssTSType\1\0\0\25typescriptTSProperty\1\2\0\0\vitalic\1\0\0\19javaTSConstant\1\0\0\21luaTSConstructor\1\0\0\rflamingo\15luaTSField\1\0\0\20bashTSParameter\1\2\0\0\vitalic\1\0\0\22bashTSFuncBuiltin\1\2\0\0\vitalic\1\0\0\vTSText\1\0\0\19TSTagDelimiter\1\0\0\nTSTag\1\0\0\19TSTagAttribute\1\2\0\0\vitalic\1\0\0\nmauve\15TSVariable\1\0\0\ttext\19TSPunctBracket\1\0\0\roverlay2\21TSPunctDelimiter\1\0\0\16TSNamespace\1\0\0\rTSMethod\1\0\0\1\2\0\0\vitalic\20TSKeywordReturn\1\0\0\14TSKeyword\1\0\0\22TSKeywordFunction\1\0\0\16TSParameter\1\0\0\16TSFuncMacro\1\0\0\22TSVariableBuiltin\1\2\0\0\vitalic\1\0\0\bred\19TSConstBuiltin\1\0\0\16TSException\1\0\0\npeach\18TSConstructor\1\0\0\rlavender\19TSPunctSpecial\1\0\0\vmaroon\22TSKeywordOperator\1\0\0\15TSOperator\1\0\0\bsky\14TSInclude\1\0\0\tteal\15TSProperty\1\0\0\vyellow\fTSField\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\tblue\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\tnone\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\abg\1\0\0\rsurface1\17CursorLineNr\1\0\0\afg\1\0\0\ngreen\20color_overrides\1\0\0\1\0\25\bsky\f#89DCEB\bred\f#F28FAD\tteal\f#B5E8E0\rsurface1\f#575268\rlavender\f#C9CBFF\rsurface0\f#302D41\ttext\f#D9E0EE\tbase\f#1E1E2E\rsubtext1\f#BAC2DE\vmantle\f#1A1826\rsubtext0\f#A6ADC8\ncrust\f#161320\roverlay2\f#C3BAC6\14rosewater\f#F5E0DC\roverlay1\f#988BA2\rflamingo\f#F2CDCD\roverlay0\f#6E6C7E\nmauve\f#DDB6F2\rsurface2\f#6E6C7E\tpink\f#F5C2E7\tblue\f#96CDFB\vmaroon\f#E8A2AF\npeach\f#F8BD96\vyellow\f#FAE3B0\ngreen\f#ABE9B3\17integrations\nnavic\1\0\2\14custom_bg\tNONE\fenabled\2\fneotree\1\0\3\22transparent_panel\1\14show_root\2\fenabled\1\bdap\1\0\2\14enable_ui\2\fenabled\2\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\2\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\1\0\29\15ts_rainbow\2\vfidget\2\15treesitter\2\tmini\1\vaerial\1\vbeacon\1\roverseer\1\bcmp\2\14which_key\2\bhop\2\14telescope\2\rgitsigns\2\rmarkdown\2\fvimwiki\2\15lightspeed\1\rnvimtree\2\rlsp_saga\2\16lsp_trouble\2\14gitgutter\1\vneogit\1\14vim_sneak\1\tfern\1\vbarbar\1\vnotify\2\20symbols_outline\1\rcoc_nvim\1\tleap\1\14dashboard\2\15telekasten\1\vstyles\14variables\fstrings\ntypes\fnumbers\rbooleans\1\3\0\0\tbold\vitalic\nloops\1\2\0\0\tbold\17conditionals\1\2\0\0\tbold\14operators\1\2\0\0\tbold\rkeywords\1\2\0\0\vitalic\14functions\1\3\0\0\vitalic\tbold\15properties\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\fenabled\1\0\0\17dim_inactive\1\0\2\27transparent_background\1\16term_colors\2\1\0\3\nshade\tdark\15percentage\4��̙\3���\3\fenabled\1\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0\0\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "git@github.com:catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-latex-symbols" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer\\after\\plugin\\cmp_buffer.lua" },
    load_after = {
      ["cmp-spell"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer",
    url = "git@github.com:hrsh7th/cmp-buffer"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-latex-symbols\\after\\plugin\\cmp_latex.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-latex-symbols",
    url = "git@github.com:kdheepak/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-nvim-lua" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp\\after\\plugin\\cmp_nvim_lsp.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp",
    url = "git@github.com:hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-tmux" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lua\\after\\plugin\\cmp_nvim_lua.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lua",
    url = "git@github.com:hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after = { "cmp-spell" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path\\after\\plugin\\cmp_path.lua" },
    load_after = {
      ["cmp-tmux"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path",
    url = "git@github.com:hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after = { "cmp-buffer" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-spell\\after\\plugin\\cmp-spell.lua" },
    load_after = {
      ["cmp-path"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-spell",
    url = "git@github.com:f3fora/cmp-spell"
  },
  ["cmp-tmux"] = {
    after = { "cmp-path" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-tmux\\after\\plugin\\cmp_tmux.vim" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-tmux",
    url = "git@github.com:andersevenrud/cmp-tmux"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-under-comparator",
    url = "git@github.com:lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lsp" },
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp_luasnip\\after\\plugin\\cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp_luasnip",
    url = "git@github.com:saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    commands = { "Copilot" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\copilot.vim",
    url = "git@github.com:github/copilot.vim"
  },
  ["csv.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\csv.vim",
    url = "git@github.com:chrisbra/csv.vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\diffview.nvim",
    url = "git@github.com:sindrets/diffview.nvim"
  },
  edge = {
    config = { "\27LJ\2\n�\1\0\0\2\0\t\0\0256\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0K\0\1\0 edge_transparent_background\28edge_better_performance\18edge_show_eob edge_disable_italic_comment\23edge_enable_italic\taura\15edge_style\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\edge",
    url = "git@github.com:sainnhe/edge"
  },
  ["efmls-configs-nvim"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\efmls-configs-nvim",
    url = "git@github.com:creativenull/efmls-configs-nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\fidget.nvim",
    url = "git@github.com:j-hui/fidget.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\nm\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\fshebang\1\0\0\1\0\1\tdash\ash\nsetup\rfiletype\frequire\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\filetype.nvim",
    url = "git@github.com:nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "git@github.com:rafamadriz/friendly-snippets"
  },
  ["fzy-lua-native"] = {
    load_after = {
      ["wilder.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\fzy-lua-native",
    url = "git@github.com:romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\f\0\0\5\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\21virtual_text_pos\beol\ndelay\3�\a\17watch_gitdir\1\0\2\rinterval\3�\a\17follow_files\2\fkeymaps\tn [g\1\2\1\0@&diff ? '[g' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]g\1\2\1\0@&diff ? ']g' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\fnoremap\2\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hb;<cmd>lua require\"gitsigns\".blame_line({full=true})<CR>\vbuffer\2\nsigns\1\0\4\20update_debounce\3d\14word_diff\1\23current_line_blame\2\18sign_priority\3\6\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\ttext\6~\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\ttext\b‾\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\ttext\6_\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\ttext\b│\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\ttext\b│\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gitsigns.nvim",
    url = "git@github.com:lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\hop.nvim",
    url = "git@github.com:phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\4\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0'\2\f\0B\0\2\1K\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\bvim\21context_patterns\1\15\0\0\nclass\rfunction\vmethod\nblock\17list_literal\rselector\b^if\v^table\17if_statement\nwhile\bfor\ttype\bvar\vimport\20buftype_exclude\1\3\0\0\rterminal\vnofile\21filetype_exclude\1\22\0\0\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\tjson\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\5\1\0\5\28show_first_indent_level\2\25space_char_blankline\6 #show_trailing_blankline_indent\1\25show_current_context\2\tchar\b│\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "git@github.com:lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lsp_signature.nvim",
    url = "git@github.com:ray-x/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\v\0\t\0\0195\0\0\0006\1\1\0\18\3\0\0B\1\2\4H\4\v�'\6\2\0\18\a\4\0&\6\a\0066\a\3\0009\a\4\a9\a\5\a\18\t\6\0005\n\6\0=\5\a\n=\6\b\nB\a\3\1F\4\3\3R\4�K\0\1\0\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tWarn\t \nError\t \tHint\t \tInfo\t �\2\0\0\3\0\19\0\0296\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\6�6\0\4\0'\2\5\0B\0\2\0029\0\6\0D\0\1\0X\0\17�6\0\4\0'\2\a\0B\0\2\0029\0\b\0009\1\n\0=\1\t\0009\1\n\0=\1\v\0009\1\r\0=\1\f\0009\1\15\0=\1\14\0009\1\17\0=\1\16\0009\1\n\0=\1\18\0L\0\2\0K\0\1\0\vmaroon\tblue\rsapphire\vviolet\nmauve\vyellow\14rosewater\rflamingo\vorange\npeach\vcolors\20lspsaga.lspkind\16get_palette\24catppuccin.palettes\frequire\15catppuccin\16colors_name\6g\bvim�\t\1\0\t\0P\0�\0013\0\0\0003\1\1\0\18\2\0\0B\2\1\1\18\2\1\0B\2\1\0026\3\2\0'\5\3\0B\3\2\0029\3\4\0035\5\6\0005\6\5\0=\6\a\0055\6\n\0005\a\b\0009\b\t\2>\b\2\a=\a\v\0065\a\f\0009\b\r\2>\b\2\a=\a\14\0065\a\15\0009\b\r\2>\b\2\a=\a\16\0065\a\17\0009\b\r\2>\b\2\a=\a\18\0065\a\19\0009\b\20\2>\b\2\a=\a\21\0065\a\22\0009\b\r\2>\b\2\a=\a\23\0065\a\24\0009\b\25\2>\b\2\a=\a\26\0065\a\27\0009\b\25\2>\b\2\a=\a\28\0065\a\29\0009\b\30\2>\b\2\a=\a\31\0065\a \0009\b\20\2>\b\2\a=\a!\0065\a\"\0009\b\20\2>\b\2\a=\a#\0065\a$\0009\b\r\2>\b\2\a=\a%\0065\a&\0009\b'\2>\b\2\a=\a(\0065\a)\0009\b'\2>\b\2\a=\a*\0065\a+\0009\b,\2>\b\2\a=\a-\0065\a.\0009\b'\2>\b\2\a=\a/\0065\a0\0009\b'\2>\b\2\a=\a1\0065\a2\0009\b'\2>\b\2\a=\a3\0065\a4\0009\b\20\2>\b\2\a=\a5\0065\a6\0009\b7\2>\b\2\a=\a8\0065\a9\0009\b\20\2>\b\2\a=\a:\0065\a;\0009\b\25\2>\b\2\a=\a<\0065\a=\0009\b\20\2>\b\2\a=\a>\0065\a?\0009\b\20\2>\b\2\a=\a@\0065\aA\0009\bB\2>\b\2\a=\aC\0065\aD\0009\bE\2>\b\2\a=\aF\0065\aG\0009\b,\2>\b\2\a=\aH\0065\aI\0009\b\r\2>\b\2\a=\aJ\0065\aK\0009\b'\2>\b\2\a=\aL\0065\aM\0009\b7\2>\b\2\a=\aN\6=\6O\5B\3\2\1K\0\1\0\16custom_kind\nMacro\1\2\0\0\t \17StaticMethod\1\2\0\0\tﴂ \14Parameter\1\2\0\0\t \14TypeAlias\1\2\0\0\t \18TypeParameter\vmaroon\1\2\0\0\t \rOperator\bsky\1\2\0\0\t \nEvent\1\2\0\0\t \vStruct\1\2\0\0\t \15EnumMember\1\2\0\0\t \tNull\1\2\0\0\tﳠ \bKey\bred\1\2\0\0\t \vObject\1\2\0\0\t \nArray\1\2\0\0\t \fBoolean\1\2\0\0\t \vNumber\1\2\0\0\t \vString\ngreen\1\2\0\0\t \rConstant\1\2\0\0\t \rVariable\npeach\1\2\0\0\t \rFunction\1\2\0\0\t \14Interface\1\2\0\0\t \tEnum\1\2\0\0\t \16Constructor\rsapphire\1\2\0\0\t \nField\1\2\0\0\t \rProperty\tteal\1\2\0\0\tﰠ \vMethod\1\2\0\0\t \nClass\vyellow\1\2\0\0\tﴯ \fPackage\1\2\0\0\t \14Namespace\1\2\0\0\t \vModule\tblue\1\2\0\0\t \tFile\1\0\0\14rosewater\1\2\0\0\t \22diagnostic_header\1\0\0\1\5\0\0\t \t \n  \t \18init_lsp_saga\flspsaga\frequire\0\0\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspsaga.nvim",
    url = "git@github.com:glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\ne\0\0\4\0\6\0\r6\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\5�9\2\3\1\15\0\2\0X\3\2�'\2\4\0X\3\1�'\2\5\0L\2\2\0\5\t✺ \fwaiting\18better_escape\frequire\npcall|\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\b�5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bviml\0\1\t\0\5\0\0186\1\0\0009\1\1\1\18\3\0\0'\4\2\0B\1\3\2\15\0\1\0X\2\n�\18\1\0\0\18\4\0\0009\2\3\0'\5\4\0B\2\3\4X\5\1�\18\1\5\0E\5\3\2R\5�\18\0\1\0L\0\2\0\f([^/]+)\vgmatch\6/\tfind\vstring�\1\1\0\b\0\r\0(3\0\0\0006\1\1\0009\1\2\0019\1\3\1\a\1\4\0X\1\31�6\1\1\0009\1\5\0019\1\6\1'\3\a\0B\1\2\2\15\0\1\0X\2\b�6\2\b\0009\2\t\2'\4\n\0\18\5\0\0\18\a\1\0B\5\2\0002\0\0�C\2\1\0006\2\1\0009\2\5\0029\2\6\2'\4\v\0B\2\2\2\18\1\2\0\15\0\1\0X\2\b�6\2\b\0009\2\t\2'\4\n\0\18\5\0\0\18\a\1\0B\5\2\0002\0\0�C\2\1\0'\1\f\0002\0\0�L\1\2\0\5\16VIRTUAL_ENV\a%s\vformat\vstring\22CONDA_DEFAULT_ENV\vgetenv\afn\vpython\rfiletype\abo\bvim\0�\n\1\0\18\0?\0�\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0005\3\4\0004\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\b\0034\4\0\0=\4\t\0035\4\n\0=\4\v\0035\4\r\0005\5\f\0=\5\5\0045\5\14\0=\5\6\0044\5\0\0=\5\a\0044\5\0\0=\5\b\0044\5\0\0=\5\t\0045\5\15\0=\5\v\0045\5\16\0=\3\17\0055\6\18\0=\6\19\0055\6\20\0=\4\17\0065\a\21\0=\a\19\0065\a\22\0=\4\17\a5\b\23\0=\b\19\a5\b\24\0=\4\17\b5\t\25\0=\t\19\b5\t\26\0=\4\17\t5\n\27\0=\n\19\t3\n\28\0006\v\0\0'\r\29\0B\v\2\0029\v\30\v5\r#\0005\14\31\0004\15\0\0=\15 \0145\15!\0=\15\"\14=\14$\r5\14&\0005\15%\0=\15\5\0144\15\3\0005\16'\0>\16\1\0155\16(\0=\2)\16>\16\2\15=\15\6\0144\15\3\0005\16,\0009\17*\0>\17\1\0169\17+\0=\17-\16>\16\1\15=\15\a\0144\15\3\0004\16\3\0>\1\1\16>\16\1\0155\16.\0005\17/\0=\0170\0165\0171\0=\0172\16>\16\2\15=\15\b\0144\15\5\0005\0163\0>\16\1\0154\16\3\0>\n\1\16>\16\2\0155\0164\0>\16\3\0155\0165\0005\0176\0=\0172\16>\16\4\15=\15\t\0145\0157\0=\15\v\14=\14\17\r5\0148\0004\15\0\0=\15\5\0144\15\0\0=\15\6\0145\0159\0=\15\a\0145\15:\0=\15\b\0144\15\0\0=\15\t\0144\15\0\0=\15\v\14=\14;\r4\14\0\0=\14<\r5\14=\0>\5\5\14>\6\6\14>\a\a\14>\b\b\14>\t\t\14=\14>\rB\v\2\1K\0\1\0\15extensions\1\5\0\0\rquickfix\14nvim-tree\15toggleterm\rfugitive\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\1\3\0\0\rprogress\rlocation\1\0\3\tunix\aLF\bmac\aCR\bdos\tCRLF\1\2\1\0\15fileformat\18icons_enabled\2\1\2\0\0\rencoding\1\2\2\0\rfiletype\fcolored\2\14icon_only\2\fsymbols\1\0\3\twarn\t \nerror\t \tinfo\t \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\tcond\1\0\0\17is_available\17get_location\vsource\1\2\0\0\tdiff\1\2\0\0\vbranch\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\nright\b\tleft\b\23disabled_filetypes\1\0\3\ntheme\15catppuccin\25component_separators\6|\18icons_enabled\2\nsetup\flualine\0\1\2\0\0\18dapui_watches\1\0\0\1\2\0\0\17dapui_stacks\1\0\0\1\2\0\0\22dapui_breakpoints\1\0\0\1\2\0\0\17dapui_scopes\1\0\0\14filetypes\1\2\0\0\19lspsagaoutline\rsections\1\0\0\1\2\0\0\rlocation\1\2\0\0\rfiletype\1\0\0\1\2\0\0\tmode\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\14lualine_c\14lualine_b\14lualine_a\1\0\0\0\0\15nvim-navic\frequire\0" },
    load_after = {
      ["nvim-navic"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lualine.nvim",
    url = "git@github.com:hoob3rt/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "git@github.com:iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "git@github.com:williamboman/mason-lspconfig.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\2\17run_on_start\2\16auto_update\1\1\b\0\0\25editorconfig-checker\vstylua\nblack\rprettier\15shellcheck\nshfmt\tvint\nsetup\25mason-tool-installer\frequire\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-tool-installer.nvim",
    url = "git@github.com:WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "git@github.com:williamboman/mason.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rmappings\1\0\5\16hide_cursor\2\24use_local_scrolloff\1\22respect_scrolloff\1\25cursor_scrolls_alone\2\rstop_eof\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neoscroll.nvim",
    url = "git@github.com:karb94/neoscroll.nvim"
  },
  ["nord.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\b\0\0256\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0K\0\1\0\16nord_italic#nord_enable_sidebar_background\28nord_disable_background nord_cursorline_transparent\17nord_borders\18nord_contrast\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nord.nvim",
    url = "git@github.com:shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\3\0\0\15\0\23\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\6\1\18\5\3\0009\3\a\3'\6\b\0009\a\t\0005\t\21\0005\n\20\0005\v\18\0005\f\14\0004\r\3\0009\14\n\0019\14\v\0149\14\f\14>\14\1\r9\14\n\0019\14\v\0149\14\r\14>\14\2\r=\r\15\f9\r\16\2=\r\17\f=\f\19\v=\v\16\n=\n\22\tB\a\2\0A\3\2\1K\0\1\0\14filetypes\1\0\0\1\0\1\btex\1\6(\1\0\0\fhandler\6*\tkind\1\0\0\vMethod\rFunction\23CompletionItemKind\blsp\20on_confirm_done\17confirm_done\aon\nevent'nvim-autopairs.completion.handlers\bcmp\"nvim-autopairs.completion.cmp\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-autopairs",
    url = "git@github.com:windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs", "tabout.nvim", "LuaSnip" },
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2�\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b│\1\2\0\0\b╰\1\2\0\0\b─\1\2\0\0\b╯\1\2\0\0\b│\1\2\0\0\b╮\1\2\0\0\b─\1\2\0\0\b╭0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_�\4\0\2\b\0\t\0\0155\2\0\0006\3\2\0009\3\3\3'\5\4\0009\6\1\0018\6\6\0029\a\1\1B\3\4\2=\3\1\0015\3\6\0009\4\a\0009\4\b\0048\3\4\3=\3\5\1L\1\2\0\tname\vsource\1\0\b\forgmode\n[ORG]\tpath\v[PATH]\ttmux\v[TMUX]\fluasnip\v[SNIP]\vbuffer\n[BUF]\rnvim_lua\n[LUA]\rnvim_lsp\n[LSP]\nspell\f[SPELL]\tmenu\n%s %s\vformat\vstring\tkind\1\0\25\18TypeParameter\b\nEvent\b\vStruct\b\15EnumMember\b\vFolder\b\14Reference\b\tFile\b\nColor\b\fSnippet\b\tEnum\b\nValue\b\tUnit\b\rProperty\bﰠ\vModule\b\14Interface\b\nClass\bﴯ\rVariable\b\nField\b\16Constructor\b\vMethod\b\tText\b\fKeyword\b\rOperator\b\rFunction\b\rConstant\b}\0\1\3\2\3\0\20-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\n�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\2\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\5�\1�\rcomplete\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\5�\21select_prev_item\fvisible�\1\0\1\6\1\b\0\0206\1\0\0'\3\1\0B\1\2\0029\1\2\1)\3��B\1\2\2\15\0\1\0X\2\t�6\1\3\0009\1\4\0019\1\5\1-\3\0\0'\5\6\0B\3\2\2'\4\a\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire�\1\0\1\6\1\b\0\0196\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\2\15\0\1\0X\2\t�6\1\3\0009\1\4\0019\1\5\1-\3\0\0'\5\6\0B\3\2\2'\4\a\0B\1\3\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequireC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\t\1\0\16\0M\0�\0013\0\0\0003\1\1\0003\2\2\0006\3\3\0'\5\4\0B\3\2\0029\4\6\3=\4\5\0033\4\a\0=\4\6\0036\4\3\0'\6\b\0B\4\2\0026\5\3\0'\a\t\0B\5\2\0029\6\n\0055\b\19\0005\t\14\0005\n\f\0\18\v\2\0'\r\v\0B\v\2\2=\v\r\n=\n\15\t5\n\17\0\18\v\2\0'\r\16\0B\v\2\2=\v\r\n=\n\18\t=\t\20\b5\t\30\0004\n\t\0009\v\21\4>\v\1\n9\v\22\4>\v\2\n9\v\23\4>\v\3\n6\v\3\0'\r\24\0B\v\2\0029\v\25\v>\v\4\n9\v\26\4>\v\5\n9\v\27\4>\v\6\n9\v\28\4>\v\a\n9\v\29\4>\v\b\n=\n\31\t=\t \b5\t\"\0003\n!\0=\n#\t=\t$\b9\t%\0059\t&\t9\t'\t5\v*\0009\f%\0059\f(\f5\14)\0B\f\2\2=\f+\v9\f%\0059\f,\fB\f\1\2=\f-\v9\f%\0059\f.\fB\f\1\2=\f/\v9\f%\0059\f0\f)\14��B\f\2\2=\f1\v9\f%\0059\f0\f)\14\4\0B\f\2\2=\f2\v9\f%\0059\f3\fB\f\1\2=\f4\v9\f%\0053\0145\0005\0156\0B\f\3\2=\f7\v9\f%\0053\0148\0005\0159\0B\f\3\2=\f:\v3\f;\0=\f<\v3\f=\0=\f>\vB\t\2\2=\t%\b5\t@\0003\n?\0=\nA\t=\tB\b4\t\n\0005\nC\0>\n\1\t5\nD\0>\n\2\t5\nE\0>\n\3\t5\nF\0>\n\4\t5\nG\0>\n\5\t5\nH\0>\n\6\t5\nI\0>\n\a\t5\nJ\0>\n\b\t5\nK\0>\n\t\t=\tL\bB\6\2\0012\0\0�K\0\1\0\fsources\1\0\1\tname\18latex_symbols\1\0\1\tname\vbuffer\1\0\1\tname\forgmode\1\0\1\tname\ttmux\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fsnippet\vexpand\1\0\0\0\n<C-l>\0\n<C-h>\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\21select_prev_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\15formatting\vformat\1\0\0\0\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\1\17winhighlight4Normal:CmpPmenu,CursorLine:PmenuSel,Search:None\14CmpBorder\nsetup\bcmp\23cmp.config.compare\0\tinfo\ninfo_\21cmp.utils.window\frequire\0\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-cmp",
    url = "git@github.com:hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-colorizer.lua",
    url = "git@github.com:norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-comment",
    url = "git@github.com:terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    after = { "nvim-dap-ui" },
    commands = { "DapSetLogLevel", "DapShowLog", "DapContinue", "DapToggleBreakpoint", "DapToggleRepl", "DapStepOver", "DapStepInto", "DapStepOut", "DapTerminate" },
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1�\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1�\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1�\ncloseg\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim�\1\0\1\a\2\n\1\24-\1\0\0\18\3\1\0009\1\0\1B\1\2\1-\1\1\0\18\3\1\0009\1\0\1B\1\2\1\b\0\0\0X\1\r�6\1\1\0009\1\2\0016\3\3\0009\3\4\3'\5\5\0\18\6\0\0B\3\3\0026\4\1\0009\4\6\0049\4\a\0049\4\b\0045\5\t\0B\1\4\1K\0\1\0\2�\3�\1\0\1\ntitle\22[go] DAP Warning!\tWARN\vlevels\blogK\"dlv\" exited with code: %d, please check your configs for correctness.\vformat\vstring\vnotify\bvim\nclose\0=\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1�\vappend\rdap.repl\frequireL\1\2\6\0\4\0\f6\2\0\0\19\4\0\0\18\5\0\0B\2\3\1\15\0\1\0X\2\4�6\2\1\0009\2\2\0023\4\3\0B\2\2\0012\0\0�K\0\1\0\0\rschedule\bvim\vassertF\0\0\4\2\2\0\6-\0\0\0005\2\0\0-\3\1\0=\3\1\2B\0\2\1K\0\1\0\0�\5�\tport\1\0\2\ttype\vserver\thost\014127.0.0.1�\2\1\2\14\0\19\1-6\2\0\0009\2\1\0029\2\2\2+\4\1\0B\2\2\2,\3\4\0*\5\0\0005\6\4\0005\a\3\0>\2\2\a=\a\5\0065\a\6\0'\b\a\0\18\t\5\0&\b\t\b>\b\3\a=\a\b\0066\a\0\0009\a\1\a9\a\t\a'\t\n\0\18\n\6\0003\v\v\0B\a\4\3\18\4\b\0\18\3\a\0006\a\f\0\18\t\3\0'\n\r\0006\v\14\0\18\r\4\0B\v\2\2&\n\v\nB\a\3\1\18\t\2\0009\a\15\0023\n\16\0B\a\3\0016\a\0\0009\a\17\a3\t\18\0)\nd\0B\a\3\0012\0\0�K\0\1\0\0\rdefer_fn\0\15read_start\rtostring\24Error running dlv: \vassert\0\bdlv\nspawn\targs\015127.0.0.1:\1\3\0\0\bdap\a-l\nstdio\1\0\1\rdetached\2\1\0\0\rnew_pipe\tloop\bvim��\4�\1\0\0\5\0\a\1#6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\4\0&\3\4\3B\1\2\2\t\1\0\0X\1\5�\18\1\0\0'\2\4\0&\1\2\1L\1\2\0X\1\16�6\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\5\0&\3\4\3B\1\2\2\t\1\0\0X\1\5�\18\1\0\0'\2\5\0&\1\2\1L\1\2\0X\1\2�'\1\6\0L\1\2\0K\0\1\0\20/usr/bin/python\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2�\f\1\0\a\0008\0t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0026\1\3\0'\3\5\0B\1\2\0029\2\6\0009\2\a\0029\2\b\0023\3\n\0=\3\t\0029\2\6\0009\2\a\0029\2\v\0023\3\f\0=\3\t\0029\2\6\0009\2\a\0029\2\r\0023\3\14\0=\3\t\0026\2\0\0009\2\15\0029\2\16\2)\4\0\0'\5\17\0005\6\18\0B\2\4\0016\2\0\0009\2\19\0029\2\20\2'\4\21\0005\5\22\0B\2\3\0016\2\0\0009\2\19\0029\2\20\2'\4\23\0005\5\24\0B\2\3\0016\2\0\0009\2\19\0029\2\20\2'\4\25\0005\5\26\0B\2\3\0016\2\0\0009\2\19\0029\2\20\2'\4\27\0005\5\28\0B\2\3\0016\2\0\0009\2\19\0029\2\20\2'\4\17\0005\5\29\0B\2\3\0019\2\30\0005\3 \0=\3\31\0029\2!\0004\3\3\0005\4#\0003\5$\0=\5%\0044\5\0\0=\5&\4>\4\1\3=\3\"\0029\2!\0009\3!\0009\3\"\3=\3'\0029\2!\0009\3!\0009\3\"\3=\3(\0029\2\30\0003\3*\0=\3)\0029\2!\0004\3\4\0005\4+\0>\4\1\0035\4,\0>\4\2\0035\4-\0>\4\3\3=\3)\0029\2\30\0005\3/\0006\4\0\0009\4\19\0049\0040\4'\0061\0B\4\2\2'\0052\0&\4\5\4=\0043\0035\0044\0=\4&\3=\3.\0029\2!\0004\3\3\0005\0045\0003\0056\0=\0057\4>\4\1\3=\3.\0022\0\0�K\0\1\0\15pythonPath\0\1\0\4\frequest\vlaunch\fprogram\f${file}\tname\16Launch file\ttype\vpython\1\3\0\0\a-m\20debugpy.adapter\fcommand4/.local/share/nvim/dapinstall/python/bin/python\tHOME\vgetenv\1\0\1\ttype\15executable\vpython\1\0\5\frequest\vlaunch\fprogram\29./${relativeFileDirname}\tname\24Debug test (go.mod)\ttype\ago\tmode\ttest\1\0\5\frequest\vlaunch\fprogram\f${file}\tname\15Debug test\ttype\ago\tmode\ttest\1\0\4\frequest\vlaunch\ttype\ago\tname\nDebug\fprogram\f${file}\0\ago\trust\6c\targs\fprogram\0\1\0\6\frequest\vlaunch\bcwd\23${workspaceFolder}\tname\vLaunch\ttype\tlldb\18runInTerminal\1\16stopOnEntry\1\bcpp\19configurations\1\0\3\fcommand\25/usr/bin/lldb-vscode\ttype\15executable\tname\tlldb\tlldb\radapters\1\0\4\vtexthl\15DapStopped\vlinehl\5\ttext\b\nnumhl\5\1\0\4\vtexthl\16DapLogPoint\vlinehl\5\ttext\b\nnumhl\5\16DapLogPoint\1\0\4\vtexthl\18DapBreakpoint\vlinehl\5\ttext\b\nnumhl\5\26DapBreakpointRejected\1\0\4\vtexthl\18DapBreakpoint\vlinehl\5\ttext\bﳁ\nnumhl\5\27DapBreakpointCondition\1\0\4\vtexthl\18DapBreakpoint\vlinehl\5\ttext\b\nnumhl\5\18DapBreakpoint\16sign_define\afn\1\0\1\afg\f#ABE9B3\15DapStopped\16nvim_set_hl\bapi\0\17event_exited\0\21event_terminated\0\17dapui_config\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\24packadd nvim-dap-ui\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap",
    url = "git@github.com:mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\26\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0024\3\3\0005\4\14\0004\5\5\0005\6\n\0>\6\1\0055\6\v\0>\6\2\0055\6\f\0>\6\3\0055\6\r\0>\6\4\5=\5\15\4>\4\1\0035\4\17\0005\5\16\0=\5\15\4>\4\2\3=\3\18\0025\3\19\0005\4\21\0005\5\20\0=\5\22\4=\4\t\3=\3\23\0025\3\24\0=\3\25\2B\0\2\1K\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\flayouts\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\tsize\4\0����\3\aid\fwatches\1\0\2\tsize\4\0����\3\aid\vstacks\1\0\2\tsize\4\0����\3\aid\16breakpoints\1\0\2\tsize\4\0����\3\aid\vscopes\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\vremove\6d\tedit\6e\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b▸\rexpanded\b▾\nsetup\ndapui\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap-ui",
    url = "git@github.com:rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim", "nvim-navic", "lsp_signature.nvim" },
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27modules.completion.lsp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig",
    url = "git@github.com:neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    after = { "lualine.nvim" },
    config = { "\27LJ\2\n�\4\0\0\4\0\t\0\r6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\a\0005\3\6\0=\3\b\2B\0\2\1K\0\1\0\nicons\1\0\4\16depth_limit\3\0\14highlight\2\14separator\b > \26depth_limit_indicator\a..\1\0\26\18TypeParameter\t \nEvent\t \vStruct\t \15EnumMember\t \rFunction\t \vObject\t \tFile\t \vNumber\t \tNull\tﳠ \tEnum\t \bKey\t \vString\t \rProperty\tﰠ \vModule\t \14Interface\t \nClass\tﴯ \rVariable\t \nField\t \16Constructor\t \vMethod\t \rOperator\t \nArray\t \fBoolean\t \14Namespace\t \fPackage\t \rConstant\t \nsetup\15nvim-navic\frequire\18navic_silence\6g\bvim\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-navic",
    url = "git@github.com:SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0=\0\1\1K\0\1\0\bvim\nicons\1\0\5\nERROR\b\tWARN\b\tINFO\b\nDEBUG\b\nTRACE\b✎\1\0\6\vstages\nslide\18minimum_width\0032\vrender\fdefault\ftimeout\3�\15\nlevel\nTRACE\22background_colour\vNormal\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-notify",
    url = "git@github.com:rcarriga/nvim-notify"
  },
  ["nvim-scrollview"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15scrollview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-scrollview",
    url = "git@github.com:dstein64/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\n�\18\0\0\b\0C\0M6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0005\5\6\0=\5\a\4=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\0035\4\r\0005\5\14\0=\5\15\4=\4\16\0035\4\17\0005\5\18\0=\5\19\0045\5\20\0005\6\21\0=\6\22\0055\6\23\0=\6\24\5=\5\25\4=\4\15\3=\3\26\0025\3\27\0=\3\28\0025\3\29\0004\4\0\0=\4\30\3=\3\31\0024\3\0\0=\3 \0025\3!\0005\4\"\0=\4#\0034\4\0\0=\4$\3=\3%\0025\3&\0005\4'\0=\4(\0035\4)\0005\5*\0005\6,\0005\a+\0=\a-\0065\a.\0=\a/\6=\6$\5=\0050\4=\0041\0035\0042\0=\0043\3=\0034\0025\0035\0005\0046\0=\4\15\3=\0037\0025\0038\0=\0039\0025\3:\0=\3\22\0025\3;\0=\3<\0025\3=\0=\3>\0025\3?\0005\4@\0=\4A\3=\3B\2B\0\2\1K\0\1\0\blog\ntypes\1\0\b\bdev\1\bgit\1\ball\1\15copy_paste\1\fprofile\1\fwatcher\1\vconfig\1\16diagnostics\1\1\0\2\venable\1\rtruncate\1\16live_filter\1\0\2\24always_show_folders\2\vprefix\15[FILTER]: \ntrash\1\0\2\20require_confirm\2\bcmd\14gio trash\1\0\4\17show_on_dirs\2\ftimeout\3�\3\venable\2\vignore\2\24filesystem_watchers\1\0\2\venable\2\19debounce_delay\0032\16diagnostics\1\0\4\tinfo\b\nerror\b\fwarning\b\thint\b\1\0\3\17show_on_dirs\1\venable\1\19debounce_delay\0032\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\2\venable\2\vglobal\1\1\0\1\25use_system_clipboard\2\ffilters\fexclude\vcustom\1\2\0\0\14.DS_Store\1\0\1\rdotfiles\1\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\vglyphs\vfolder\1\0\b\fsymlink\b\15arrow_open\5\fdefault\b\17arrow_closed\5\topen\b\17symlink_open\b\nempty\b\15empty_open\b\bgit\1\0\a\frenamed\b\fdeleted\b\14untracked\bﲉ\vstaged\b\runstaged\b\fignored\b\runmerged\bשׂ\1\0\3\fsymlink\b\fdefault\b\rbookmark\b\tshow\1\0\4\vfolder\2\tfile\2\bgit\2\17folder_arrow\1\1\0\4\18webdev_colors\2\18symlink_arrow\n  \18git_placement\vbefore\fpadding\6 \19indent_markers\nicons\1\0\4\tedge\t│ \vcorner\t└ \titem\t│ \tnone\a  \1\0\1\venable\2\18special_files\1\6\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\19CMakeLists.txt\1\0\a\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\16group_empty\2\17add_trailing\1\25root_folder_modifier\a:e\24symlink_destination\2\tview\nfloat\20open_win_config\1\0\6\bcol\3\1\brow\3\1\vborder\frounded\vheight\3\30\nwidth\3\30\rrelative\veditor\1\0\1\venable\1\1\0\n\vnumber\1\tside\tleft\15signcolumn\byes\19relativenumber\1\21hide_root_folder\1 preserve_window_proportions\1\25centralize_selection\1\18adaptive_size\1\vheight\3\30\nwidth\3\30\1\0\r\18open_on_setup\1\27ignore_buffer_on_setup\1\17hijack_netrw\2\18hijack_cursor\2\18disable_netrw\1\25auto_reload_on_write\2\20respect_buf_cwd\2\28create_in_closed_folder\1'hijack_unnamed_buffer_when_opening\1\15update_cwd\2\fsort_by\tname\16open_on_tab\1\23open_on_setup_file\1\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-tree.lua",
    url = "git@github.com:kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow", "nvim-ts-context-commentstring", "nvim-ts-hint-textobject", "vim-matchup", "nvim-ts-autotag", "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\n�\t\0\0\f\0001\0J6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0004\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0'\3\6\0004\4\0\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0005\4\14\0=\4\15\3=\3\16\0025\3\20\0005\4\17\0005\5\18\0=\5\19\4=\4\21\0035\4\22\0005\5\23\0=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\2B\0\2\0016\0\a\0'\2'\0B\0\2\2+\1\2\0=\1(\0006\0\a\0'\2)\0B\0\2\0029\0*\0B\0\1\0026\1+\0\18\3\0\0B\1\2\4H\4\t�9\6,\0059\a,\0059\a-\a\18\t\a\0009\a.\a'\n/\0'\v0\0B\a\4\2=\a-\6F\4\3\3R\4�K\0\1\0\20git@github.com:\24https://github.com/\tgsub\burl\17install_info\npairs\23get_parser_configs\28nvim-treesitter.parsers\15prefer_git\28nvim-treesitter.install\fmatchup\1\0\1\venable\2\26context_commentstring\1\0\2\venable\2\19enable_autocmd\1\frainbow\1\0\3\19max_file_lines\3�\a\venable\2\18extended_mode\2\16textobjects\tmove\22goto_previous_end\1\0\2\a[M\17@class.outer\a[]\20@function.outer\24goto_previous_start\1\0\2\a[m\17@class.outer\a[[\20@function.outer\18goto_next_end\1\0\2\a]M\17@class.outer\a]]\20@function.outer\20goto_next_start\1\0\2\a]m\17@class.outer\a][\20@function.outer\1\0\2\14set_jumps\2\venable\2\vselect\1\0\0\fkeymaps\1\0\4\aaf\20@function.outer\aif\20@function.inner\aic\17@class.inner\aac\17@class.outer\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\bvim\1\0\1\venable\2\21ensure_installed\1\0\0\1\18\0\0\tbash\6c\bcpp\blua\ago\ngomod\tjson\tyaml\nlatex\tmake\vpython\trust\thtml\15javascript\15typescript\bvue\bcss\nsetup\28nvim-treesitter.configs\frequire\31nvim_treesitter#foldexpr()\rfoldexpr\texpr\15foldmethod\26nvim_set_option_value\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "git@github.com:nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textobjects",
    url = "git@github.com:nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\a\0\0\thtml\bxml\15javascript\20typescriptreact\20javascriptreact\bvue\nsetup\20nvim-ts-autotag\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-autotag",
    url = "git@github.com:windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-context-commentstring",
    url = "git@github.com:JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-hint-textobject"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-hint-textobject",
    url = "git@github.com:mfussenegger/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-rainbow",
    url = "git@github.com:p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "git@github.com:kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\popup.nvim",
    url = "git@github.com:nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n�\t\0\0\5\0#\00036\0\0\0009\0\1\0'\2\2\0B\0\2\0015\0\25\0005\1\6\0006\2\3\0'\4\4\0B\2\2\0029\2\5\2=\2\a\0015\2\b\0=\2\t\0015\2\18\0004\3\t\0005\4\n\0>\4\1\0035\4\v\0>\4\2\0035\4\f\0>\4\3\0035\4\r\0>\4\4\0035\4\14\0>\4\5\0035\4\15\0>\4\6\0035\4\16\0>\4\a\0035\4\17\0>\4\b\3=\3\19\2=\2\20\0015\2\21\0005\3\22\0=\3\23\2=\2\24\1=\1\26\0005\1\27\0=\1\28\0005\1\30\0005\2\29\0=\2\31\1=\1 \0006\1\3\0'\3!\0B\1\2\0029\1\"\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\15rust-tools\bdap\fadapter\1\0\0\1\0\3\fcommand\16lldb-vscode\ttype\15executable\tname\frt_lldb\vserver\1\0\1\15standalone\2\ntools\1\0\0\16crate_graph\30enabled_graphviz_backends\0017\0\0\bbmp\fcgimage\ncanon\bdot\agv\txdot\fxdot1.2\fxdot1.4\beps\bexr\bfig\agd\bgd2\bgif\bgtk\bico\tcmap\nismap\timap\ncmapx\fimap_np\rcmapx_np\bjpg\tjpeg\bjpe\bjp2\tjson\njson0\rdot_json\14xdot_json\bpdf\bpic\bpct\tpict\nplain\14plain-ext\bpng\bpov\aps\bps2\bpsd\bsgi\bsvg\tsvgz\btga\ttiff\btif\atk\bvml\tvmlz\twbmp\twebp\txlib\bx11\1\0\2\tfull\2\fbackend\bx11\18hover_actions\vborder\1\0\1\15auto_focus\1\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╰\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╯\16FloatBorder\1\3\0\0\b│\16FloatBorder\1\3\0\0\b╮\16FloatBorder\1\3\0\0\b─\16FloatBorder\1\3\0\0\b╭\16FloatBorder\16inlay_hints\1\0\n\27parameter_hints_prefix\b<- \25show_parameter_hints\2\22only_current_line\1\14highlight\fComment\tauto\2\24right_align_padding\3\a\26max_len_align_padding\3\1\18max_len_align\1\23other_hints_prefix\b=> \16right_align\1\rexecutor\1\0\1%reload_workspace_from_cargo_toml\2\rtermopen\25rust-tools/executors\frequire\27packadd nvim-lspconfig\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\rust-tools.nvim",
    url = "git@github.com:simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\rust.vim",
    url = "git@github.com:rust-lang/rust.vim"
  },
  sniprun = {
    commands = { "SnipRun", "'<,'>SnipRun" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\sniprun",
    url = "git@github.com:michaelb/sniprun"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\16pulse_fader\1\0\5\rdelay_ms\3\0\vinc_ms\3\n\nwinhl\nPMenu\nblend\3\n\nwidth\3\n\1\0\2\15show_jumps\2\rmin_jump\3\n\nsetup\nspecs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\specs.nvim",
    url = "git@github.com:edluffy/specs.nvim"
  },
  ["sqlite.lua"] = {
    load_after = {
      ["telescope-frecency.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\sqlite.lua",
    url = "git@github.com:tami5/sqlite.lua"
  },
  ["stabilize.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\stabilize.nvim",
    url = "git@github.com:luukvbaal/stabilize.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\6\20enable_backward\2\15act_as_tab\2\21ignore_beginning\1\15completion\2\21backwards_tabkey\n<A-h>\vtabkey\n<A-l>\nsetup\vtabout\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\tabout.nvim",
    url = "git@github.com:abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-frecency.nvim"] = {
    after = { "sqlite.lua", "telescope-zoxide" },
    load_after = {
      ["telescope-project.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-frecency.nvim",
    url = "git@github.com:nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    after = { "telescope-project.nvim" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-fzf-native.nvim",
    url = "git@github.com:nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    after = { "telescope-frecency.nvim" },
    load_after = {
      ["telescope-fzf-native.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-project.nvim",
    url = "git@github.com:nvim-telescope/telescope-project.nvim"
  },
  ["telescope-zoxide"] = {
    load_after = {
      ["telescope-frecency.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-zoxide",
    url = "git@github.com:jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    after = { "popup.nvim", "telescope-fzf-native.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\n/\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\16:normal! zx\bcmd\bvimM\1\1\6\1\5\0\v-\1\0\0009\1\0\1\18\3\1\0009\1\1\0015\4\3\0003\5\2\0=\5\4\4B\1\3\1+\1\2\0002\0\0�L\1\2\0\0�\tpost\1\0\0\0\fenhance\vselect�\f\1\0\t\0>\0v6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0025\1\t\0003\2\n\0=\2\v\0016\2\0\0009\2\f\2'\3\14\0=\3\r\0026\2\a\0'\4\15\0B\2\2\0029\2\16\0025\4)\0005\5\17\0005\6\18\0=\6\19\0055\6\20\0=\6\21\0055\6\22\0=\6\23\0055\6\24\0005\a\25\0=\a\26\6=\6\27\0056\6\a\0'\b\28\0B\6\2\0029\6\29\0069\6\30\6=\6\31\0056\6\a\0'\b\28\0B\6\2\0029\6 \0069\6\30\6=\6!\0056\6\a\0'\b\28\0B\6\2\0029\6\"\0069\6\30\6=\6#\0056\6\a\0'\b$\0B\6\2\0029\6%\6=\6&\0056\6\a\0'\b$\0B\6\2\0029\6'\6=\6(\5=\5*\0045\5,\0005\6+\0=\6-\0055\6.\0005\a/\0=\a0\6=\0061\5=\0052\0045\0053\0=\0014\5=\0015\5=\0016\5=\0017\5=\0018\5=\0019\5=\5:\4B\2\2\0016\2\a\0'\4\15\0B\2\2\0029\2;\2'\4-\0B\2\2\0016\2\a\0'\4\15\0B\2\2\0029\2;\2'\4<\0B\2\2\0016\2\a\0'\4\15\0B\2\2\0029\2;\2'\4=\0B\2\2\0016\2\a\0'\4\15\0B\2\2\0029\2;\2'\0041\0B\2\2\0012\0\0�K\0\1\0\vzoxide\fproject\19load_extension\fpickers\roldfiles\14live_grep\16grep_string\14git_files\15find_files\fbuffers\1\0\0\15extensions\rfrecency\20ignore_patterns\1\3\0\0\f*.git/*\f*/tmp/*\1\0\2\19show_unindexed\2\16show_scores\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\25override_file_sorter\2\14case_mode\15smart_case\nfuzzy\1\rdefaults\1\0\0\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fuzzy_file\22telescope.sorters\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\18layout_config\15horizontal\1\0\1\18preview_width\4\0����\3\1\0\1\20prompt_position\vbottom\25file_ignore_patterns\1\b\0\0\n.git/\v.cache\f%.class\n%.pdf\n%.mkv\n%.mp4\n%.zip\17path_display\1\2\0\0\rabsolute\16borderchars\1\t\0\0\6 \6 \6 \6 \6 \6 \6 \6 \1\0\a\18results_title\1\20layout_strategy\15horizontal\20selection_caret\6 \17entry_prefix\6 \18prompt_prefix\n  \20scroll_strategy\nlimit\17initial_mode\vinsert\nsetup\14telescope=C:/Users/wax5798/AppData/Local/nvim-data/lib/sqlite3.dll\21sqlite_clib_path\6g\20attach_mappings\0\1\0\1\vhidden\2\26telescope.actions.set\frequire\29packadd telescope-zoxide$packadd telescope-frecency.nvim#packadd telescope-project.nvim&packadd telescope-fzf-native.nvim\23packadd sqlite.lua\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3�)\1\15\0L\1\2\0X\1\b�9\1\0\0\a\1\2\0X\1\5�6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14direction��̙\19����\3�\1\0\0\5\0\t\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0005\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\a\0005\4\b\0B\0\4\1K\0\1\0\1\0\1\nscope\nlocal\0060\rfoldexpr\1\0\1\nscope\nlocal\vmanual\15foldmethod\26nvim_set_option_value\bapi\bvim�\2\1\0\4\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0024\3\0\0=\3\b\0026\3\t\0009\3\n\0039\3\v\3=\3\v\2B\0\2\1K\0\1\0\nshell\6o\bvim\20shade_filetypes\fon_open\0\tsize\1\0\t\19shading_factor\0061\17open_mapping\1\20insert_mappings\2\14direction\15horizontal\18close_on_exit\2\17hide_numbers\2\20shade_terminals\1\20start_in_insert\2\17persist_size\2\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\toggleterm.nvim",
    url = "git@github.com:akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle", "TroubleRefresh" },
    config = { "\27LJ\2\n�\5\0\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\nsigns\1\0\5\nerror\b\nother\b﫠\thint\b\fwarning\b\16information\b\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\frefresh\6r\16toggle_mode\6m\fpreview\6p\nclose\6q\nhover\6K\rprevious\6k\tnext\6j\19toggle_preview\6P\vcancel\n<esc>\1\0\r\nicons\2\17indent_lines\2\16fold_closed\b\rposition\vbottom\14fold_open\b\14auto_open\1\17auto_preview\2\29use_lsp_diagnostic_signs\1\15auto_close\1\14auto_fold\1\vheight\3\n\nwidth\0032\tmode\25document_diagnostics\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\trouble.nvim",
    url = "git@github.com:folke/trouble.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\undotree",
    url = "git@github.com:mbbill/undotree"
  },
  ["vim-cool"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-cool",
    url = "git@github.com:romainl/vim-cool"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-easy-align",
    url = "git@github.com:junegunn/vim-easy-align"
  },
  ["vim-eft"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-eft",
    url = "git@github.com:hrsh7th/vim-eft"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-fugitive",
    url = "git@github.com:tpope/vim-fugitive"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0K\0\1\0\31go_code_completion_enabled\27go_def_mapping_enabled\30go_doc_keywordprg_enabled\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-go",
    url = "git@github.com:fatih/vim-go"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\24\00076\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\2\0B\0\3\0029\0\4\0\15\0\0\0X\1#�6\0\5\0009\0\6\0'\2\a\0006\3\0\0009\3\1\0039\3\2\3'\5\3\0+\6\2\0B\3\3\0029\3\4\3B\0\3\0026\1\0\0009\1\1\0019\1\b\1)\3\0\0'\4\t\0005\5\n\0=\0\v\5B\1\4\0016\1\0\0009\1\1\0019\1\b\1)\3\0\0'\4\f\0005\5\r\0=\0\v\5B\1\4\0016\1\0\0009\1\1\0019\1\b\1)\3\0\0'\4\14\0005\5\15\0=\0\v\5B\1\4\0016\0\16\0'\2\17\0B\0\2\0029\0\18\0005\2\20\0005\3\19\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\23filetypes_denylist\1\v\0\0\nalpha\14dashboard\rDoomInfo\rfugitive\thelp\tnorg\rNvimTree\fOutline\vpacker\15toggleterm\14providers\1\0\2\ndelay\3d\17under_cursor\1\1\4\0\0\blsp\15treesitter\nregex\14configure\15illuminate\frequire\1\0\0\25IlluminatedWordWrite\1\0\0\24IlluminatedWordRead\abg\1\0\0\24IlluminatedWordText\16nvim_set_hl\n#%06x\vformat\vstring\15background\vVisual\24nvim_get_hl_by_name\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-illuminate",
    url = "git@github.com:RRethy/vim-illuminate"
  },
  ["vim-im-select"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\6\1\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\4�6\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0�\2\t\tlet g:im_select_get_im_cmd = [\"fcitx5-remote\"]\n\t\tlet g:im_select_default = '1'\n\t\tlet g:ImSelectSetImCmd = {\n\t\t\t\\ key ->\n\t\t\t\\ key == 1 ? ['fcitx5-remote', '-c'] :\n\t\t\t\\ key == 2 ? ['fcitx5-remote', '-o'] :\n\t\t\t\\ key == 0 ? ['fcitx5-remote', '-c'] :\n\t\t\t\\ execute(\"throw 'invalid im key'\")\n\t\t\t\\ }\n\t\t\t\bcmd\18fcitx5-remote\15executable\afn\bvim\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-im-select",
    url = "git@github.com:brglng/vim-im-select"
  },
  ["vim-matchup"] = {
    after_files = { "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-matchup\\after\\plugin\\matchit.vim" },
    config = { "\27LJ\2\n\\\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0=let g:matchup_matchparen_offscreen = {'method': 'popup'}\bcmd\bvim\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-matchup",
    url = "git@github.com:andymass/vim-matchup"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime",
    url = "git@github.com:dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\1\3\0\3\1\3\0\1\0\3\rwinblend\3\0\rposition\vbottom\vborder\tnone\nicons\1\0\3\15breadcrumb\a»\ngroup\6+\14separator\b│\fplugins\1\0\0\fpresets\1\0\0\1\0\a\17text_objects\1\bnav\1\14operators\1\fmotions\1\fwindows\1\6g\2\6z\2\nsetup\14which-key\frequire\0" },
    keys = { { "", "," } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\which-key.nvim",
    url = "git@github.com:folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    after = { "fzy-lua-native" },
    config = { "\27LJ\2\n�\6\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\6call wilder#setup({'modes': [':', '/', '?']})\ncall wilder#set_option('use_python_remote_plugin', 0)\ncall wilder#set_option('pipeline', [wilder#branch(\n\t\\ wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),\n\t\\ wilder#vim_search_pipeline(),\n\t\\ [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})]\n\t\\ )])\ncall wilder#set_option('renderer', wilder#renderer_mux({\n\t\\ ':': wilder#popupmenu_renderer({\n\t\t\\ 'highlighter': wilder#lua_fzy_highlighter(),\n\t\t\\ 'left': [wilder#popupmenu_devicons()],\n\t\t\\ 'right': [' ', wilder#popupmenu_scrollbar()]\n\t\t\\ }),\n\t\\ '/': wilder#wildmenu_renderer({\n\t\t\\ 'highlighter': wilder#lua_fzy_highlighter(),\n\t\t\\ 'apply_incsearch_fix': v:true,\n\t\t\\})\n\t\\ }))\n\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\wax5798\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\wilder.nvim",
    url = "git@github.com:gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^dap"] = "nvim-dap",
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n�\5\0\0\3\0:\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2'\1\4\0=\1\3\0006\1\5\0009\1\6\0019\1\a\1\a\1\b\0X\0012�'\1\n\0=\1\t\0'\1\f\0=\1\v\0'\1\14\0=\1\r\0'\1\16\0=\1\15\0'\1\18\0=\1\17\0'\1\20\0=\1\19\0'\1\22\0=\1\21\0'\1\24\0=\1\23\0'\1\26\0=\1\25\0'\1\28\0=\1\27\0'\1\30\0=\1\29\0'\1 \0=\1\31\0'\1\"\0=\1!\0'\1$\0=\1#\0'\1&\0=\1%\0'\1(\0=\1'\0'\1*\0=\1)\0'\1,\0=\1+\0'\1.\0=\1-\0'\1.\0=\1/\0'\0011\0=\0010\0'\0013\0=\0012\0'\0015\0=\0014\0'\0017\0=\0016\0'\0019\0=\0018\0L\0\2\0\f#161320\ncrust\f#1A1826\vmantle\f#1E1E2E\tbase\f#302D41\rsurface0\f#575268\rsurface1\rsurface2\f#6E6C7E\roverlay0\f#988BA2\roverlay1\f#C3BAC6\roverlay2\f#A6ADC8\rsubtext0\f#BAC2DE\rsubtext1\f#D9E0EE\ttext\f#C9CBFF\rlavender\f#B5E8E0\tteal\f#89DCEB\bsky\f#96CDFB\tblue\f#ABE9B3\ngreen\f#FAE3B0\vyellow\f#F8BD96\npeach\f#E8A2AF\vmaroon\f#F28FAD\bred\f#F5C2E7\tpink\f#DDB6F2\nmauve\f#F2CDCD\rflamingo\f#F5E0DC\14rosewater\nmocha\23catppuccin_flavour\6g\bvim\tNONE\tnone\16get_palette\24catppuccin.palettes\frequire:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme catppuccin\bcmd\bvim\\\1\0\4\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0003\2\5\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\fcompile\15catppuccin\frequire�\1\1\1\6\0\n\0\17\15\0\0\0X\1\14�6\1\0\0009\1\1\0019\1\2\1'\3\3\0005\4\4\0B\1\3\0016\1\0\0009\1\1\0019\1\5\1'\3\6\0005\4\a\0003\5\b\0=\5\t\4B\1\3\1K\0\1\0\rcallback\0\1\0\2\ngroup\16_catppuccin\fpattern\22PackerCompileDone\tUser\24nvim_create_autocmd\1\0\1\nclear\2\16_catppuccin\24nvim_create_augroup\bapi\bvim�\30\1\0\v\0�\1\0�\0023\0\0\0003\1\1\0006\2\2\0009\2\3\2'\3\5\0=\3\4\2\18\2\0\0B\2\1\2+\3\2\0\18\4\1\0\18\6\3\0B\4\2\0016\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\n\0005\a\t\0=\a\v\0065\a\f\0=\3\r\a6\b\2\0009\b\14\b9\b\15\b'\n\16\0B\b\2\2'\t\17\0&\b\t\b=\b\18\a=\a\19\0065\a\21\0005\b\20\0=\b\22\a5\b\23\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a5\b\29\0=\b\30\a5\b\31\0=\b \a5\b!\0=\b\"\a5\b#\0=\b$\a4\b\0\0=\b%\a4\b\0\0=\b&\a4\b\0\0=\b'\a4\b\0\0=\b(\a=\a)\0065\a*\0005\b+\0005\t-\0005\n,\0=\n.\t5\n/\0=\n0\t5\n1\0=\n2\t5\n3\0=\n4\t=\t5\b5\t7\0005\n6\0=\n.\t5\n8\0=\n0\t5\n9\0=\n2\t5\n:\0=\n4\t=\t;\b=\b<\a5\b=\0=\b>\a5\b?\0=\b@\a5\bA\0=\bB\a5\bC\0=\bD\a=\aE\0065\aG\0005\bF\0=\b\5\a=\aH\0065\a�\0005\bL\0005\tJ\0009\nI\2=\nK\t=\tM\b5\tO\0009\nN\2=\nP\t9\nQ\2=\nK\t5\nR\0=\nS\t=\tT\b5\tU\0009\nQ\2=\nP\t9\nN\2=\nK\t=\tV\b5\tX\0009\nW\2=\nP\t=\tY\b5\tZ\0009\nW\2=\nP\t=\t[\b5\t\\\0009\nW\2=\nP\t=\t]\b5\t_\0009\n^\2=\nK\t9\nW\2=\nP\t=\t`\b5\ta\0009\n^\2=\nK\t=\tb\b5\tc\0009\n^\2=\nK\t=\td\b5\te\0009\n^\2=\nK\t=\tf\b5\tg\0009\n^\2=\nK\t=\th\b5\ti\0009\n^\2=\nj\t=\tk\b5\tl\0009\nW\2=\nP\t9\nm\2=\nK\t=\tn\b5\tp\0009\no\2=\nK\t5\nq\0=\nS\t=\tr\b5\ts\0009\n^\2=\nK\t=\tt\b5\tv\0009\nu\2=\nK\t=\tw\b5\ty\0009\nx\2=\nK\t=\tz\b5\t|\0009\n{\2=\nK\t=\t}\b5\t~\0009\n{\2=\nK\t=\t\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t4\n\0\0=\nS\t=\t�\b5\t�\0009\n^\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nQ\2=\nK\t4\n\0\0=\nS\t=\t�\b5\t�\0005\n�\0=\nS\t=\t�\b5\t�\0009\n^\2=\nK\t=\t�\b5\t�\0009\nx\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\nu\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nx\2=\nK\t=\t�\b5\t�\0009\n�\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b5\t�\0009\nu\2=\nK\t5\n�\0=\nS\t=\t�\b5\t�\0009\n�\2=\nK\t=\t�\b=\b\5\a=\a�\6B\4\2\1K\0\1\0\24highlight_overrides\1\0\0\18cppTSProperty\1\0\0\18cssTSProperty\1\2\0\0\vitalic\1\0\0\14cssTSType\1\0\0\25typescriptTSProperty\1\2\0\0\vitalic\1\0\0\19javaTSConstant\1\0\0\21luaTSConstructor\1\0\0\rflamingo\15luaTSField\1\0\0\20bashTSParameter\1\2\0\0\vitalic\1\0\0\22bashTSFuncBuiltin\1\2\0\0\vitalic\1\0\0\vTSText\1\0\0\19TSTagDelimiter\1\0\0\nTSTag\1\0\0\19TSTagAttribute\1\2\0\0\vitalic\1\0\0\nmauve\15TSVariable\1\0\0\ttext\19TSPunctBracket\1\0\0\roverlay2\21TSPunctDelimiter\1\0\0\16TSNamespace\1\0\0\rTSMethod\1\0\0\1\2\0\0\vitalic\20TSKeywordReturn\1\0\0\14TSKeyword\1\0\0\22TSKeywordFunction\1\0\0\16TSParameter\1\0\0\16TSFuncMacro\1\0\0\22TSVariableBuiltin\1\2\0\0\vitalic\1\0\0\bred\19TSConstBuiltin\1\0\0\16TSException\1\0\0\npeach\18TSConstructor\1\0\0\rlavender\19TSPunctSpecial\1\0\0\vmaroon\22TSKeywordOperator\1\0\0\15TSOperator\1\0\0\bsky\14TSInclude\1\0\0\tteal\15TSProperty\1\0\0\vyellow\fTSField\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\tblue\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\tnone\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\abg\1\0\0\rsurface1\17CursorLineNr\1\0\0\afg\1\0\0\ngreen\20color_overrides\1\0\0\1\0\25\bsky\f#89DCEB\bred\f#F28FAD\tteal\f#B5E8E0\rsurface1\f#575268\rlavender\f#C9CBFF\rsurface0\f#302D41\ttext\f#D9E0EE\tbase\f#1E1E2E\rsubtext1\f#BAC2DE\vmantle\f#1A1826\rsubtext0\f#A6ADC8\ncrust\f#161320\roverlay2\f#C3BAC6\14rosewater\f#F5E0DC\roverlay1\f#988BA2\rflamingo\f#F2CDCD\roverlay0\f#6E6C7E\nmauve\f#DDB6F2\rsurface2\f#6E6C7E\tpink\f#F5C2E7\tblue\f#96CDFB\vmaroon\f#E8A2AF\npeach\f#F8BD96\vyellow\f#FAE3B0\ngreen\f#ABE9B3\17integrations\nnavic\1\0\2\14custom_bg\tNONE\fenabled\2\fneotree\1\0\3\22transparent_panel\1\14show_root\2\fenabled\1\bdap\1\0\2\14enable_ui\2\fenabled\2\21indent_blankline\1\0\2\26colored_indent_levels\1\fenabled\2\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\1\0\29\15ts_rainbow\2\vfidget\2\15treesitter\2\tmini\1\vaerial\1\vbeacon\1\roverseer\1\bcmp\2\14which_key\2\bhop\2\14telescope\2\rgitsigns\2\rmarkdown\2\fvimwiki\2\15lightspeed\1\rnvimtree\2\rlsp_saga\2\16lsp_trouble\2\14gitgutter\1\vneogit\1\14vim_sneak\1\tfern\1\vbarbar\1\vnotify\2\20symbols_outline\1\rcoc_nvim\1\tleap\1\14dashboard\2\15telekasten\1\vstyles\14variables\fstrings\ntypes\fnumbers\rbooleans\1\3\0\0\tbold\vitalic\nloops\1\2\0\0\tbold\17conditionals\1\2\0\0\tbold\14operators\1\2\0\0\tbold\rkeywords\1\2\0\0\vitalic\14functions\1\3\0\0\vitalic\tbold\15properties\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\fenabled\1\0\0\17dim_inactive\1\0\2\27transparent_background\1\16term_colors\2\1\0\3\nshade\tdark\15percentage\4��̙\3���\3\fenabled\1\nsetup\15catppuccin\frequire\nmocha\23catppuccin_flavour\6g\bvim\0\0\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\t\0\0256\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0K\0\1\0 edge_transparent_background\28edge_better_performance\18edge_show_eob edge_disable_italic_comment\23edge_enable_italic\taura\15edge_style\6g\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0=\0\1\1K\0\1\0\bvim\nicons\1\0\5\nERROR\b\tWARN\b\tINFO\b\nDEBUG\b\nTRACE\b✎\1\0\6\vstages\nslide\18minimum_width\0032\vrender\fdefault\ftimeout\3�\15\nlevel\nTRACE\22background_colour\vNormal\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: mason-tool-installer.nvim
time([[Config for mason-tool-installer.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\2\17run_on_start\2\16auto_update\1\1\b\0\0\25editorconfig-checker\vstylua\nblack\rprettier\15shellcheck\nshfmt\tvint\nsetup\25mason-tool-installer\frequire\0", "config", "mason-tool-installer.nvim")
time([[Config for mason-tool-installer.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\nm\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\fshebang\1\0\0\1\0\1\tdash\ash\nsetup\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: nord.nvim
time([[Config for nord.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\b\0\0256\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0K\0\1\0\16nord_italic#nord_enable_sidebar_background\28nord_disable_background nord_cursorline_transparent\17nord_borders\18nord_contrast\6g\bvim\0", "config", "nord.nvim")
time([[Config for nord.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Copilot lua require("packer.load")({'copilot.vim'}, { cmd = "Copilot", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleRefresh lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined Bdelete! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined Bwipeout! ++once lua require"packer.load"({'bufdelete.nvim'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapStepInto lua require("packer.load")({'nvim-dap'}, { cmd = "DapStepInto", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file UndotreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndotreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapStepOut lua require("packer.load")({'nvim-dap'}, { cmd = "DapStepOut", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapShowLog lua require("packer.load")({'nvim-dap'}, { cmd = "DapShowLog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bwipeout lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bwipeout", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapSetLogLevel lua require("packer.load")({'nvim-dap'}, { cmd = "DapSetLogLevel", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SnipRun lua require("packer.load")({'sniprun'}, { cmd = "SnipRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapContinue lua require("packer.load")({'nvim-dap'}, { cmd = "DapContinue", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapToggleBreakpoint lua require("packer.load")({'nvim-dap'}, { cmd = "DapToggleBreakpoint", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapToggleRepl lua require("packer.load")({'nvim-dap'}, { cmd = "DapToggleRepl", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapStepOver lua require("packer.load")({'nvim-dap'}, { cmd = "DapStepOver", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DapTerminate lua require("packer.load")({'nvim-dap'}, { cmd = "DapTerminate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[au CmdUndefined '<,'>SnipRun ++once lua require"packer.load"({'sniprun'}, {}, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SaveSession lua require("packer.load")({'auto-session'}, { cmd = "SaveSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bdelete lua require("packer.load")({'bufdelete.nvim'}, { cmd = "Bdelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file RestoreSession lua require("packer.load")({'auto-session'}, { cmd = "RestoreSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DeleteSession lua require("packer.load")({'auto-session'}, { cmd = "DeleteSession", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> , <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ",", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv ++once lua require("packer.load")({'csv.vim'}, { ft = "csv" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim', 'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'vim-cool', 'specs.nvim'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-cool', 'tabout.nvim', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au UIEnter * ++once lua require("packer.load")({'toggleterm.nvim'}, { event = "UIEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-lspconfig'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'wilder.nvim'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'accelerated-jk.nvim', 'alpha-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'stabilize.nvim', 'indent-blankline.nvim', 'vim-illuminate', 'vim-im-select', 'nvim-colorizer.lua', 'bufferline.nvim', 'better-escape.nvim', 'neoscroll.nvim', 'vim-eft', 'hop.nvim', 'nvim-treesitter', 'gitsigns.nvim', 'nvim-scrollview', 'fidget.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\csv.vim\ftdetect\csv.vim]], true)
vim.cmd [[source C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\csv.vim\ftdetect\csv.vim]]
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\csv.vim\ftdetect\csv.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\vim-go\ftdetect\gofiletype.vim]], true)
vim.cmd [[source C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\vim-go\ftdetect\gofiletype.vim]]
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\vim-go\ftdetect\gofiletype.vim]], false)
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]], true)
vim.cmd [[source C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]]
time([[Sourcing ftdetect script at: C:\Users\wax5798\AppData\Local\nvim-data\site\pack\packer\opt\rust.vim\ftdetect\rust.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
