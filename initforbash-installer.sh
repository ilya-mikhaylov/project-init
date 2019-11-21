cd ~
cat >> .bashrc << EOF
alias projectinit-test='bash <(curl -Ls https://raw.githubusercontent.com/ilya-mikhaylov/project-init/master/init.sh)'
EOF
echo projectinit-test ready