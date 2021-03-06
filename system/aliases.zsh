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
alias vt-c="ssh ubuntu@pv-cl-vt4001001c.vtheart.com"
alias vt-b="ssh ubuntu@pv-cl-vt4001001c.vtheart.com"


# CP
alias cp-dev-ec2="ssh -i ~/.ssh/copatient_dev_private.pem ubuntu@dev.copatient.com"
alias cp-dev-deploy="ssh -i ~/.ssh/copatient_dev_private.pem ubuntu@dev.copatient.com ./getLatest.sh"

alias cp-prod-ec2="ssh -i ~/.ssh/copatient_prod_private.pem ubuntu@www.copatient.com"
alias cp-prod-deploy="ssh -i ~/.ssh/copatient_prod_private.pem ubuntu@www.copatient.com ./.getLatest.sh"


# tools
alias ebayify="mogrify -resize 1600x1600"

