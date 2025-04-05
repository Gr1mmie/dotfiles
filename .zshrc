# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/antigen.zsh

antigen theme romkatv/powerlevel10k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle extract
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# tmux setup
if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
  # start new session on terminal startup
  tmux attach -t hack || tmux new-session -d -s hack
  # start btop in new window
  tmux new-window -d -n:btop 'btop'
  # create open window for gocheat
  tmux new-window -d -n:chsht 'gocheat'
  # move windows around
  tmux swap-window -t 2 -s 1
  tmux swap-window -t 3 -s 2
  # attach to new session
  tmux attach -d -t hack

  exit
fi

# aliases
# [ALIASES GO HERE]
