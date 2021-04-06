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
        cp ./gradlew $HOME
        ee "\e[32mTo run gradle, type ./gradlew at home directory"
       exit
else
        ee "\e[32mJava not installed.. Cloning scripts to install JDK"
        ee "\e[32mRe-run this script after installing JDK..."
        git clone https://github.com/suhan-paradkar/java-in-termux.git
        cd java-in-termux
        chmod +x install.sh
        ./install.sh
fi
 exit
