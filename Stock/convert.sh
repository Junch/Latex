
pandoc profit1.md -o profit1.pdf --smart --template=pm-template --latex-engine=xelatex -V mainfont='STHeiti'

# brew cask install pandoc
# brew cask install basictex
# cd ~
# touch .bash_profile
# vi .bash_profile
# export PATH=/usr/texbin:"$PATH"
# source ~/.bash_profile

# sudo tlmgr --self --all update
# sudo tlmgr install titling
# sudo tlmgr install lastpage
