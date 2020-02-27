" Vim color file - eliraz_58
" Generated by http://bytefluent.com/vivify 2020-02-24
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "eliraz_58"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#fffcff guibg=#002b36 guisp=#002b36 gui=NONE ctermfg=15 ctermbg=23 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DiffChange -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffffff guibg=#078aba guisp=#078aba gui=NONE ctermfg=15 ctermbg=31 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#44ff1f guibg=NONE guisp=NONE gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi Title guifg=#e6bc25 guibg=#002b36 guisp=#002b36 gui=bold ctermfg=178 ctermbg=23 cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#e6c19a guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#cb7f23 guibg=#383830 guisp=#383830 gui=bold ctermfg=172 ctermbg=237 cterm=bold
hi NonText guifg=#002b36 guibg=NONE guisp=NONE gui=italic ctermfg=23 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi ErrorMsg guifg=#f0f0f0 guibg=#c93c00 guisp=#c93c00 gui=NONE ctermfg=255 ctermbg=1 cterm=NONE
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#292c2e guisp=#292c2e gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Identifier guifg=#a7ff70 guibg=NONE guisp=NONE gui=NONE ctermfg=155 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi StorageClass guifg=#44ff1f guibg=NONE guisp=NONE gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi Todo guifg=#F9F9FF guibg=#c4c93c guisp=#c4c93c gui=NONE ctermfg=189 ctermbg=185 cterm=NONE
hi Special guifg=#e6c19a guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi LineNr guifg=#046151 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#cb7f23 guibg=#383830 guisp=#383830 gui=bold ctermfg=172 ctermbg=237 cterm=bold
hi Label guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#192224 guibg=#f8ff21 guisp=#f8ff21 gui=NONE ctermfg=235 ctermbg=11 cterm=NONE
hi Search guifg=#192224 guibg=#8eff42 guisp=#8eff42 gui=underline ctermfg=235 ctermbg=155 cterm=underline
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#1da9cc guibg=NONE guisp=NONE gui=italic ctermfg=38 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#192224 guibg=#f8ff21 guisp=#f8ff21 gui=bold ctermfg=235 ctermbg=11 cterm=bold
hi Number guifg=#fa3737 guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
hi Boolean guifg=#a32748 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi Operator guifg=#bd9700 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#192224 guibg=#383830 guisp=#383830 gui=bold ctermfg=235 ctermbg=237 cterm=bold
hi WarningMsg guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#e6c19a guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Function guifg=#e6c19a guibg=NONE guisp=NONE gui=bold ctermfg=180 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#e6c19a guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#192224 guibg=#192224 guisp=#192224 gui=bold ctermfg=235 ctermbg=235 cterm=bold
hi Exception guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi Keyword guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi Type guifg=#24f0e2 guibg=NONE guisp=NONE gui=bold ctermfg=14 ctermbg=NONE cterm=bold
hi Cursor guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#e0e0e0 guibg=#c7440c guisp=#c7440c gui=NONE ctermfg=254 ctermbg=1 cterm=NONE
hi PMenu guifg=#cb7f23 guibg=#383830 guisp=#383830 gui=NONE ctermfg=172 ctermbg=237 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#23de16 guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#b0aeb0 guibg=NONE guisp=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#525252 guisp=#525252 gui=NONE ctermfg=NONE ctermbg=239 cterm=NONE
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#ffe14c guibg=NONE guisp=NONE gui=bold ctermfg=221 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#2b8cd6 guibg=NONE guisp=NONE gui=bold ctermfg=32 ctermbg=NONE cterm=bold
hi Structure guifg=#44ff1f guibg=NONE guisp=NONE gui=bold ctermfg=10 ctermbg=NONE cterm=bold
hi Macro guifg=#d10000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine guifg=#cb7f23 guibg=#383830 guisp=#383830 gui=bold ctermfg=172 ctermbg=237 cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
