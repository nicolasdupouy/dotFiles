# -- Languages
# [JDK]     --------------------------------------------
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# => MANAGED BY 'jenv'


# -- Tools
# [jenv]
# To enable shims and autocompletion:
eval "$(jenv init -)"

# To use Homebrew's directories rather than ~/.jenv add to your profile:
#export JENV_ROOT=/usr/local/opt/jenv

# [Maven]
MVN_HOME=/Applications/InstalledApps/Development/apache-maven-3.8.4
export PATH=$MVN_HOME/bin:$PATH

# [Gradle]
GRADLE_HOME=/Applications/InstalledApps/Development/gradle-7.5.1
export PATH=$GRADLE_HOME/bin:$PATH


# -- Aliases
# JDKs
alias alias_nicolas_list_jdks='/usr/libexec/java_home --verbose'

# [Java Decompiler]
alias alias_nicolas_java_decompiler='java -jar /Applications/InstalledApps/Development/jd-gui-1.6.6.jar'
alias alias_nicolas_jd=nicolas_java_decompiler
