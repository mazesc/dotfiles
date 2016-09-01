#export LD_LIBRARY_PATH="/usr/lib:/usr/local/lib:/home/matthias/ratsy_v2.1.0_2010-06-17_0854/NuSMV-game/NuSMVWrap/nusmv/clib"
#export PYTHONPATH="/usr/lib/python2.7:/usr/lib/python2.7/site-packages:/home/matthias/tools/z3/build"
export PATH="$PATH:/usr/sbin:/home/matthias/bin"
export JAVA_HOME="/usr/lib/jvm/jdk-8-oracle-x64"
export JDK_HOME="/usr/lib/jvm/jdk-8-oracle-x64"

export TERM="xterm-256color"

#alias antlr-gui="java -jar ~/tools/antlrworks1.5/antlrworks-1.5.2-complete.jar"

alias matlab="~/tools/MATLAB/Matlab2015b/bin/matlab &"

if [ -n "$DISPLAY" ]; then
  xset b off
fi
