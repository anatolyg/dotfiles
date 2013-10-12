# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -Fltr --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# command shortcuts
alias scpresume="rsync -avr --partial --progress --rsh=ssh"
alias treeview="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//–/g' -e 's/^/ /' -e 's/-/|/'"

# server shortcuts
alias storage="ssh 192.168.1.111"

# DG
alias dg-dev="ssh -p 2222 grid@dev.dicomgrid.com './getLatest.sh'"
alias dg-uat="ssh ubuntu@uat.dicomgrid.com './getLatest.sh'"

# VT
alias vt-ec2="ssh -i ~/.ssh/verdande.pem ubuntu@ec2-54-214-147-101.us-west-2.compute.amazonaws.com"
alias vt-dev="ssh -i ~/.ssh/verdande.pem ubuntu@ec2-54-214-147-101.us-west-2.compute.amazonaws.com './getLatest.sh'"

# CP
alias cp-ec2="ssh -i ~/.ssh/copatient_prod_private.pem ubuntu@www.copatient.com"
alias cp-dev="ssh -i ~/.ssh/copatient_dev_private.pem ubuntu@dev.copatient.com"


# tools
alias ebayify="mogrify -resize 1600x1600"

