local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true
-- opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. (default: '')

-- tabs
opt.showtabline = 1 -- Always show tabs (default: 1)
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
opt.expandtab = true
-- opt.autoindent = true
-- opt.breakindent = true -- Enable break indent (default: false)
-- opt.smartindent = true -- Make indenting smarter again (default: false)

-- line wrapping
opt.wrap = false
opt.linebreak = true -- Companion to wrap, don't split words (default: false)
opt.scrolloff = 4 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
opt.sidescrolloff = 8 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.mouse = "a" -- Enable mouse mode (default: '')

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')

-- backspace
opt.backspace = "indent,eol,start"

opt.fileencoding = "utf-8" -- The encoding written to a file (default: 'utf-8')
opt.swapfile = false -- Creates a swapfile (default: true)
opt.backup = false -- Creates a backup file (default: false)
opt.undofile = true -- Save undo history (default: false)
opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
opt.conceallevel = 0 -- So that `` is visible in markdown files (default: 1)

-- split windows
opt.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
opt.splitright = true -- Force all vertical splits to go to the right of current window (default: false)

opt.iskeyword:append("-")

opt.whichwrap = "bs<>[]hl" -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
opt.pumheight = 10 -- Pop up menu height (default: 0)
-- opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
