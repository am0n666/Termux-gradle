shopt -s expand_aliases
alias ee='echo -e'
echo
ee "\e[93mChecking for presence of installed JDK"
echo 
if [ -e "$PREFIX"/bin/java ] || [ -e "$PREFIX"/share/openjdk-11.0.1/bin/java ] || [ -e "$PREFIX"/share/jdk8/bin/java ]
then
	ee "\e[32mJava is already installed!"
	java --version
	echo

