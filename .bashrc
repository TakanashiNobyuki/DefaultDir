
# prompt setting
IP=$(ifconfig | grep inet | egrep -v '127.0.0.1|inet6' | cut -d' ' -f 10)
PS1="[\u@${IP} \w]\$ " 

# alias
alias ls='ls -G  --color=auto'
alias ll='ls -lh'
alias la='ls -lA'
alias lt='ls -t'

