# Vertica Aliases
alias at='/opt/vertica/bin/admintools -t '
alias atvc='/opt/vertica/bin/admintools -t view_cluster'
alias vv='/opt/vertica/bin/vertica -V'
alias vps='ps -ef | grep vertica '
# Create 6 node stress EC2 cluster
alias stress_cluster='/scratch_b/qa/vertica/QA/tools/nimbus/qa_run_nimbus.sh -i c3.4xlarge -n 6 -s Stress_VT &'

# Quick cd to common directories.
alias VT_Scenario='cd /scratch_b/qa/vertica/QA/VT_Scenario'
alias Stress_VT='cd /scratch_b/qa/vertica/QA/Stress_VT'
alias QARegres='cd /scratch_b/qa/vertica/SQLTest/QARegres'
alias SQLTest='cd /scratch_b/qa/vertica/SQLTest'
alias QAstress='cd /scratch_b/qa/vertica/SQLTest/QAstress'
alias Scratch='cd /scratch_b/qa/'
alias Nimbus='cd /scratch_b/qa/vertica/QA/tools/nimbus'

# Helpful tools/utils
alias t='tree -FhC -L 2'
alias ls='ls -lrt --color=auto'
alias sl='ls -lrt --color=auto'
alias la='ls -la'
alias ..='cd ..'
alias ports='netstat -tulanp'
# Same as sudo !!
alias fuck='sudo $(history -p \!\!)'

# Env config
alias vim='vim -u ~/.vimrc_gpackard '
alias bash='bash --rcfile ~/.packard_dotfiles/.bashrc'
