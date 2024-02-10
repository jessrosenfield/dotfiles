#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#   Set Default Editor (change 'GNU Emacs' to be the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR='vim'

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------

# alias cp='cp -iv'                           # Preferred 'cp' implementation
# alias mv='mv -iv'                           # Preferred 'mv' implementation
# alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias la='ls -A'                            # Preferred 'ls' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
# alias less='less -FSRXc'                    # Preferred 'less' implementation
alias less='less -SRc'                    # Preferred 'less' implementation
cdl() { builtin cd "$@"; ll; }              # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
# alias which='type -all'                     # which:        Find executables
mkcd () { mkdir -p "$1" && cd "$1"; }       # mkcd:         Makes new Dir and jumps inside

pp() { jq -C '.' "$1" | less }


#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.            Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }



# Environment setup

export PATH="$HOME/.bin:$PATH"
fpath=(~/.zsh $fpath)

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
