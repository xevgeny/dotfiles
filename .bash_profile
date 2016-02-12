export M2_HOME=~/Projects/apache-maven-3.2.1
export PATH=$PATH:$M2_HOME/bin:/Applications/Android\ Studio.app/sdk/tools:/Applications/Android\ Studio.app/sdk/platform-tools:$HOME/Projects/activator:/usr/local/opt/go/libexec/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

