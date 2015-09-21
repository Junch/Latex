
pandoc calculate_profit.md -o calculate_profit.pdf --smart --template=pm-template --latex-engine=xelatex -V mainfont='STHeiti'

# brew cask install pandoc
# brew cask install basictex
# cd ~
# touch .bash_profile
# vi .bash_profile
# export PATH=/usr/texbin:"$PATH"

# sudo tlmgr --self --all update
# sudo tlmgr install titling
# sudo tlmgr install lastpage
