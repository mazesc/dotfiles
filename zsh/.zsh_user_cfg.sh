export PATH="$PATH:/usr/sbin"
export JAVA_HOME="/usr/lib/jvm/jdk-8-oracle-x64"
export JDK_HOME="/usr/lib/jvm/jdk-8-oracle-x64"

#export TERM="kitty"

#test -r /home/matthias/.opam/opam-init/init.zsh && . /home/matthias/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

if [ -n "$DISPLAY" ]; then
  xset b off
fi
