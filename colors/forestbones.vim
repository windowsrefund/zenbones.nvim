if exists('g:colors_name')
    highlight clear
endif

let g:colors_name = 'forestbones'

if has('nvim') && !bones#_compat(g:colors_name)
    lua require("zenbones.util").apply_colorscheme()
    finish
endif

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
    " dark start
    " This codeblock is auto-generated by shipwright.nvim
    let g:terminal_color_0 = '#2C343A'
    let g:terminal_color_1 = '#E67C7F'
    let g:terminal_color_2 = '#A9C181'
    let g:terminal_color_3 = '#DDBD7F'
    let g:terminal_color_4 = '#7FBCB4'
    let g:terminal_color_5 = '#D69AB7'
    let g:terminal_color_6 = '#83C193'
    let g:terminal_color_7 = '#E7DCC4'
    let g:terminal_color_8 = '#45525C'
    let g:terminal_color_9 = '#ED9294'
    let g:terminal_color_10 = '#B0CE7B'
    let g:terminal_color_11 = '#EDC77A'
    let g:terminal_color_12 = '#7AC9C0'
    let g:terminal_color_13 = '#E5A7C4'
    let g:terminal_color_14 = '#7DD093'
    let g:terminal_color_15 = '#B2A790'
    highlight Normal guifg=#E7DCC4 guibg=#2C343A guisp=NONE gui=NONE cterm=NONE
    highlight! link ModeMsg Normal
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Boolean guifg=#E7DCC4 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight BufferVisible guifg=#EDE5D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#EDE5D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#EDE5D4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#83C193 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#2C343A guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#6E7B85 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#9F9580 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#ADA28B guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link Character Constant
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#2C343A guibg=#EBE2CF guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#313A41 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight CursorLineNr guifg=#E7DCC4 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#7B8E9D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#D69AB7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#E67C7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#D69AB7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#E67C7F gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#D69AB7 gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#7FBCB4 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#A9C181 gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#DDBD7F gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#E67C7F guibg=#443939 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#D69AB7 guibg=#42393D guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#7FBCB4 guibg=#393C3C guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#A9C181 guibg=#3A3C38 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#DDBD7F guibg=#3D3B38 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#3E482D guisp=NONE gui=NONE cterm=NONE
    highlight! link diffAdded DiffAdd
    highlight DiffChange guifg=NONE guibg=#304946 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffChanged DiffChange
    highlight DiffDelete guifg=NONE guibg=#643839 guisp=NONE gui=NONE cterm=NONE
    highlight! link diffRemoved DiffDelete
    highlight DiffText guifg=#E7DCC4 guibg=#456763 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#E67C7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#6E7B85 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#E7DCC4 guibg=#4B726D guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#798B9A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FoldColumn guifg=#667783 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#9CB4C6 guibg=#424D55 guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#E7DCC4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight FzfLuaBufFlagAlt guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufFlagCur guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufNr guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderBind guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderText guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaLiveSym guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaPathColNr guifg=#90A6B7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaPathLineNr FzfLuaPathColNr
    highlight FzfLuaTabMarker guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaTabTitle guifg=#83C193 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight GitSignsAdd guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#E67C7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#394147 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLine IblIndent
    highlight IblScope guifg=#515B63 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLineCurrent IblScope
    highlight Identifier guifg=#C6BAA0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#2C343A guibg=#DFB2C7 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#667783 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight LspInlayHint guifg=#6B8292 guibg=#313A41 guisp=NONE gui=NONE cterm=NONE
    highlight MiniFilesNormal guifg=NONE guibg=#18181c guisp=NONE gui=NONE cterm=NONE
    highlight MoreMsg guifg=#A9C181 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight NavicText guifg=#b4ae9c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#5D6D78 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#3B464E guisp=NONE gui=NONE cterm=NONE
    highlight Number guifg=#ADA28B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Float Number
    highlight Pmenu guifg=NONE guibg=#3B464E guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#606F7B guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#4E5B65 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#8296A5 guisp=NONE gui=NONE cterm=NONE
    highlight PreProc guifg=#83C193 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight RenderMarkdownCode guifg=NONE guibg=#313A41 guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#E7DCC4 guibg=#9E5179 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link QuickFixLine Search
    highlight! link Sneak Search
    highlight SnacksIndent guifg=#394147 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksIndentScope guifg=#515B63 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SneakLabelMask guifg=#D69AB7 guibg=#D69AB7 guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#6E7B85 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#5D6D78 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#D48688 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#D48688 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#D48688 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight Statement guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link FzfLuaBufName Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#E7DCC4 guibg=#3E4850 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight! link WinBar StatusLine
    highlight StatusLineNC guifg=#EDE5D4 guibg=#353F46 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight! link WinBarNC StatusLineNC
    highlight String guifg=#A9C181 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#E7DCC4 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#7FBCB4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#615B51 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#667783 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#2C343A guibg=#D69AB7 guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#667783 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffFile guifg=#DDBD7F guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#DDBD7F guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#D69AB7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#A9C181 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#E67C7F guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight helpHyperTextEntry guifg=#90A6B7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#C6BAA0 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#2C343A guibg=#978D79 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#C6BAA0 guibg=NONE guisp=NONE gui=underline cterm=underline
    " dark end

    if !s:italics
        " no italics dark start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Character gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics dark end
    endif
else
    " light start
    " This codeblock is auto-generated by shipwright.nvim
    let g:terminal_color_0 = '#FAF3E1'
    let g:terminal_color_1 = '#F85550'
    let g:terminal_color_2 = '#8DA200'
    let g:terminal_color_3 = '#DEA000'
    let g:terminal_color_4 = '#3A94C4'
    let g:terminal_color_5 = '#DF69BA'
    let g:terminal_color_6 = '#36A87E'
    let g:terminal_color_7 = '#4F5B62'
    let g:terminal_color_8 = '#DBC988'
    let g:terminal_color_9 = '#E6271C'
    let g:terminal_color_10 = '#758700'
    let g:terminal_color_11 = '#B98500'
    let g:terminal_color_12 = '#297CA6'
    let g:terminal_color_13 = '#CA43A3'
    let g:terminal_color_14 = '#258C67'
    let g:terminal_color_15 = '#6E7F88'
    highlight Normal guifg=#4F5B62 guibg=#FAF3E1 guisp=NONE gui=NONE cterm=NONE
    highlight! link ModeMsg Normal
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Boolean guifg=#4F5B62 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight BufferVisible guifg=#758690 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#758690 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#758690 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#36A87E guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#FAF3E1 guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#9A9071 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#798C96 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#73848D guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link Character Constant
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#FAF3E1 guibg=#4F5B62 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#F6EBC8 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight CursorLineNr guifg=#4F5B62 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#92865B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#DF69BA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#F85550 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#DF69BA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#F85550 gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#DF69BA gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#3A94C4 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#8DA200 gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#DEA000 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#F85550 guibg=#F2E5E5 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#DF69BA guibg=#F2E4EC guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#3A94C4 guibg=#E0E9F2 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#8DA200 guibg=#E1EFB0 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#DEA000 guibg=#F2E6DA guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#DDE7BD guisp=NONE gui=NONE cterm=NONE
    highlight! link diffAdded DiffAdd
    highlight DiffChange guifg=NONE guibg=#DCE3EB guisp=NONE gui=NONE cterm=NONE
    highlight! link diffChanged DiffChange
    highlight DiffDelete guifg=NONE guibg=#EEDFDF guisp=NONE gui=NONE cterm=NONE
    highlight! link diffRemoved DiffDelete
    highlight DiffText guifg=#4F5B62 guibg=#B0C3D4 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#F85550 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#9A9071 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#4F5B62 guibg=#9ACFF8 guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#7C724D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FoldColumn guifg=#A99B6A guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#5A5236 guibg=#DAC98B guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#4F5B62 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight FzfLuaBufFlagAlt guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufFlagCur guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaBufNr guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderBind guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaHeaderText guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaLiveSym guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaPathColNr guifg=#635934 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link FzfLuaPathLineNr FzfLuaPathColNr
    highlight FzfLuaTabMarker guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FzfLuaTabTitle guifg=#36A87E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight GitSignsAdd guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#F85550 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#F0E2B6 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLine IblIndent
    highlight IblScope guifg=#C6B88C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link IndentLineCurrent IblScope
    highlight Identifier guifg=#63727A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#FAF3E1 guibg=#DF69BA guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#A99B6A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight LspInlayHint guifg=#A1935F guibg=#F7EED1 guisp=NONE gui=NONE cterm=NONE
    highlight MiniFilesNormal guifg=NONE guibg=#18181c guisp=NONE gui=NONE cterm=NONE
    highlight MoreMsg guifg=#8DA200 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight NavicText guifg=#b4ae9c guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#C0B079 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#F0DC99 guisp=NONE gui=NONE cterm=NONE
    highlight Number guifg=#73848D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Float Number
    highlight Pmenu guifg=NONE guibg=#E9D795 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#B7A874 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#CFBE83 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#FCF9F1 guisp=NONE gui=NONE cterm=NONE
    highlight PreProc guifg=#36A87E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight RenderMarkdownCode guifg=NONE guibg=#F7EED1 guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#4F5B62 guibg=#EEBADB guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link QuickFixLine Search
    highlight! link Sneak Search
    highlight SnacksIndent guifg=#F0E2B6 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SnacksIndentScope guifg=#C6B88C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight SneakLabelMask guifg=#DF69BA guibg=#DF69BA guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#9A9071 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#C0B079 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#E16966 guibg=NONE guisp=#F85550 gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#E16966 guibg=NONE guisp=#F86B68 gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#E16966 guibg=NONE guisp=#DEA000 gui=undercurl cterm=undercurl
    highlight Statement guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link FzfLuaBufName Statement
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#4F5B62 guibg=#E3D191 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight! link WinBar StatusLine
    highlight StatusLineNC guifg=#758690 guibg=#F3E2AA guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight! link WinBarNC StatusLineNC
    highlight String guifg=#8DA200 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#4F5B62 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#3A94C4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#D3DFE6 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#A99B6A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#FAF3E1 guibg=#DF69BA guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#A99B6A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffFile guifg=#DEA000 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#DEA000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#DF69BA guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#8DA200 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#F85550 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight helpHyperTextEntry guifg=#635934 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#63727A guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#FAF3E1 guibg=#697982 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#63727A guibg=NONE guisp=NONE gui=underline cterm=underline
    " light end

    if !s:italics
        " no italics light start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Character gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics light end
    endif
endif

if has('terminal')
    highlight! link StatusLineTerm StatusLine
    highlight! link StatusLineTermNC StatusLineNC
    let g:terminal_ansi_colors = [
                \ g:terminal_color_0,
                \ g:terminal_color_1,
                \ g:terminal_color_2,
                \ g:terminal_color_3,
                \ g:terminal_color_4,
                \ g:terminal_color_5,
                \ g:terminal_color_6,
                \ g:terminal_color_7,
                \ g:terminal_color_8,
                \ g:terminal_color_9,
                \ g:terminal_color_10,
                \ g:terminal_color_11,
                \ g:terminal_color_12,
                \ g:terminal_color_13,
                \ g:terminal_color_14,
                \ g:terminal_color_15
                \ ]
endif
