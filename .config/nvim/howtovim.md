
<!---
██╗  ██╗ ██████╗ ██╗    ██╗    ████████╗ ██████╗     ██╗   ██╗██╗███╗   ███╗
██║  ██║██╔═══██╗██║    ██║    ╚══██╔══╝██╔═══██╗    ██║   ██║██║████╗ ████║
███████║██║   ██║██║ █╗ ██║       ██║   ██║   ██║    ██║   ██║██║██╔████╔██║
██╔══██║██║   ██║██║███╗██║       ██║   ██║   ██║    ╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██║╚██████╔╝╚███╔███╔╝       ██║   ╚██████╔╝     ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝        ╚═╝    ╚═════╝       ╚═══╝  ╚═╝╚═╝     ╚═╝
-->

# Moving

* Move around the file: **hjkl**

* Jump to the beginning of the next word: **w**

* Jump to the end of the next word: **e**

* Back to the beginning of the previous word: **b**

* Jump between paragraphs: **{** (up) and **}** (down)

* Jump half document down: **c-f**

* Jump half document up: **c-u**

# Typing

* Enter insert mode before the letter where the cursor is placed: **i**

* Enter insert mode after the letter where the cursor is placed: **a**

* Enter insert mode in the line below: **o**

* Shift line down and enter insert mode up: **O**

* Enter insert mode at the end of the line: **A**

* Enter insert mode at the beginning of the line: **I**

* Put all the selected letters/words/sentences in caps: **U**

* Delete entire word and enter insert mode: **cw**

* Select everything inside parenthesis, brackets, etc...: **vi + \$element**

* Select everything outside parenthesis, brackets, etc...: **va + \$element**

* Delete everything inside parenthesis, brackets, etc...: **di + \$element**

* Delete everything inside parenthesis... and enter insert mode: **ca + \$element**

* Set a mark: **m + G**

# Editing

* Select letter by letter: **v**

* Select entire lines: **V**

* Jump to the closest number and increase it by one unit: **c-a**

* Jump to the closest number and decrease it by one unit: **c-x**

* Format text to fit the maximum column width (selected previously): **gq**

# Commands

* Save: **:w**

* Quit/Exit: **:q**

* Save and exit: **:wq**

* Quit without saving: **:q!**

* Set maximum column width: **:set tw=number**

* Un-highlight: **:noh**

* Comment selected lines:

    1. Select lines with Visual
    2. Use replace all: **:%s/^/\$comment_char/g**

* Comment selected lines using line numbers: **:1,3s/^/\$comment_char**

* Uncomment using line numbers: :\ABs/^\$comment_char/

* Close buffer: **:bw\$number**

