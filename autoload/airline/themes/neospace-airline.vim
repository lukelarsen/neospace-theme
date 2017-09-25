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
