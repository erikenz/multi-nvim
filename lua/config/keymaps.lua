-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

vim.g.mapleader = " "

if vim.g.vscode then
  local V = require("vscode.keybindings")

  -- https://vi.stackexchange.com/a/31887
  local nv_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true, silent = true })
  end

  local nx_keymap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { silent = true })
    vim.api.nvim_set_keymap('v', lhs, rhs, { silent = true })
  end

  --#region keymap

  -- nv_keymap('s', '}')
  -- nv_keymap('S', '{')

  -- nv_keymap('<leader>h', '^')
  -- nv_keymap('<leader>l', '$')
  -- nv_keymap('<leader>a', '%')

  -- nx_keymap('j', 'gj')
  -- nx_keymap('k', 'gk')

  -- ? whichkey
  -- TODO: add whichkey support for all keymaps
  set({ 'n', 'v' }, "<leader>", V.whichkey.show)

  --? General
  set({ 'n', 't' }, "<C-h>", V.general.goToLeftWindow)
  set({ 'n', 't' }, "<C-j>", V.general.goToUpperWindow)
  set({ 'n', 't' }, "<C-k>", V.general.goToLowerWindow)
  set({ 'n', 't' }, "<C-l>", V.general.goToRightWindow)
  set({ 'n' }, "<C-Up>", V.general.increaseWindowHeight)
  set({ 'n' }, "<C-Down>", V.general.decreaseWindowHeight)
  set({ 'n' }, "<C-Left>", V.general.decreaseWindowWidth)
  set({ 'n' }, "<C-Right>", V.general.increaseWindowWidth)
  set({ 'n', 'v', 'i' }, "<A-j>", V.general.moveDown)
  set({ 'n', 'v', 'i' }, "<A-k>", V.general.moveUp)
  set({ 'n' }, "<S-h>", V.general.prevBuffer)
  set({ 'n' }, "<S-l>", V.general.nextBuffer)
  set({ 'n' }, "[b", V.general.prevBuffer)
  set({ 'n' }, "]b", V.general.nextBuffer)
  set({ 'n' }, "<leader>bb", V.general.switchToOtherBuffer)
  set({ 'n' }, "<leader>`", V.general.switchToOtherBuffer)
  -- TODO fix or just use neovim search
  -- set({ 'n' }, "/", V.general.search)
  -- set({ 'n', 'x', 'o' }, "n", V.general.nextSearchResult) -- included
  -- set({ 'n', 'x', 'o' }, "N", V.general.prevSearchResult) -- included
  set({ 'n', 'i', 'x', 's' }, "<C-s>", V.general.saveFile)
  set({ 'n' }, "<leader>K", V.general.keywordprg)
  set({ 'n' }, "<leader>l", V.general.lazy)
  set({ 'n' }, "<leader>fn", V.general.newFile)
  set({ 'n' }, "<leader>xl", V.general.locationList)
  set({ 'n' }, "<leader>xq", V.general.quickfixList)
  --? Can't get these to work, just use <C-n> and <C-p> from vscode-neovim
  -- set({ 'n' }, "[q", V.general.previousQuickfix)
  -- set({ 'n' }, "]q", V.general.nextQuickfix)
  set({ 'n', 'v' }, "<leader>cf", V.general.format)
  set({ 'n' }, "<leader>cd", V.general.lineDiagnostics)
  set({ 'n' }, "]d", V.general.nextDiagnostic)
  set({ 'n' }, "[d", V.general.prevDiagnostic)
  set({ 'n' }, "]e", V.general.nextError)
  set({ 'n' }, "[e", V.general.prevError)
  set({ 'n' }, "]w", V.general.nextWarning)
  set({ 'n' }, "[w", V.general.prevWarning)
  set({ 'n' }, "<leader>uf", V.general.toggleAutoFormatGlobal)
  set({ 'n' }, "<leader>uF", V.general.toggleAutoFormatBuffer)
  set({ 'n' }, "<leader>us", V.general.toggleSpelling)
  set({ 'n' }, "<leader>uw", V.general.toggleWordWrap)
  set({ 'n' }, "<leader>uL", V.general.toggleRelativeLineNumbers)
  set({ 'n' }, "<leader>ul", V.general.toggleLineNumbers)
  set({ 'n' }, "<leader>ud", V.general.toggleDiagnostics)
  set({ 'n' }, "<leader>uc", V.general.toggleConceal)
  set({ 'n' }, "<leader>uh", V.general.toggleInlayHints)
  set({ 'n' }, "<leader>uT", V.general.toggleTreesitterHighlight)
  set({ 'n' }, "<leader>gg", V.general.lazygitRoot)
  set({ 'n' }, "<leader>gG", V.general.lazygitCwd)
  set({ 'n' }, "<leader>qq", V.general.quitAll)
  set({ 'n' }, "<leader>ui", V.general.inspectPos)
  set({ 'n' }, "<leader>L", V.general.lazyvimChangelog)
  set({ 'n' }, "<leader>ft", V.general.terminalRoot)
  set({ 'n' }, "<leader>fT", V.general.terminalCwd)
  set({ 'n' }, "<C-/>", V.general.terminalRoot)
  set({ 'n' }, "<C-_>", V.general.whichKeyIgnore)
  set({ 'n' }, "<esc><esc>", V.general.enterNormalMode)
  set({ 'n' }, "<C-/>", V.general.hideTerminal)
  set({ 'n' }, "<leader>ww", V.general.otherWindow)
  set({ 'n' }, "<leader>wd", V.general.deleteWindow)
  set({ 'n' }, "<leader>w-", V.general.splitWindowBelow)
  set({ 'n' }, "<leader>w|", V.general.splitWindowRight)
  set({ 'n' }, "<leader>-", V.general.splitWindowBelow)
  set({ 'n' }, "<leader>|", V.general.splitWindowRight)
  set({ 'n' }, "<leader><tab>l", V.general.lastTab)
  set({ 'n' }, "<leader><tab>f", V.general.firstTab)
  set({ 'n' }, "<leader><tab><tab>", V.general.newTab)
  set({ 'n' }, "<leader><tab>]", V.general.nextTab)
  set({ 'n' }, "<leader><tab>d", V.general.closeTab)
  set({ 'n' }, "<leader><tab>[", V.general.previousTab)

  --? LSP
  set({ 'n' }, "<leader>cl", V.lsp.lspInfo)
  set({ 'n' }, "gd", V.lsp.gotoDefinition)
  set({ 'n' }, "gr", V.lsp.references)
  set({ 'n' }, "gD", V.lsp.gotoDeclaration)
  set({ 'n' }, "gI", V.lsp.gotoImplementation)
  set({ 'n' }, "gy", V.lsp.gotoTypeDefinition)
  set({ 'n' }, "K", V.lsp.hover)
  set({ 'n' }, "gK", V.lsp.signatureHelp)
  set({ 'i' }, "<C-k>", V.lsp.signatureHelp)
  set({ 'n', 'v' }, "<leader>ca", V.lsp.codeAction)
  set({ 'n' }, "<leader>cA", V.lsp.sourceAction)
  set({ 'n' }, "<leader>cr", V.lsp.rename)

  --? Bufferline
  set({ 'n' }, "<leader>bl", V.bufferline.deleteBuffersToTheLeft)
  set({ 'n' }, "<leader>bo", V.bufferline.deleteOtherBuffers)
  set({ 'n' }, "<leader>bp", V.bufferline.togglePin)
  set({ 'n' }, "<leader>bP", V.bufferline.deleteNonPinnedBuffers)
  set({ 'n' }, "<leader>br", V.bufferline.deleteBuffersToTheRight)
  set({ 'n' }, "[b", V.bufferline.prevBuffer)
  set({ 'n' }, "]b", V.bufferline.nextBuffer)
  set({ 'n' }, "<S-h>", V.bufferline.prevBuffer)
  set({ 'n' }, "<S-l>", V.bufferline.nextBuffer)

  --? Telescope
  set({ 'n', 'v' }, "<leader>,", V.telescope.switchBuffer)

  --? Editor
  set({ 'n', 'v', 'i' }, "<M-j>", V.editor.action.moveLinesDownAction)
  set({ 'n', 'v', 'i' }, "<M-k>", V.editor.action.moveLinesUpAction)

  --? Buffers
  set({ 'n', 'v' }, "<leader>bd", V.buffer.close)
  set({ 'n', 'v' }, "<S-l>", V.buffer.next)
  set({ 'n', 'v' }, "<S-h>", V.buffer.previous)

  set({ 'n', 'v' }, ":", V.workbench.action.showCommands)

  -- set({ 'n', 'v' }, "<S-l>", workbench.action.nextEditor)
  -- set({ 'n', 'v' }, "<S-h>", workbench.action.previousEditor)
  -- set({ 'n' }, "<leader>ve", workbench.action.focusEditor)
  -- set({ 'n' }, "<leader>vl", workbench.action.moveSideBarLeft)
  -- set({ 'n' }, "<leader>vr", workbench.action.moveSideBarRight)

  -- set({ 'n', 'x' }, "<C-l>", workbench.action.navigateRight)
  -- set({ 'n', 'x' }, "<C-h>", workbench.action.navigateLeft)
  -- set({ 'n', 'x' }, "<C-k>", workbench.action.navigateUp)
  -- set({ 'n', 'x' }, "<C-j>", workbench.action.navigateDown)

  -- set({ 'n', 'v' }, "<C-Right>", workbench.action.increaseViewWidth)
  -- set({ 'n', 'v' }, "<C-Left>", workbench.action.decreaseViewWidth)
  -- set({ 'n', 'v' }, "<C-Up>", workbench.action.increaseViewHeight)
  -- set({ 'n', 'v' }, "<C-Down>", workbench.action.decreaseViewHeight)

  -- ? comment
  -- set({ 'n' }, "gcc", comment.toggleLinewise)
  -- set({ 'n' }, "gbc", comment.toggleBlockwise)
  -- set({ 'n' }, "gc", comment.toggleRegionLinewise)
  -- set({ 'n' }, 'gb', comment.toggleRegionBlockwise)
  -- set({ 'v' }, 'gc', comment.toggleVisualRegionLinewise)
  -- set({ 'v' }, 'gb', comment.toggleVisualRegionBlockwise)
  -- set({ 'n' }, "gcc", "gcc")
  -- set({ 'n' }, "gbc", "gbc")
  -- set({ 'n' }, "gc", "gc")
  -- set({ 'n' }, 'gb', "gb")
  -- set({ 'v' }, 'gc', "gc")
  -- set({ 'v' }, 'gb', "gb")

  -- set({ 'n' }, "<leader>i", editor.organizeImport)

  -- no highlight
  -- set({ 'n' }, "<leader>n", "<cmd>noh<cr>")


  -- ? terminal
  -- disable <C-/> for terminal open and bind it to the correct vscode terminal command
  del('n', '<C-/>')
  set({ 'n' }, "<C-/>", V.terminal.newExternal, { noremap = true })
  -- multi cursor

  -- error
  -- set({ 'n' }, "<leader>el", error.list)
  -- set({ 'n' }, "<leader>en", error.next)
  -- set({ 'n' }, "<leader>ep", error.previous)

  -- git
  -- set({ 'n' }, "<leader>gb", git.switch)
  -- set({ 'n' }, "<leader>gi", git.init)
  -- set({ 'n' }, "<leader>gd", git.deleteBranch)
  -- set({ 'n' }, "<leader>gf", git.fetch)
  -- set({ 'n' }, "<leader>gs", git.status)
  -- set({ 'n' }, "<leader>gp", git.pull)
  -- set({ 'n' }, "<leader>gg", git.graph)

  -- project
  -- set({ 'n' }, "<leader>pf", project.findFile)
  -- set({ 'n' }, "<leader>pp", project.switch)
  -- set({ 'n' }, "<leader>pt", project.tree)

  -- file
  -- set({ 'n', 'v' }, "<space>w", file.save)
  -- set({ 'n', 'v' }, "<space>wa", file.saveAll)
  -- set({ 'n', 'v' }, "<space>fs", file.save)
  -- set({ 'n', 'v' }, "<space>fS", file.saveAll)
  -- set({ 'n' }, "<space>ff", file.format)
  -- set({ 'n' }, "<space>fn", file.new)
  -- set({ 'n' }, "<space>ft", file.showInExplorer)
  -- set({ 'n' }, "<space>fr", file.rename)

  -- buffer/editor
  -- set({ 'n', 'v' }, "<space>c", editor.closeActive)
  -- set({ 'n', 'v' }, "<space>bc", editor.closeActive)
  -- set({ 'n', 'v' }, "<space>k", editor.closeOther)
  -- set({ 'n', 'v' }, "<space>bk", editor.closeOther)
  -- set({ 'n', 'v' }, '[a', editor.addSelection)
  -- set({ 'n', 'v' }, ']a', editor.removeSelection)

  -- toggle
  -- set({ 'n', 'v' }, "<leader>ta", toggle.toggleActivityBar)
  -- set({ 'n', 'v' }, "<leader>tz", toggle.toggleZenMode)
  -- set({ 'n', 'v' }, "<leader>ts", toggle.toggleSideBarVisibility)
  -- set({ 'n', 'v' }, "<leader>tt", toggle.theme)

  -- refactor
  -- set({ 'v' }, "<leader>r", refactor.showMenu)
  -- set({ 'n' }, "<leader>rr", symbol.rename)
  -- vim.api.nvim_set_keymap('n', '<leader>rd', 'V%d', { silent = true })
  -- vim.api.nvim_set_keymap('n', '<leader>rv', 'V%', { silent = true })

  -- bookmark
  -- set({ 'n' }, "<leader>m", bookmark.toggle)
  -- set({ 'n' }, "<leader>mt", bookmark.toggle)
  -- set({ 'n' }, "<leader>ml", bookmark.list)
  -- set({ 'n' }, "<leader>mn", bookmark.next)
  -- set({ 'n' }, "<leader>mp", bookmark.previous)

  -- set({ 'n' }, "<leader>sr", search.reference)
  -- set({ 'n' }, "<leader>sR", search.referenceInSideBar)
  -- set({ 'n' }, "<leader>sp", search.project)
  -- set({ 'n' }, "<leader>st", search.text)

  --folding
  -- set({ 'n' }, "<leader>zr", fold.openAll)
  -- set({ 'n' }, "<leader>zO", fold.openRecursive)
  -- set({ 'n' }, "<leader>zo", fold.open)
  -- set({ 'n' }, "<leader>zm", fold.all)
  -- set({ 'n' }, "<leader>zb", fold.blockComment)
  -- set({ 'n' }, "<leader>zc", fold.close)
  -- set({ 'n' }, "<leader>zg", fold.allMarkerRegion)
  -- set({ 'n' }, "<leader>zG", fold.openAllMarkerRegion)
  -- set({ 'n' }, "<leader>za", fold.toggle)

  -- set({ 'n' }, "zr", fold.openAll)
  -- set({ 'n' }, "zO", fold.openRecursive)
  -- set({ 'n' }, "zo", fold.open)
  -- set({ 'n' }, "zm", fold.all)
  -- set({ 'n' }, "zb", fold.blockComment)
  -- set({ 'n' }, "zc", fold.close)
  -- set({ 'n' }, "zg", fold.allMarkerRegion)
  -- set({ 'n' }, "zG", fold.openAllMarkerRegion)
  -- set({ 'n' }, "za", fold.toggle)
  --#endregion keymap
end
