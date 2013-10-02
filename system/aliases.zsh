# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias scpresume="rsync -avr --partial --progress --rsh=ssh"
alias treeview="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//–/g' -e 's/^/ /' -e 's/-/|/'"

alias storage="ssh 192.168.1.111"

alias ebayify="mogrify -resize 1600x1600"

alias dg_dev="ssh -p 2222 grid@dev.dicomgrid.com './getLatest.sh'"
alias dg_uat="ssh ubuntu@uat.dicomgrid.com './getLatest.sh'"
