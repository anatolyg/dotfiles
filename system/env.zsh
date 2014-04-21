# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  export EDITOR='mvim'
fi
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
#echo 'eval "$(rbenv init -)"' >> ~/.zlogin
source ~/.zlogin
