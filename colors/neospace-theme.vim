" Vim color file
"
" Author: Luke Larsen
" URL: https://github.com/lukelarsen/neospace-theme
"
" Note: Inspired by space-vim-dark theme which was inspired by the spacemacs-dark theme.


"""""""""""""""""""""""""""""""""""""""""""
" Setup
" Languages
"     markdown
"     c
"     cpp
"     css
"     dot
"     sh
"     solidity
"     vimL
"     rust
"     json
"     xml
"     go
"     make
"     java
"     scala
"     ruby
"     html
"     python-mode
" Plugins
"     ALE
"     vim-indent-guides
"     vim-gitgutter
"     vim-signify
"     vim-starify
"     YouCompleteMe
"     vim-leader-guide
"     NERDTree
"     Tagbar
"     Vimagit
" Wrap It Up
"""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""
" 1. Setup
"""""""""""""""""""""""""""""""""""""""""""

hi clear

if v:version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name='neospace-theme'

" refer to http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
let s:color_map = {
            \   16 : '#000000',  17 : '#00005f',  18 : '#000087',  19 : '#0000af',  20 : '#0000d7',  21 : '#0000ff',
            \   22 : '#005f00',  23 : '#005f5f',  24 : '#005f87',  25 : '#005faf',  26 : '#005fd7',  27 : '#005fff',
            \   28 : '#008700',  29 : '#00875f',  30 : '#008787',  31 : '#0087af',  32 : '#0087d7',  33 : '#0087ff',
            \   34 : '#00af00',  35 : '#00af5f',  36 : '#00af87',  37 : '#00afaf',  38 : '#00afd7',  39 : '#00afff',
            \   40 : '#00d700',  41 : '#00d75f',  42 : '#00d787',  43 : '#00d7af',  44 : '#00d7d7',  45 : '#00d7ff',
            \   46 : '#00ff00',  47 : '#00ff5f',  48 : '#00ff87',  49 : '#00ffaf',  50 : '#00ffd7',  51 : '#00ffff',
            \   52 : '#5f0000',  53 : '#5f005f',  54 : '#5f0087',  55 : '#5f00af',  56 : '#5f00d7',  57 : '#5f00ff',
            \   58 : '#5f5f00',  59 : '#5f5f5f',  60 : '#5f5f87',  61 : '#5f5faf',  62 : '#5f5fd7',  63 : '#5f5fff',
            \   64 : '#5f8700',  65 : '#5f875f',  66 : '#5f8787',  67 : '#5f87af',  68 : '#5f87d7',  69 : '#5f87ff',
            \   70 : '#5faf00',  71 : '#5faf5f',  72 : '#5faf87',  73 : '#5fafaf',  74 : '#5fafd7',  75 : '#5fafff',
            \   76 : '#5fd700',  77 : '#5fd75f',  78 : '#5fd787',  79 : '#5fd7af',  80 : '#5fd7d7',  81 : '#5fd7ff',
            \   82 : '#5fff00',  83 : '#5fff5f',  84 : '#5fff87',  85 : '#5fffaf',  86 : '#5fffd7',  87 : '#5fffff',
            \   88 : '#870000',  89 : '#87005f',  90 : '#870087',  91 : '#8700af',  92 : '#8700d7',  93 : '#8700ff',
            \   94 : '#875f00',  95 : '#875f5f',  96 : '#875f87',  97 : '#875faf',  98 : '#875fd7',  99 : '#875fff',
            \   100 : '#878700', 101 : '#87875f', 102 : '#878787', 103 : '#8787af', 104 : '#8787d7', 105 : '#8787ff',
            \   106 : '#87af00', 107 : '#87af5f', 108 : '#87af87', 109 : '#87afaf', 110 : '#87afd7', 111 : '#87afff',
            \   112 : '#87d700', 113 : '#87d75f', 114 : '#87d787', 115 : '#87d7af', 116 : '#87d7d7', 117 : '#87d7ff',
            \   118 : '#87ff00', 119 : '#87ff5f', 120 : '#87ff87', 121 : '#87ffaf', 122 : '#87ffd7', 123 : '#87ffff',
            \   124 : '#af0000', 125 : '#af005f', 126 : '#af0087', 127 : '#af00af', 128 : '#af00d7', 129 : '#af00ff',
            \   130 : '#af5f00', 131 : '#af5f5f', 132 : '#af5f87', 133 : '#af5faf', 134 : '#af5fd7', 135 : '#af5fff',
            \   136 : '#af8700', 137 : '#af875f', 138 : '#af8787', 139 : '#af87af', 140 : '#af87d7', 141 : '#af87ff',
            \   142 : '#afaf00', 143 : '#afaf5f', 144 : '#afaf87', 145 : '#afafaf', 146 : '#afafd7', 147 : '#afafff',
            \   148 : '#afd700', 149 : '#afd75f', 150 : '#afd787', 151 : '#afd7af', 152 : '#afd7d7', 153 : '#afd7ff',
            \   154 : '#afff00', 155 : '#afff5f', 156 : '#afff87', 157 : '#afffaf', 158 : '#afffd7', 159 : '#afffff',
            \   160 : '#d70000', 161 : '#d7005f', 162 : '#d70087', 163 : '#d700af', 164 : '#d700d7', 165 : '#d700ff',
            \   166 : '#d75f00', 167 : '#d75f5f', 168 : '#d75f87', 169 : '#d75faf', 170 : '#d75fd7', 171 : '#d75fff',
            \   172 : '#d78700', 173 : '#d7875f', 174 : '#d78787', 175 : '#d787af', 176 : '#d787d7', 177 : '#d787ff',
            \   178 : '#d7af00', 179 : '#d7af5f', 180 : '#d7af87', 181 : '#d7afaf', 182 : '#d7afd7', 183 : '#d7afff',
            \   184 : '#d7d700', 185 : '#d7d75f', 186 : '#d7d787', 187 : '#d7d7af', 188 : '#d7d7d7', 189 : '#d7d7ff',
            \   190 : '#d7ff00', 191 : '#d7ff5f', 192 : '#d7ff87', 193 : '#d7ffaf', 194 : '#d7ffd7', 195 : '#d7ffff',
            \   196 : '#ff0000', 197 : '#ff005f', 198 : '#ff0087', 199 : '#ff00af', 200 : '#ff00d7', 201 : '#ff00ff',
            \   202 : '#ff5f00', 203 : '#ff5f5f', 204 : '#ff5f87', 205 : '#ff5faf', 206 : '#ff5fd7', 207 : '#ff5fff',
            \   208 : '#ff8700', 209 : '#ff875f', 210 : '#ff8787', 211 : '#ff87af', 212 : '#ff87d7', 213 : '#ff87ff',
            \   214 : '#ffaf00', 215 : '#ffaf5f', 216 : '#ffaf87', 217 : '#ffafaf', 218 : '#ffafd7', 219 : '#ffafff',
            \   220 : '#ffd700', 221 : '#ffd75f', 222 : '#ffd787', 223 : '#ffd7af', 224 : '#ffd7d7', 225 : '#ffd7ff',
            \   226 : '#ffff00', 227 : '#ffff5f', 228 : '#ffff87', 229 : '#ffffaf', 230 : '#ffffd7', 231 : '#ffffff',
            \
            \   232 : '#080808', 233 : '#121212', 234 : '#1c1c1c', 235 : '#262626', 236 : '#303030', 237 : '#3a3a3a',
            \   238 : '#444444', 239 : '#4e4e4e', 240 : '#585858', 241 : '#606060', 242 : '#666666', 243 : '#767676',
            \   244 : '#808080', 245 : '#8a8a8a', 246 : '#949494', 247 : '#9e9e9e', 248 : '#a8a8a8', 249 : '#b2b2b2',
            \   250 : '#bcbcbc', 251 : '#c6c6c6', 252 : '#d0d0d0', 253 : '#dadada', 254 : '#e4e4e4', 255 : '#eeeeee',
            \   }

function! s:hi(item, fg, bg, cterm_style, gui_style)
    if !empty(a:fg)
        execute printf('hi %s ctermfg=%d guifg=%s', a:item, a:fg, s:color_map[a:fg])
    endif
    if !empty(a:bg)
        execute printf('hi %s ctermbg=%d guibg=%s', a:item, a:bg, s:color_map[a:bg])
    endif
    execute printf('hi %s cterm=%s gui=%s', a:item, a:cterm_style, a:gui_style)
endfunction

let s:bg = get(g:, 'neospace_background', 235)

let s:bias = s:bg - 235

let s:bg0 = s:bg - 1
let s:bg1 = s:bg + 1
let s:bg2 = s:bg + 2
let s:bg3 = s:bg + 3
let s:bg4 = s:bg + 4

let s:fg = 249

call s:hi('Normal' , 249 , s:bg , 'None' , 'None' )
hi Normal                     guibg=#282c34

hi Cursor                     guifg=#282C34 guibg=#ECAC29

call s:hi('LineNr'            , 238+s:bias , s:bg0 , 'None' , 'None' )

call s:hi('CursorLine'        , ''  , s:bg0 , 'None' , 'None' )
call s:hi('CursorLineNr'      , 134 , s:bg0 , 'None' , 'None' )
call s:hi('CursorColumn'      , ''  , s:bg0 , 'None' , 'None')
call s:hi('ColorColumn'       , ''  , s:bg0 , 'None' , 'None')
hi LineNr                     guifg=#44505c guibg=#282c34
hi CursorLine                 guibg=#282c34
hi CursorLineNr               guibg=#282c34
hi CursorColumn               guibg=#282c34
hi ColorColumn                guibg=#282c34

" bug. opposite here.
call s:hi('StatusLine'        , 140 , s:bg2 , 'None' , 'None')
call s:hi('StatusLineNC'      , 244 , s:bg1 , 'None' , 'None')
hi StatusLineNC               guibg=#3a3a3a
call s:hi('StatusLineTerm'    , 140 , s:bg2 , 'bold' , 'bold')
call s:hi('StatusLineTermNC'  , 244 , s:bg1 , 'bold' , 'bold')

call s:hi('TabLine'           , 66  , s:bg3 , 'None' , 'None')
call s:hi('TabLineSel'        , 178 , s:bg4 , 'None' , 'None')
call s:hi('TabLineFill'       , 145 , s:bg2 , 'None' , 'None')

call s:hi('WildMenu'          , 214 , s:bg3 , 'None' , 'None')
hi WildMenu                   guifg=#FF4848

call s:hi('Boolean'           , 207 , '' , 'None' , 'None')
call s:hi('Character'         , 75  , '' , 'None' , 'None')
call s:hi('Number'            , 176 , '' , 'None' , 'None')
call s:hi('Float'             , 135 , '' , 'None' , 'None')
call s:hi('String'            , 36  , '' , 'None' , 'None')
call s:hi('Conditional'       , 68  , '' , 'bold' , 'bold')
call s:hi('Constant'          , 218 , '' , 'None' , 'None')
call s:hi('Debug'             , 225 , '' , 'None' , 'None')
call s:hi('Define'            , 177 , '' , 'None' , 'None')
call s:hi('Delimiter'         , 151 , '' , 'None' , 'None')
hi Boolean                    guifg=#FF68DD
hi Character                  guifg=#FF62B0
hi Number                     guifg=#E697E6
hi Float                      guifg=#B7B7FF
hi String                     guifg=#20af81
hi Conditional                guifg=#4f97d7
hi Constant                   guifg=#d19a66
hi Debug                      guifg=#FFC8C8
hi Define                     guifg=#D881ED
hi Delimiter                  guifg=#74BAAC

call s:hi('DiffAdd'           , ''  , 24  , 'None' , 'None')
call s:hi('DiffChange'        , 181 , 239 , 'None' , 'None')
call s:hi('DiffDelete'        , 162 , 53  , 'None' , 'None')
call s:hi('DiffText'          , ''  , 102 , 'None' , 'None')

call s:hi('Directory'         , 67  , ''  , 'bold' , 'bold')
call s:hi('Exception'         , 203 , ''  , 'bold' , 'bold')
call s:hi('Function'          , 169 , ''  , 'bold' , 'bold')
call s:hi('Identifier'        , 167 , ''  , 'None' , 'None')
call s:hi('Ignore'            , 244 , ''  , 'None' , 'None')
call s:hi('Operator'          , 111 , ''  , 'None' , 'None')
call s:hi('FoldColumn'        , 67  , s:bg1 , 'None' , 'None')
call s:hi('Folded'            , 133 , s:bg1 , 'bold' , 'bold')
hi Ignore                     guifg=#B4D1B6
hi Function                   guifg=#bc6ec5

call s:hi('PreCondit'         , 139 , '' , 'None' , 'None')
call s:hi('PreProc'           , 176 , '' , 'None' , 'None')
call s:hi('Question'          , 81  , '' , 'None' , 'None')
call s:hi('Repeat'            , 68  , '' , 'bold' , 'bold')
hi PreCondit                  guifg=#D698FE
hi PreProc                    guifg=#DD75DD
hi Question                   guifg=#F9BB00
hi Repeat                     guifg=#4f97d7

call s:hi('Keyword'           , 68  , '' , 'bold' , 'bold')
call s:hi('Label'             , 104 , '' , 'None' , 'None')
call s:hi('Macro'             , 141 , '' , 'None' , 'None')
hi Keyword                    guifg=#4f97d7
hi Label                      guifg=#DF90FF

call s:hi('Type'              , 168 , '' , 'None'      , 'None')
call s:hi('Typedef'           , 204 , '' , 'None'      , 'None')
call s:hi('Underlined'        , '' , '' , 'underline' , 'underline')
hi Type                       guifg=#ce537a
hi Typedef                    guifg=#ce537a

call s:hi('Statement'         , 68 , '' , 'None' , 'None')
hi Statement                  guifg=#4f97d7

call s:hi('Search'            , 16 , 76 , 'bold' , 'bold')
call s:hi('IncSearch'         , 16 , 76 , 'bold' , 'bold')
call s:hi('MatchParen'        , 40 , s:bg0, 'bold,underline', 'bold,underline')
hi Search                     guifg=#292b2e guibg=#86dc2f
hi MatchParen                 guifg=#00ff00 guibg=NONE

call s:hi('ModeMsg'           , 229 , '' , 'None' , 'None')

" Popup menu
call s:hi('Pmenu'             , 141 , s:bg1 , 'None' , 'None')
call s:hi('PmenuSel'          , 251 , 97  , 'None' , 'None')
call s:hi('PmenuSbar'         , 28  , 233 , 'None' , 'None')
call s:hi('PmenuThumb'        , 160 , 97  , 'None' , 'None')
hi Pmenu                      guifg=#9a9aba guibg=#34323e
hi PmenuSbar                  guifg=#C269FE guibg=#303030

" SignColumn may relate to ale sign
call s:hi('SignColumn'        , 118 , s:bg , 'None' , 'None')
call s:hi('Todo'              , 172 , s:bg , 'bold' , 'bold')
hi Todo                       guibg=NONE
hi SignColumn                 guibg=NONE

" VertSplit consistent with normal background to hide it
call s:hi('VertSplit'         , s:bg0 , '' , 'None' , 'None')
hi VertSplit                  guibg=NONE

call s:hi('Warning'           , 136 , '' , 'bold' , 'bold')
call s:hi('WarningMsg'        , 136 , '' , 'bold' , 'bold')
hi Warning                    guifg=#e8dd69 guibg=NONE
hi WarningMsg                 guifg=#e8dd69 guibg=NONE

call s:hi('Error'             , 160 , s:bg , 'bold' , 'bold')
call s:hi('ErrorMsg'          , 196 , s:bg , 'bold' , 'bold')
hi Error                      guifg=#df6c76 guibg=NONE
hi ErrorMsg                   guifg=#df6c76 guibg=NONE

call s:hi('Special'           , 169 , '' , 'None' , 'None')
call s:hi('SpecialKey'        , 59  , '' , 'None' , 'None')
call s:hi('SpecialChar'       , 171 , '' , 'bold' , 'bold')
call s:hi('SpecialComment'    , 24  , '' , 'None' , 'None')
hi Special                    guifg=#DD75DD
hi SpecialKey                 guifg=#FF73B9
hi SpecialChar                guifg=#6094DB
hi SpecialComment             guifg=#3C8380

" marks column
call s:hi('SpellBad'          , 168 , '' , 'underline'    , 'undercurl')
call s:hi('SpellCap'          , 110 , '' , 'underline'    , 'undercurl')
call s:hi('SpellLocal'        , 253 , '' , 'underline'    , 'undercurl')
call s:hi('SpellRare'         , 218 , '' , 'underline'    , 'undercurl')

call s:hi('Tag'               , 161 , ''  , 'None' , 'None')
call s:hi('Title'             , 176 , ''  , 'None' , 'None')
call s:hi('Structure'         , 68  , ''  , 'bold' , 'bold')
call s:hi('StorageClass'      , 178 , ''  , 'bold' , 'bold')
hi Tag                        guifg=#E469FE
hi Title                      guifg=#DD75DD
hi Structure                  guifg=#4f97d7
hi StorageClass               guifg=#d1951d

call s:hi('Visual'            , '' , s:bg3 , 'None' , 'None')
call s:hi('VisualNOS'         , '' , 238      , 'None' , 'None')
hi Visual                     guibg=#544A65

call s:hi('Comment'           , 30  , ''  , 'None' , 'italic')
hi Comment                    guifg=#2aa1ae

" tilde group
call s:hi('NonText'           , 241 , '' , 'None' , 'None')
hi NonText                    guifg=#534B5D

hi link qfLineNr Type

hi NSNormal                  guifg=#b2b2b2 ctermfg=249
hi NSDark1                   guifg=#3c3836 ctermfg=237
hi NSDark2                   guifg=#504945 ctermfg=239
hi NSDark3                   guifg=#665c54 ctermfg=241
hi NSDark4                   guifg=#7c6f64 ctermfg=243

hi NSAqua                    guifg=#2d9574 ctermfg=72
hi NSRed                     guifg=#f2241f ctermfg=160
hi NSBlue                    guifg=#51aced ctermfg=68
hi NSGreen                   guifg=#98c379 ctermfg=36
hi NSYellow                  guifg=#67b11d ctermfg=114
hi NSOrange                  guifg=#e5bf7e ctermfg=178
hi NSMagenta                 guifg=#df6c76 ctermfg=128
hi NSPink                    guifg=#c47cdb

hi NSAquaBold                guifg=#2d9574 ctermfg=72  gui=bold cterm=bold
hi NSBlueBold                guifg=#51aced ctermfg=68  gui=bold cterm=bold
hi NSGreenBold               guifg=#98c379 ctermfg=36  gui=bold cterm=bold
hi NSYellowBold              guifg=#67b11d ctermfg=114 gui=bold cterm=bold
hi NSOrangeBold              guifg=#e5bf7e ctermfg=137 gui=bold cterm=bold
hi NSMagentaBold             guifg=#df6c76 ctermfg=137 gui=bold cterm=bold
hi NSPinkBold                guifg=#c47cdb ctermfg=137 gui=bold cterm=bold





"""""""""""""""""""""""""""""""""""""""""""
" 2. Languages
"""""""""""""""""""""""""""""""""""""""""""

" markdown
hi link markdownH1            NSBlueBold
hi link markdownH2            NSGreenBold
hi link markdownH3            NSYellowBold
hi link markdownH4            NSOrangeBold
hi link markdownH5            NSBlue
hi link markdownH6            NSGreen
hi link mkdCode               NSYellow
hi link mkdItalic             String

" c
hi link cConstant             NSOrange

" cpp
hi cppExceptions              ctermfg=207 guifg=#CC3366 cterm=bold gui=bold
hi link cppSTLexception       cppExceptions

" css
hi link cssTagName            NSBlueBold
hi link cssProp               NSBlue
hi link cssClassName          NSPinkBold
hi link cssClassNameDot       NSPinkBold
hi link cssBraces             NSBlue
hi link cssFunctionName       NSOrange
hi link cssPositioningAttr    NSNormal
hi link cssPseudoClassId      NSMagenta

" dot
hi link dotKeyChar            Number
hi link dotType               StorageClass

" sh
hi link shSet                 NSBlueBold
hi link shLoop                NSBlueBold
hi link shFunctionKey         NSBlueBold
hi link shTestOpr             NSOrange

" solidity
hi link solContract           NSOrangeBold

" vimL
hi link vimLet                NSBlueBold
hi link vimFuncKey            NSBlueBold
hi link vimCommand            NSBlueBold
hi link vimGroup              Directory
hi link vimHiGroup            Directory

" rust
hi link rustKeyword           NSBlueBold
hi link rustModPath           NSBlue
call s:hi('rustTrait'         , 168 , '' , 'bold'      , 'bold')
hi Type                       guifg=#ce537a

" json
hi link jsonStringSQError     NSRed

" xml
hi link xmlTag                Identifier
hi link xmlEndTag             Identifier
hi link xmlTagName            Identifier

" go
hi link goMethodCall          Function
hi link goReceiverType        NSYellow
hi link goTypeConstructor     NSOrange
hi link goType                PreProc
hi link goFloats              Float
hi link goFormatSpecifier     NSBlue
hi link goPredefinedIdentifiers NSMagenta
call s:hi('goTypeName'        , 169, '', 'bold', 'bold')
call s:hi('goFunction'        , 168, '', 'bold', 'bold')

" make
hi link makeCommands          NSBlue
hi link makeSpecTarget        NSBlueBold

" java
hi link javaScopeDecl         keyword
hi link javaClassDecl         Function

" scala
hi link scalaKeyword          NSBlueBold
hi link scalaNameDefinition   NSBlueBold

" ruby
hi link rubyClass             NSBlueBold
hi link rubyDefine            NSBlueBold
hi link rubyInterpolationDelimiter Number

" html
hi link htmlSpecialTagName    NSBlue
hi link htmlTag               NSNormal
hi link htmlEndTag            NSNormal
hi link htmlArg               NSPink
hi link htmlString            NSBlue
hi link htmlH1                Normal
hi link htmlH2                Normal
hi link htmlH3                Normal
hi link htmlH4                Normal
hi link htmlH5                Normal
hi link htmlH6                Normal
hi htmlLink                   guifg=#b2b2b2 gui=underline
hi link htmlItalic            String

" python-mode
hi pythonLambdaExpr           ctermfg=105 guifg=#8787ff
hi pythonInclude              ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
hi pythonClass                ctermfg=207 guifg=#FF62B0 cterm=bold gui=bold
hi pythonParameters           ctermfg=147 guifg=#AAAAFF
hi pythonParam                ctermfg=108 guifg=#67b11d
hi pythonBrackets             ctermfg=183 guifg=#d7afff
hi pythonClassParameters      ctermfg=111 guifg=#FF5353
hi pythonSelf                 ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold

hi link pythonOperator        NSBlueBold
hi link pythonStatement       NSBlueBold

call s:hi('pythonDottedName'  , 169 , ''  , 'bold' , 'bold')
call s:hi('pythonDecorator'   , 169 , ''  , 'bold' , 'bold')

hi pythonError                ctermfg=196 guifg=#ff0000
hi pythonIndentError          ctermfg=197 guifg=#ff005f
hi pythonSpaceError           ctermfg=198 guifg=#ff0087

hi link pythonBuiltinType     NSBlue
hi pythonBuiltinObj           ctermfg=71  guifg=#5faf5f cterm=bold gui=bold
hi pythonBuiltinFunc          ctermfg=169 guifg=#d75faf cterm=bold gui=bold

hi pythonException            ctermfg=161 guifg=#CC3366 cterm=bold gui=bold





"""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""

"ALE
hi link ALEErrorSign          Error
hi link ALEWarningSign        Warning

" vim-indent-guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd            guibg=#708090 ctermbg=237
hi IndentGuidesEven           guibg=#696969 ctermbg=239

" vim-gitgutter
hi link GitGutterAdd          NSGreen
hi link GitGutterChange       NSOrange
hi link GitGutterDelete       NSMagenta
hi link GitGutterChangeDelete NSMagenta

" vim-signify
hi link SignifySignAdd        NSGreen
hi link SignifySignChange     NSAqua
hi link SignifySignDelete     NSMagenta

" vim-startify
hi link StartifyFile          Normal
hi link StartifyHeader        Define
hi link StartifySection       NSBlueBold

" YouCompleteMe
hi YcmErrorSection            guibg=#800080 guifg=#b2b2b2 ctermbg=5  ctermfg=249
hi YcmWarningSection          guibg=#5f5f87 guifg=#b2b2b2 ctermbg=60 ctermfg=249

" vim-leader-guide
hi link LeaderGuideKeys       Function
hi link LeaderGuideDesc       NSNormal
hi link LeaderGuideBrackets   NSGreen

" NERDTree
hi link NERDTreeCWD           Function
hi link NERDTreeUp            NSBlueBold
hi link NERDTreeDir           NSBlueBold
hi link NERDTreeDirSlash      NSBlueBold
hi link NERDTreeOpenable      NSBlueBold
hi link NERDTreeClosable      NSBlueBold
hi link netrwDir              NSBlueBold

" Tagbar
call s:hi('TagbarHighlight'   , 16  , 36 , 'bold' , 'bold')
call s:hi('TagbarVisibilityPublic' , 34  , '' , 'none' , 'none')
call s:hi('TagbarScope'       , 169 , '' , 'bold' , 'bold')
hi link TagbarKind            Function
hi link TagbarNestedKind      NSBlueBold

" Vimagit
hi link diffAdded             NSGreen
hi link diffRemoved           NSMagenta





"""""""""""""""""""""""""""""""""""""""""""
" Wrap It Up
"""""""""""""""""""""""""""""""""""""""""""
delf s:hi
unlet s:color_map s:bg

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark




" Normal mode                                    " fg & bg
let s:N1 = [ '#ffffff' , '#875faf' , 250  , 97 ]
let s:N2 = [ '#c47cdb' , '#33363e' , 170 , 239 ]
let s:N3 = [ '#c6c6c6' , '#33363e' , 251, 237 ]

" Insert mode                                    " fg & bg
let s:I1 = [ '#ffffff' , '#009966' , 253  , 35 ]
let s:I2 = [ '#c47cdb' , '#33363e' , 170 , 239  ]
let s:I3 = [ '#c6c6c6' , '#33363e' , 251  , 237  ]

" Visual mode                                    " fg & bg
let s:V1 = [ '#ffffff' , '#51aced' , 52 , 205 ]
let s:V2 = [ '#c47cdb' , '#33363e' , 170 , 239  ]
let s:V3 = [ '#c6c6c6' , '#33363e' , 251  , 237  ]

" Replace mode                                   " fg & bg
let s:R1 = [ '#ffffff' , '#df6c76' , 51 , 160 ]
let s:R2 = [ '#c47cdb' , '#33363e' , 170 , 239  ]
let s:R3 = [ '#c6c6c6' , '#33363e' , 251  , 237  ]

" Right info BG same color as Mode
let g:airline#themes#neospace = {}
let g:airline#themes#neospace.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#neospace.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#neospace.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#neospace.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

"Not sure what they do
let g:airline#themes#neospace.insert_replace = {
            \ 'airline_a': [ s:R1[0]   , s:I1[1]   , s:R1[1]   , s:I1[3]   , ''     ] }
let g:airline#themes#neospace.replace.airline_a = [ s:R1[0] , s:R1[1] , s:R1[2] , s:R1[3] , '' ]
let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#neospace.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Ale Errors/Warning
let g:airline#themes#neospace.normal.airline_warning =
      \ ['#000000', '#e5bf7e', 232, 92]
let g:airline#themes#neospace.normal.airline_error =
      \ ['#ffffff', '#df6c76', 232, 92]

let g:airline#themes#neospace.insert.airline_warning =
      \ ['#000000', '#e5bf7e', 232, 92]
let g:airline#themes#neospace.insert.airline_error =
      \ ['#ffffff', '#df6c76', 232, 92]

let g:airline#themes#neospace.visual.airline_warning =
      \ ['#000000', '#e5bf7e', 232, 92]
let g:airline#themes#neospace.visual.airline_error =
      \ ['#ffffff', '#df6c76', 232, 92]

let g:airline#themes#neospace.replace.airline_warning =
      \ ['#000000', '#e5bf7e', 232, 92]
let g:airline#themes#neospace.replace.airline_error =
      \ ['#ffffff', '#df6c76', 232, 92]
