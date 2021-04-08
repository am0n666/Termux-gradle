shopt -s expand_aliases
alias ee='echo -e'
echo
ee "\e[93mChecking for presence of installed JDK"
echo 
if [ -e "$PREFIX"/bin/java ] || [ -e "$PREFIX"/share/jvm/openjdk-11.0.1/bin/java ] || [ -e "$PREFIX"/share/jdk8/bin/java ]
then
	ee "\e[32mJava is installed!"
	java --version
	echo
        ee "\e[32mInstalling Gradle... It will take some time... Have a cup of tea..☕☕"
        ./gradlew
        
        ee "\e[32mTo run gradle, run ./gradlew present in $HOME/Termux-gradle"
       exit
else
        echo
        ee "\e[93mJava not installed.. Cloning scripts to install JDK"
        echo
        ee "\e[93mRe-run this script after installing JDK..."
        echo
        git clone https://github.com/suhan-paradkar/java-in-termux.git
        cd java-in-termux
        chmod +x install.sh
        bash install.sh
fi
 exit
