
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

alias pacman="ssh root@pacman.creativeintent.co.uk"
alias samus="ssh root@samus.creativeintent.co.uk"
alias bowser="ssh root@bowser.creativeintent.co.uk"
alias toad="ssh root@toad.creativeintent.co.uk"
alias luigi="ssh root@luigi.creativeintent.co.uk"
alias clyde="ssh root@clyde.creativeintent.co.uk"

alias anderlecht="ssh root@anderlecht.inthedugouts.com"

# some handy shortcuts
alias ss='script/server'
alias sc='script/console'
alias mm='/usr/bin/mate'
alias sw='sass --watch public/stylesheets:public/stylesheets'
alias ttl='tail -f log/test.log'

alias brps='brp && ss'
alias lbps='lbp && ss'
alias clps='clp && ss'
alias bfps='bfp && ss'
alias mcps='mcp && ss'
alias pcaps='pcap && ss'
alias brips='brip && ss'
alias br4sps='br4sp && ss'
alias brp='cd ~/PCS/rails/breadportal'
alias brip='cd ~/PCS/rails/britsportal'
alias lbp='cd ~/PCS/rails/lebaraportal'
alias clp='cd ~/PCS/rails/clearcashportal'
alias bfp='cd ~/PCS/rails/breadfxportal'
alias mcp='cd ~/PCS/rails/mcgiftcardportal'
alias pcap='cd ~/PCS/rails/pcscentraladminportal'
alias br4sp='cd ~/PCS/rails/bread4scrapportal'

alias tu='ruby vendor/plugins/pcs_core/test/scripts/run_units.rb'
alias ti='ruby vendor/plugins/pcs_core/test/scripts/run_integrations.rb'

alias lbpv='lbp && mvim .'
alias brpv='brp && mvim .'

alias bigv='/Applications/BigV.app/Contents/run.command;'
