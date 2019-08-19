# Vertica Aliases
alias at='/opt/vertica/bin/admintools -t '
alias atvc='/opt/vertica/bin/admintools -t view_cluster'
alias vv='/opt/vertica/bin/vertica -V'
alias vps='ps -ef | grep vertica '

# Quick cd to common directories.
alias VT_Scenario='cd /scratch_b/qa/vertica/QA/VT_Scenario'
alias Stress_VT='cd /scratch_b/qa/vertica/QA/Stress_VT'
alias QARegres='cd /scratch_b/qa/vertica/SQLTest/QARegres'
alias SQLTest='cd /scratch_b/qa/vertica/SQLTest'
alias QAstress='cd /scratch_b/qa/vertica/SQLTest/QAstress'
alias Scratch='cd /scratch_b/qa/'
alias Nimbus='cd /scratch_b/qa/vertica/QA/tools/nimbus'

# Helpful tools/utils
alias t='tree -DFhC -L 2'

# Macbook uses G instead of --color
host=$(hostname)
if [ "$host" == "Greyjoy" ]; then
	alias ls='ls -lrtG'
	alias sl='ls -lrtG'
	alias la='ls -laG'
else
	alias ls='ls -lrt --color=auto'
	alias sl='ls -lrt --color=auto'
	alias la='ls -la --color=auto'
fi

alias ..='cd ..'
alias ports='netstat -tulanp'
# Same as sudo !!
alias fuck='sudo $(history -p \!\!)'
# Minio client config directory differs on most Vertica clusters
alias mc='/scratch_b/qa/vertica/QA/tools/nimbus/mc'

# Env config
alias vim='vim -u ~/.packard_dotfiles/vimrc_gpackard '
alias bash='bash --rcfile ~/.packard_dotfiles/bashrc'
alias tmux='tmux -f ~/.packard_dotfiles/tmux.conf'
alias tmuxnew='tmux -f ~/.packard_dotfiles/tmux.conf new -s fishtaco -n dev'
