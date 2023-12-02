local M = {}

local set = vim.keymap.set
local del = vim.keymap.del
local vscode = require("vscode-neovim")


-- if whichkey extension is used
-- TODO: add whichkey support for all other keymaps to trigger whichkey
M.whichkey = {
  show = function()
    vscode.action("whichkey.show")
  end
}

M.general = {
  goToLeftWindow = function()
    vscode.action("workbench.action.navigateLeft")
  end,
  goToRightWindow = function()
    vscode.action("workbench.action.navigateRight")
  end,
  goToUpperWindow = function()
    vscode.action("workbench.action.navigateUp")
  end,
  goToLowerWindow = function()
    vscode.action("workbench.action.navigateDown")
  end,
  increaseWindowHeight = function()
    vscode.action("workbench.action.increaseViewHeight")
  end,
  decreaseWindowHeight = function()
    vscode.action("workbench.action.decreaseViewHeight")
  end,
  increaseWindowWidth = function()
    vscode.action("workbench.action.increaseViewWidth")
  end,
  decreaseWindowWidth = function()
    vscode.action("workbench.action.decreaseViewWidth")
  end,
  moveDown = function()
    -- TODO add count support
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.moveLinesDownAction")
  end,
  moveUp = function()
    -- TODO add count support
    vscode.action("editor.action.moveLinesUpAction")
  end,
  prevBuffer = function()
    vscode.action("workbench.action.previousEditor")
  end,
  nextBuffer = function()
    vscode.action("workbench.action.nextEditor")
  end,
  switchToOtherBuffer = function()
    vscode.action("workbench.action.nextEditor")
  end,
  -- TODO escape and clear hlsearch
  -- TODO redraw / clear hlsearch / diff update
  --? Custom search
  search = function()
    vscode.action("actions.find")
  end,
  nextSearchResult = function()
    -- vscode.action("search.action.focusNextSearchResult")
    vscode.action("editor.action.nextMatchFindAction")
  end,
  prevSearchResult = function()
    -- vscode.action("search.action.focusPreviousSearchResult")
    vscode.action("editor.action.previousMatchFindAction")
  end,
  saveFile = function()
    vscode.action("workbench.action.files.save")
  end,
  keywordprg = function()
    vscode.action("editor.action.revealDefinition")
  end,
  lazy = function()
    vscode.action("workbench.view.extensions")
  end,
  newFile = function()
    vscode.action("workbench.action.files.newUntitledFile")
  end,
  locationList = function()
    vscode.action("workbench.actions.view.problems")
  end,
  quickfixList = function()
    vscode.action("editor.action.quickFix")
  end,
  previousQuickfix = function()
    vscode.action("selectPrevSuggestion") --TODO fix
  end,
  nextQuickfix = function()
    vscode.action("selectNextSuggestion") --TODO fix
  end,
  format = function()
    vscode.action("editor.action.formatDocument")
  end,
  lineDiagnostics = function()
    local curr_line = vim.fn.line(".") - 1
    -- vscode.action("workbench.actions.view.problems")
    -- vscode.action("errorLens.toggleInfo")
    -- vscode.action("editor.action.marker.next")
    vscode.action("problems.action.open", { range = { curr_line, curr_line } })
    -- vscode.action("problems.action.open")
  end,
  nextDiagnostic = function()
    vscode.action("editor.action.marker.nextInFiles")
  end,
  prevDiagnostic = function()
    vscode.action("editor.action.marker.prev") --TODO fix
  end,
  nextError = function()
    vscode.action("editor.action.marker.next")
  end,
  prevError = function()
    vscode.action("editor.action.marker.prev")
  end,
  nextWarning = function()
    vscode.action("workbench.action.showErrorsWarnings")
  end,
  prevWarning = function()
    vscode.action("")
  end,
  toggleAutoFormatGlobal = function()
    vscode.update_config("editor.formatOnType", not vscode.get_config("editor.formatOnType"))
  end,
  toggleAutoFormatBuffer = function()
    -- not possible I guess
    vscode.action("")
  end,
  toggleSpelling = function()
    vscode.action("cSpell.toggleEnableSpellChecker")
  end,
  toggleWordWrap = function()
    vscode.update_config("editor.wordWrap", not vscode.get_config("editor.wordWrap"))
  end,
  toggleRelativeLineNumbers = function()
    vscode.update_config("editor.lineNumbers", vscode.get_config("editor.lineNumbers") == "on" and "relative" or "on")
  end,
  toggleLineNumbers = function()
    vscode.update_config("editor.lineNumbers", vscode.get_config("editor.lineNumbers") == "on" and "off" or "on")
  end,
  toggleDiagnostics = function()
    vscode.action("")
  end,
  toggleConceal = function()
    vscode.action("")
  end,
  toggleInlayHints = function()
    vscode.update_config("editor.inlayHints.enabled", not vscode.get_config("editor.inlayHints.enabled"))
    vscode.action("")
  end,
  toggleTreesitterHighlight = function()
    vscode.action("")
  end,
  lazygitRoot = function()
    vscode.action("")
  end,
  lazygitCwd = function()
    vscode.action("")
  end,
  quitAll = function()
    vscode.action("")
  end,
  inspectPos = function()
    vscode.action("")
  end,
  lazyvimChangelog = function()
    vscode.action("")
  end,
  terminalRoot = function()
    vscode.action("")
  end,
  terminalCwd = function()
    vscode.action("")
  end,
  whichKeyIgnore = function()
    vscode.action("")
  end,
  enterNormalMode = function()
    vscode.action("")
  end,
  hideTerminal = function()
    vscode.action("")
  end,
  otherWindow = function()
    vscode.action("")
  end,
  deleteWindow = function()
    vscode.action("")
  end,
  splitWindowBelow = function()
    vscode.action("")
  end,
  splitWindowRight = function()
    vscode.action("")
  end,
  lastTab = function()
    vscode.action("")
  end,
  firstTab = function()
    vscode.action("")
  end,
  newTab = function()
    vscode.action("")
  end,
  nextTab = function()
    vscode.action("")
  end,
  closeTab = function()
    vscode.action("")
  end,
  previousTab = function()
    vscode.action("")
  end,
}

M.lsp = {
  lspInfo = function()
    vscode.action("")
  end,
  gotoDefinition = function()
    vscode.action("")
  end,
  references = function()
    vscode.action("")
  end,
  gotoDeclaration = function()
    vscode.action("")
  end,
  gotoImplementation = function()
    vscode.action("")
  end,
  gotoTypeDefinition = function()
    vscode.action("")
  end,
  hover = function()
    vscode.action("")
  end,
  signatureHelp = function()
    vscode.action("")
  end,
  codeAction = function()
    vscode.action("")
  end,
  sourceAction = function()
    vscode.action("")
  end,
  rename = function()
    vscode.action("")
  end,
}

M.bufferline = {
  deleteBuffersToTheLeft = function()
    vscode.action("")
  end,
  deleteOtherBuffers = function()
    vscode.action("")
  end,
  togglePin = function()
    vscode.action("")
  end,
  deleteNonPinnedBuffers = function()
    vscode.action("")
  end,
  deleteBuffersToTheRight = function()
    vscode.action("")
  end,
  prevBuffer = function()
    vscode.action("")
  end,
  nextBuffer = function()
    vscode.action("")
  end,
}

M.telescope = {
  switchBuffer = function()
    vscode.action("workbench.action.showAllEditors")
  end
}

M.workbench = {
  action = {
    showCommands = function()
      -- vscode.action("workbench.action.showCommands")
      vscode.action("workbench.action.showCommands")
    end,
    focusEditor = function()
      -- vscode.action("workbench.action.focusActiveEditorGroup")
      vscode.action("workbench.action.focusActiveEditorGroup")
    end,
    moveSideBarRight = function()
      -- vscode.action("workbench.action.moveSideBarRight")
      vscode.action("workbench.action.moveSideBarRight")
    end,
    moveSideBarLeft = function()
      -- vscode.action("workbench.action.moveSideBarLeft")
      vscode.action("workbench.action.moveSideBarLeft")
    end,
    navigateDown = function()
      vscode.action("workbench.action.navigateDown")
    end,
    navigateUp = function()
      vscode.action("workbench.action.navigateUp")
    end,
    navigateLeft = function()
      vscode.action("workbench.action.navigateLeft")
    end,
    navigateRight = function()
      vscode.action("workbench.action.navigateRight")
    end,
    closeActiveEditor = function()
      vscode.action("workbench.action.closeActiveEditor")
    end,
    nextEditor = function()
      vscode.action("workbench.action.nextEditor")
    end,
    previousEditor = function()
      vscode.action("workbench.action.previousEditor")
    end,
    moveEditorLeftInGroup = function()
      vscode.action("workbench.action.moveEditorLeftInGroup")
    end,
    moveEditorRightInGroup = function()
      vscode.action("workbench.action.moveEditorRightInGroup")
    end,
    decreaseViewWidth = function()
      vscode.action("workbench.action.decreaseViewWidth")
    end,
    increaseViewWidth = function()
      vscode.action("workbench.action.increaseViewWidth")
    end,
    decreaseViewHeight = function()
      vscode.action("workbench.action.decreaseViewHeight")
    end,
    increaseViewHeight = function()
      vscode.action("workbench.action.increaseViewHeight")
    end,
  }
}

-- configured to replicate Comment.nvim https://github.com/numToStr/Comment.nvim
M.comment = {
  -- selected = function()
  --   vscode.action("editor.action.commentLine", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  -- end,
  -- toggleCurrentLineLinewise = function()
  --   vscode.action("editor.action.commentLine")
  -- end,
  -- toggleCurrentLineBlockwise = function()
  --   local curr_line = vim.fn.line(".") - 1
  --   vscode.action("editor.action.blockComment", { range = { curr_line, curr_line + vim.v.count } })
  -- end,
  toggleLinewise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.commentLine", { range = { curr_line, curr_line + vim.v.count } })
  end,
  toggleBlockwise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.blockComment", { range = { curr_line, curr_line + vim.v.count - 1 } })
  end,
  toggleRegionLinewise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.commentLine", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
  toggleRegionBlockwise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.blockComment", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
  toggleVisualRegionLinewise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.commentLine", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
  toggleVisualRegionBlockwise = function()
    local curr_line = vim.fn.line(".") - 1
    vscode.action("editor.action.blockComment", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
}

M.file = {
  new = function()
    -- vscode.action("workbench.explorer.fileView.focus")
    -- vscode.action("explorer.newFile")
    vscode.action("workbench.action.fileView.focus")
    vscode.action("explorer.newFile")
  end,

  save = function()
    -- vscode.action("workbench.action.files.save")
    vscode.action("workbench.action.files.save")
  end,

  saveAll = function()
    -- vscode.action("workbench.action.files.saveAll")
    vscode.action("workbench.action.files.saveAll")
  end,

  format = function()
    -- vscode.action("editor.action.formatDocument")
    vscode.action("editor.action.formatDocument")
  end,

  showInExplorer = function()
    -- vscode.action("workbench.files.action.showActiveFileInExplorer")
    vscode.action("workbench.files.action.showActiveFileInExplorer")
  end,

  rename = function()
    -- vscode.action("workbench.files.action.showActiveFileInExplorer")
    -- vscode.action("renameFile")
    vscode.action("workbench.files.action.showActiveFileInExplorer")
    vscode.action("renameFile")
  end
}

M.error = {
  list = function()
    -- vscode.action("workbench.actions.view.problems")
    vscode.action("workbench.actions.view.problems")
  end,
  next = function()
    -- vscode.action("editor.action.marker.next")
    vscode.action("editor.action.marker.next")
  end,
  previous = function()
    -- vscode.action("editor.action.marker.prev")
    vscode.action("editor.action.marker.prev")
  end,
}

M.editor = {
  closeActive = function()
    -- vscode.action("workbench.action.closeActiveEditor")
    vscode.action("workbench.action.closeActiveEditor")
  end,
  closeOther = function()
    -- vscode.action("workbench.action.closeOtherEditors")
    vscode.action("workbench.action.closeOtherEditors")
  end,
  organizeImport = function()
    -- vscode.action("editor.action.organizeImports")
    vscode.action("editor.action.organizeImports")
  end,
  addSelection = function()
    vscode.action('editor.action.addSelectionToNextFindMatch', { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
  removeSelection = function()
    vscode.action('editor.action.removeSelectionFromNextFindMatch')
  end,
  action = {
    moveLinesDownAction = function()
      vscode.action("editor.action.moveLinesDownAction")
    end,
    moveLinesUpAction = function()
      vscode.action("editor.action.moveLinesUpAction")
    end,
  }
}
M.ui = {
  toggleActivityBar = function()
    -- vscode.action("workbench.action.toggleActivityBarVisibility")
    vscode.action("workbench.action.toggleActivityBarVisibility")
  end,
  toggleSideBarVisibility = function()
    -- vscode.action("workbench.action.toggleSidebarVisibility")
    vscode.action("workbench.action.toggleSidebarVisibility")
  end,
  toggleZenMode = function()
    -- vscode.action("workbench.action.toggleZenMode")
    vscode.action("workbench.action.toggleZenMode")
  end,
  theme = function()
    -- vscode.action("workbench.action.selectTheme")
    vscode.action("workbench.action.selectTheme")
  end,
}

M.symbol = {
  rename = function()
    -- vscode.action("editor.action.rename")
    vscode.action("editor.action.rename")
  end,
}

-- if bookmark extension is used
M.bookmark = {
  toggle = function()
    -- vscode.action("bookmarks.toggle")
    vscode.action("bookmarks.toggle")
  end,
  list = function()
    -- vscode.action("bookmarks.list")
    vscode.action("bookmarks.list")
  end,
  previous = function()
    -- vscode.action("bookmarks.jumpToPrevious")
    vscode.action("bookmarks.jumpToPrevious")
  end,
  next = function()
    -- vscode.action("bookmarks.jumpToNext")
    vscode.action("bookmarks.jumpToNext")
  end,
}

M.search = {
  reference = function()
    vscode.action("editor.action.referenceSearch.trigger")
  end,
  referenceInSideBar = function()
    vscode.action("references-view.find")
  end,
  project = function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
    vscode.action("workbench.action.findInFiles")
  end,
  text = function()
    vscode.action("workbench.action.findInFiles")
  end,
}

M.project = {
  findFile = function()
    vscode.action("workbench.action.quickOpen")
  end,
  switch = function()
    vscode.action("workbench.action.openRecent")
  end,
  tree = function()
    vscode.action("workbench.view.explorer")
  end,
}

M.git = {
  init = function()
    vscode.action("git.init")
  end,
  status = function()
    vscode.action("workbench.view.scm")
  end,
  switch = function()
    vscode.action("git.checkout")
  end,
  deleteBranch = function()
    vscode.action("git.deleteBranch")
  end,
  push = function()
    vscode.action("git.push")
  end,
  pull = function()
    vscode.action("git.pull")
  end,
  fetch = function()
    vscode.action("git.fetch")
  end,
  commit = function()
    vscode.action("git.commit")
  end,
  publish = function()
    vscode.action("git.publish")
  end,

  -- if gitlens installed
  graph = function()
    vscode.action("gitlens.showGraphPage")
  end,
}

M.fold = {
  toggle = function()
    vscode.action("editor.toggleFold")
  end,

  all = function()
    vscode.action("editor.foldAll")
  end,
  openAll = function()
    vscode.action("editor.unfoldAll")
  end,

  close = function()
    vscode.action("editor.fold")
  end,
  open = function()
    vscode.action("editor.unfold")
  end,
  openRecursive = function()
    vscode.action("editor.unfoldRecursively")
  end,

  blockComment = function()
    vscode.action("editor.foldAllBlockComments")
  end,

  allMarkerRegion = function()
    vscode.action("editor.foldAllMarkerRegions")
  end,
  openAllMarkerRegion = function()
    vscode.action("editor.unfoldAllMarkerRegions")
  end,
}

M.refactor = {
  showMenu = function()
    vscode.action("editor.action.refactor")
  end,
}

M.terminal = {
  newExternal = function()
    vscode.action("workbench.action.terminal.openNativeConsole")
  end,
}

M.multiCursor = {
  addSelection = function()
    return 'mciw*<Cmd>nohl<CR>'
  end,
}

M.navigate = {
  right = function()
    vscode.action('workbench.action.navigateRight')
  end,
  left = function()
    vscode.action('workbench.action.navigateLeft')
  end,
  up = function()
    vscode.action('workbench.action.navigateUp')
  end,
  down = function()
    vscode.action('workbench.action.navigateDown')
  end,
}

M.buffer = {
  next = function()
    vscode.action('workbench.action.nextEditor')
  end,
  previous = function()
    vscode.action('workbench.action.previousEditor')
  end,
  close = function()
    vscode.action('workbench.action.closeActiveEditor')
  end,
  closeOthers = function()
    vscode.action('workbench.action.closeOtherEditors')
  end,
  closeAll = function()
    vscode.action('workbench.action.closeAllEditors')
  end,
  closeAllButPinned = function()
    vscode.action('workbench.action.closeEditorsInOtherGroups')
  end,
  nextInGroup = function()
    vscode.action('workbench.action.nextEditorInGroup')
  end,
  previousInGroup = function()
    vscode.action('workbench.action.previousEditorInGroup')
  end,
  moveLeft = function()
    vscode.action('workbench.action.moveEditorLeftInGroup')
  end,
  moveRight = function()
    vscode.action('workbench.action.moveEditorRightInGroup')
  end,
  moveGroupLeft = function()
    vscode.action('workbench.action.moveActiveEditorGroupLeft')
  end,
  moveGroupRight = function()
    vscode.action('workbench.action.moveActiveEditorGroupRight')
  end,
  splitDown = function()
    vscode.action('workbench.action.splitEditorDown')
  end,
  splitUp = function()
    vscode.action('workbench.action.splitEditorUp')
  end,
  splitLeft = function()
    vscode.action('workbench.action.splitEditorLeft')
  end,
  splitRight = function()
    vscode.action('workbench.action.splitEditorRight')
  end,
  focusLeft = function()
    vscode.action('workbench.action.focusLeftGroup')
  end,
  focusRight = function()
    vscode.action('workbench.action.focusRightGroup')
  end,
  focusAbove = function()
    vscode.action('workbench.action.focusAboveGroup')
  end,
  focusBelow = function()
    vscode.action('workbench.action.focusBelowGroup')
  end,
  focusFirst = function()
    vscode.action('workbench.action.focusFirstEditorGroup')
  end,
  focusLast = function()
    vscode.action('workbench.action.focusLastEditorGroup')
  end,
  new = function()
    vscode.action('workbench.action.files.newUntitledFile')
  end,
  nextChanged = function()
    vscode.action('workbench.action.nextChangeMarker')
  end,

}

return M
