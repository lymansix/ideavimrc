" set leader to <space>
let mapleader=' '

" basic settings
set clipboard=unnamed,ideaput
set history=100000
set hlsearch
set ideajoin
set ideamarks
set idearefactormode=visual
set ideastatusicon=gray
set ignorecase
set incsearch
set matchpairs
set number
set relativenumber
set scrolloff=5
set showmode
set smartcase
set undolevels=100
set visualbell
" set idearefactormode=keep
" set timeout=600
" set timeoutlen=300

" Show all the provided actions via `:actionlist`
" mapped to <leader>
" built in search looks better
nmap <Leader>/ <Action>(Find)
" leader a-
nmap <leader>at <Action>(ActivateTODOToolWindow)
nmap <Leader>am <Action>(ActivateMavenToolWindow)

" leader b-
nmap <Leader>ba <Action>(BuildArtifact)
nmap <Leader>bb <Action>(ToggleLineBreakpoint)
nmap <Leader>br <Action>(ViewBreakpoints)

" leader c-
" nnoremap <Leader>cb <Action>(CommentByBlockComment)
" nnoremap <Leader>cs <Action>(ChangeColorScheme)
nmap <Leader>cc <Action>(CommentByLineComment)
nmap <Leader>cd <Action>(ChooseDebugConfiguration)
nmap <Leader>ch <Action>(CallHierarchy)
nmap <Leader>cs <Action>(ChangeSignature)
nmap <Leader>cv <Action>(ChangeView)
vmap <Leader>cb <Action>(CommentByBlockComment)

" leader d-
nmap <Leader>de <Action>(EvaluateExpression)
nmap <Leader>di <Action>(SmartStepInto)
nmap <Leader>do <Action>(StepOver)
nmap <Leader>dr <Action>(Resume)
" Move half page faster
" nnoremap <Leader>dp <C-d>zz
" nnoremap <Leader>up <C-u>zz

" clear the highlighted search result
nnoremap <Leader><cr> :nohlsearch<CR>

" leader e- Edit .ideavimrc file
map <Leader>em <Action>(ExtractMethod)
map <Leader>ep <Action>(EditorPopupMenu)
nmap <Leader>ef <Action>(Javascript.Linters.EsLint.Fix)
nnoremap <Leader>ee :e d:/lymansix/config/idea/idea.vimrc<CR>
nnoremap <Leader>er :source d:/lymansix/config/idea/idea.vimrc<CR>

" leader f-
nmap <Leader>ff <Action>(ReformatCode)
nmap <Leader>fp <Action>(ShowFilePath)
nmap <Leader>fu <Action>(FindUsages)
nnoremap <Leader>fs :w<CR>
" AceJump Settings
" nmap <Leader>fa <Action>(AceAction)
" nmap <Leader>ft <Action>(AceTargetAction)
" nmap <Leader>fl <Action>(AceLineAction)

" leader g-
nmap <Leader>ga <Action>(GotoAction)
nmap <Leader>gc <Action>(GotoClass)
nmap <Leader>gd <Action>(GotoDeclaration)
nmap <Leader>gf <Action>(GotoFile)
nmap <Leader>gg <Action>(Generate)
nmap <Leader>gi <Action>(GotoImplementation)
nmap <Leader>gn <Action>(GotoNextError)
nmap <Leader>gp <Action>(GotoPreviousError)
nmap <Leader>gs <Action>(GotoSymbol)
nmap <Leader>gt <Action>(GotoTest)
nmap <leader>gu <Action>(GotoUrlAction)

" leader h- <cr> insert
nnoremap <Leader>hh i<cr><Esc>
" Toggle case and start typing. E.g. `<leader>iget`: `property` -> `getProperty`
map <leader>hi ~hi
" Remove selection and toggle case. E.g. `v2l<leader>u`: `getProperty` -> `property`
vmap <leader>hu d~h

nmap <Leader>ic <Action>(InspectCode)
nmap <Leader>im <Action>(ImplementMethods)

" leader i- Space insert
nnoremap <Leader>ih i<space><Esc>l
nnoremap <Leader>il a<space><Esc>h
nnoremap <Leader>ij o<space><Esc>k
nnoremap <Leader>ik O<space><Esc>j
nnoremap <Leader>iH hx
nnoremap <Leader>iL lxh
nnoremap <Leader>iJ jddk
nnoremap <Leader>iK kdd

" leader j- javadoc generator
map <leader>J Ji <ESC>
nmap <Leader>jj <Action>(javadoc.generator)
nmap <Leader>ja <Action>(javadoc.generatorAll)


" leader n-
nmap <Leader>nc <Action>(NewClass)
nmap <Leader>nd <Action>(NewDir)
nmap <Leader>nf <Action>(NewFile)
nmap <Leader>nh <Action>(NewHtmlFile)
nmap <Leader>nt :NERDTreeFocus<CR>
nmap <Leader>nv <Action>(CreateVueSingleFileComp)

nmap <Leader>oi <Action>(OptimizeImports)
nmap <Leader>om <Action>(OverrideMethods)

" leader p- project
nmap <Leader>pm <Action>(ShowPopupMenu)
nmap <leader>pp <Action>(ManageRecentProjects)
nmap <leader>ps <Action>(SelectInProjectView)

" leader q- Quit normal mode
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>

" leader r-
nmap <Leader>rc <Action>(ChooseRunConfiguration)
nmap <Leader>re <Action>(RenameElement)
nmap <Leader>rf <Action>(RenameFile)
nmap <Leader>ro <Action>(ReopenClosedTab)
nmap <Leader>rp <Action>(Replace)
nmap <Leader>rr <Action>(Rerun)
nmap <Leader>rt <Action>(RecentFiles)

" leader s-
map <Leader>se <Action>(SurroundWithEmmet)
map <Leader>sl <Action>(SurroundWithLiveTemplate)
map <Leader>sw <Action>(SurroundWith)
nmap <Leader>sn <Action>(ShowNavBar)
nmap <Leader>ss <Action>(ShowProjectStructureSettings)
nmap <Leader>su <Action>(ShowUsages)

" leader t-
nmap <Leader>tc <Action>(CloseActiveTab)
nmap <Leader>tf <Action>(ToggleFullScreen)
nmap <Leader>tl <Action>(ActivateTerminalToolWindow)
nmap <Leader>tp <Action>(TogglePresentationMode)
nmap <Leader>tt <Action>(ToggleZenMode)

" leader v-
nmap <Leader>vj <Action>(MoveTabDown)
nmap <Leader>vl <Action>(MoveTabRight)
nmap <Leader>vm <Action>(ViewMainMenu)
nmap <Leader>vv <Action>(MoveEditorToOppositeTabGroup)

" leader w- Window operation
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>w\| <C-W>v
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>ws <C-W>s
nnoremap <Leader>wv <C-W>v
nnoremap <Leader>ww <C-W>w

" cut
" vnoremap <C-x> "+d
" nnoremap <C-x> <Action>(Cut)

" Plugin settings
" mapped
set easymotion

" mapped ys cs ds S
set surround

" mapped <A-n>,<A-x>,<A-p>,g<A-n>
set multiple-cursors

" mapped gcc gc+motion v_gc
set commentary

" mapped gr grr
set ReplaceWithRegister

" text-object 'a' (argument) aa ia
set argtextobj
let g:argtextobj_pairs="[:],(:),<:>"

" provide text objects (ae and ie by default) to select the entire content of a buffer
set textobj-entire

" easy text exchange operator
set exchange

" make the yanked region apparent
set highlightedyank

" ideavimExtend autoChange input method
set keep-english-in-normal-and-restore-in-insert
" set keep-english-in-normal

" https://github.com/JetBrains/ideavim/wiki/NERDTree-support
set NERDTree

set vim-paragraph-motion
set textobj-indent
set matchit


" g command
nmap gh <Action>(Back)
nmap gl <Action>(Forward)
nmap gj <Action>(MethodDown)
nmap gk <Action>(MethodUp)
nmap gd <Action>(GotoDeclaration)
nmap gD <Action>(GotoTypeDeclaration)
nmap gi <Action>(GotoImplementation)
nmap gq <Action>(QuickJavaDoc)
nmap gp <Action>(QuickImplementations)
nmap gs <Action>(GotoSuperMethod)
nmap gy <Action>(ShowErrorDescription)
nmap g, <Action>(JumpToLastChange)
nmap g. <Action>(JumpToNextChange)
 
" Insert mode shortcut
" inoremap <C-h> <Backspace>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Delete>
" inoremap <C-a> <Home>
" inoremap <C-e> <End>
" inoremap <C-d> <Delete>

" Quit insert mode
inoremap jk <Esc>

nnoremap dd ddzz
vnoremap d dzz

" noremap <C-O> <ESC><Action>(Back)
" noremap <C-I> <ESC><Action>(Forward)
" noremap <C-D> <C-D>zz
" noremap <C-U> <C-U>zz
" move line
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi
" <nop> is no operation
" noremap <Esc> <nop>
" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

" Quit visual mode
vnoremap v <Esc>

" Move to the start of line
nnoremap H ^
vnoremap H ^

" Move to the end of line
nnoremap L $
vnoremap L $

" Redo
nnoremap U <C-r>

" Yank to the end of line
nnoremap Y y$

" Tab operation
nmap tc <Action>(CloseAllEditorsButActive)
nmap td <Action>(CloseContent)
nmap th <Action>(CloseAllToTheLeft)
nmap tl <Action>(CloseAllToTheRight)
nmap tr <Action>($TranslateAndReplaceAction)
nmap tt <Action>($ShowTranslationDialogAction)
nnoremap tj gT
nnoremap tk gt
" nnoremap td <Action>($ShowInstantTranslationDialogAction)

" IdeaVim actions
nmap [[ <Action>(MethodUp)
nmap ]] <Action>(MethodDown)

" vim handle key, use Vim handlers in normal mode and IDE handlers in insert mode
" sethandler n:vim i:ide
sethandler <C-2> a:ide
sethandler <C-6> a:ide
sethandler <C-;> a:vim
sethandler <C-A> a:ide
sethandler <C-B> a:vim
sethandler <C-C> n-v:ide i:vim
sethandler <C-D> a:vim
sethandler <C-E> a:ide
sethandler <C-F> a:vim
sethandler <C-G> a:ide
sethandler <C-H> a:ide
sethandler <C-I> a:vim
sethandler <C-J> n-i:vim
sethandler <C-K> n-i:vim
sethandler <C-L> a:ide
sethandler <C-M> a:ide
sethandler <C-N> a:vim
sethandler <C-O> a:vim
sethandler <C-P> a:vim
sethandler <C-Q> a:ide
sethandler <C-R> a:ide
sethandler <C-S-2> a:ide
sethandler <C-S-6> a:ide
sethandler <C-S-;> a:vim
sethandler <C-S> a:ide
sethandler <C-T> a:ide
sethandler <C-U> a:vim
sethandler <C-V> n:vim i:ide
sethandler <C-W> a:ide
sethandler <C-X> a:ide
sethandler <C-Y> a:ide
sethandler <C-[> n-v:ide i:vim
sethandler <C-\> a:ide
sethandler <C-]> a:ide
