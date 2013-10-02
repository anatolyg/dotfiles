# my java/scala/groovy settings
#
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0/Contents/Home"
#export GROOVY_HOME="/usr/local/Cellar/groovy/latest/libexec"

export MAVEN_OPTS="-Xms512M -Xmx512M -XX:MaxPermSize=256M"
export JAVA_OPTS="-Dfile.encoding=UTF8 -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m"
export SBT_OPTS="-XX:MaxPermSize=1024m"

alias playme="sbt clean && play run"

