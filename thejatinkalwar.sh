#!/bin/bash

check(){

if wget --spider https://raw.githubusercontent.com/jatinkalwar/Master-Bomber/master/update.v1.2 2>/dev/null; then

cd $HOME/Master-Bomber

echo "ig" > update.txt

else

echo

fi

}


check

option(){

if [ -f "$HOME/Master-Bomber/update.txt" ];then

cd $HOME/Master-Bomber

bash update.sh

else

echo " "

fi

}


option



detect_distro() {
   if [[ "$OSTYPE" == linux-android* ]]; then
distro="termux"
   fi   
    if [ -z "$distro" ]; then
distro=$(ls /etc | awk 'match($0, "(.+?)[-_](?:release|version)", groups) {if(groups[1] != "os") {print groups[1]}}')
    fi
if [ -z "$distro" ]; then 
        if [ -f "/etc/os-release" ]; then
distro="$(source /etc/os-release && echo $ID)"
   elif [ "$OSTYPE" == "darwin" ]; then 
      distro="darwin"    
                else 
            distro="invalid"
        fi
    fi
     }
        
        pause() {
    read -n1 -r -p "Press any key to continue..." key
}
       
        banner() {
    clear
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
   toilet -f ivrit 'Jatin kalwar' | boxes -d cat -a hc -p h8 | lolcat
    else
    cowsay -f eyes 'Shinu' | lolcat
    figlet BOMBER | lolcat
    fi
    echo  -e "\033[5mWARNING:- DON'T TRY TO BOMB MY NUMBER OTHERWISE YOUR IP WILL BE BAN\033[0m"
echo 'This Bomber Was Created By The Jatin Kalwar' | lolcat
    echo 'For Any Queries Contact Me!!!'| lolcat
    echo 'Facebook:- Yourhackinghouse'| lolcat
    echo 'Instagram:- Yourhackinghouse'| lolcat
    echo 'Join our Whatsapp group :- +994408609255' | lolcat
    echo ' '| lolcat
    echo 'Please use for Educational Purpose only!!!'| lolcat
    echo ' '| lolcat
}
            
            init_environ(){
    declare -A backends; backends=(
        ["arch"]="pacman -S --noconfirm"
        ["debian"]="apt-get -y install"
        ["ubuntu"]="apt -y install"
        ["termux"]="apt -y install"
        ["fedora"]="yum -y install"
        ["redhat"]="yum -y install"
        ["SuSE"]="zypper -n install"
        ["sles"]="zypper -n install"
        ["darwin"]="brew install"
        ["alpine"]="apk add"
    )
                
                INSTALL="${backends[$distro]}"
                
                if [ "$distro" == "termux" ]; then
        PYTHON="python"
        SUDO=""
    else
         PYTHON="python3"
        SUDO="sudo"
    fi
    PIP="$PYTHON -m pip"
}
                
                install_deps(){
    packages=(openssl git ruby boxes $PYTHON $PYTHON-pip figlet toilet boxes)
    if [ -n "$INSTALL" ];then
        for package in ${packages[@]}; do
            $SUDO $INSTALL $package
        done
        $PIP install -r requirements.txt
        if ! gem spec lolcat > /dev/null 2>&1; then
    	git clone https://github.com/busyloop/lolcat
    	cd lolcat
    	cd bin
    	sleep 2
    	gem install lolcat
    	sleep 1
    	cd ..
    	cd ..
    	rm -rf lolcat
    	else
           echo "Can't Install lolcat" 
        fi                        
     else

echo "We could not install dependencies."
        exit
fi
}
                        
                        set_alias(){
    if [ "$distro" == "termux" ]; then
        cd;cd ..;cd usr;cd etc
	if grep -q "bomb" bash.bashrc; then
	    echo "Found...Skipping"
	    sleep 2
	    clear
               else    
	    echo 'alias bomb="cd;cd scripts;cd Social-Attacks;cd Master-Bomber;bash Master-Bomber.sh";' >> bash.bashrc
	    echo 'clear' >> bash.bashrc
	    echo 'PS1="\033[1;91mRoot[\033[1;93m\W\033[1;91m]:-\033[1;36m"' >> bash.bashrc
	    alias bomb="cd;cd scripts;cd Social-Attacks;cd Master-Bomber;bash Master-Bomber.sh";
	    clear
        fi
    else      
                                        if grep -q "bomb" /root/.bashrc; then
	    echo "Found...Skipping"
	    sleep 2
	    clear
	else
            echo ' ' >> /root/.bashrc
	    echo 'alias bomb="cd;cd scripts;cd Social-Attacks;cd Master-Bomber;bash Master-Bomber.sh";' >> /root/.bashrc
	    alias bomb="cd;cd scripts;cd Social-Attacks;cd Master-Bomber;bash Master-Bomber.sh";
        fi	    
    fi
}
                                    banner
pause
detect_distro
init_environ
if [ -f .update ];then
    echo "All Requirements Found...."
else
    echo 'Installing Requirements....'
    echo .
    echo .
    $PYTHON version_check.py || $PYTHON Core/version_check.py
    install_deps
    echo 'This Script Was Made By Jatin Kalwar' > .update
    echo 'Requirements Installed....'
    set_alias
    pause
fi
while :
do
banner
    echo -e "\e[4;31m Please Read Instruction Carefully !!! \e[0m"
    echo " "
    echo "Press 1 To  Start SMS  omber " | lolcat
    echo "Press 2 To  Start CALL Bomber "| lolcat
    echo "Press 3 To  Start MAIL Bomber " | lolcat
    echo "press 4 To  Visit Our Website" | lolcat
    echo "Press 5 To  Know About Me" | lolcat
    echo "press 6 To  Update Tool" | lolcat
    echo "Press 0 To  Exit " | lolcat
    read ch
    cd Core
    clear
    if [ $ch -eq 1 ];then
        clear
        if [[ "$OSTYPE" == "linux-gnu" ]]; then
        toilet -f ivrit 'SMS BOMBER' | boxes -d cat -a hc -p h8 | lolcat
        else
        cowsay -f eyes "Shinu" | lolcat
    
          figlet sms bomber | lolcat
          echo 'Created by The Jatin Kalwar' | lolcat
        fi
        $PYTHON Jatin.py --sms
        exit
    elif [ $ch -eq 2 ];then
        clear
        if [[ "$OSTYPE" == "linux-gnu" ]]; then
        toilet -f ivrit 'CALL BOMBER' | boxes -d cat -a hc -p h8 | lolcat
        else
        cowsay -f eyes "Shinu" | lolcat
        figlet call bomber | lolcat
        echo 'Created by The Jatin Kalwar' | lolcat
        fi
        $PYTHON Jatin.py --call
        exit
    elif [ $ch -eq 3 ];then
        clear
        if [[ "$OSTYPE" == "linux-gnu" ]]; then
        toilet -f ivrit 'MAIL BOMBER' | boxes -d cat -a hc -p h8 | lolcat
        else
        cowsay -f eyes "Shinu" | lolcat
        figlet mail bomber | lolcat
echo 'Created by The Jatin Kalwar' | lolcat
        fi
        $PYTHON Jatin.py --mail
        exit
elif [ $ch -eq 4 ];then
am start -a android.intent.action.VIEW -d https://bit.ly/2QT6dSR > /dev/null 2>&1
banner
menu1
elif [ $ch -eq 5 ];then
echo -e '\e[91m
                     ──▐─▌──▐─▌──
                     ─▐▌─▐▌▐▌─▐▌─
                     ─█▄▀▄██▄▀▄█─
                     ──▄──██▌─▄──
                     ▄▀─█▀██▀█─▀▄
                     ▐▌▐▌─▐▌─▐▌▐▌
                     ─▐─█────█─▌─
                     ────▌──▐────
'
echo -e "\e[93m                     CALL ME \e[92mJATT" | pv -qL 10
echo -e "\e[93m               REAL NAME \e[92mJATIN KALWAR" | pv -qL 10
echo -e "\e[93m             IAM FROM \e[92mYOURHACKINGHOUSE" | pv -qL 10
echo -e "\e[93m       IM A \e[92mGEEK\e[93m WITH LOTS OF EXCITEMENT" | pv -qL 10
echo -e "\e[93m             HOPE YOU LIKE THIS SCRIPT" | pv -qL 10
echo -e "\e[93m         OOPS... I TALK A LOT SRY FOR THAT " | pv -qL 10
echo -e "\e[93m              JOIN GROUPS ON \e[92mWHATS' APP" | pv -qL 10
echo -e "\e[93m        MY WEBSITE:\e[92m https://bit.ly/2QT6dSR \e[0m" | pv -qL 10

echo -e "\e[92m                BYEE.............." | pv -qL 10
sleep 8.0
baner1
menu1
      elif [ $ch -eq 6 ];then                                                             
cd $HOME/Master-Bomber
bash update.sh
  elif [ $ch -eq 7 ];then
        clear
        if [[ "$OSTYPE" == "linux-gnu" ]]; then
        toilet -f ivrit 'FEATURES' | boxes -d cat -a hc -p h8 | lolcat
        else
        cowsay -f eyes "Shinu" | lolcat
        figlet features | lolcat
echo 'Created by The Jatin Kalwar' | lolcat
        fi
echo "  [+] Unlimited And Super-Fast Bombing"| lolcat
	echo "  [+] Colourful Interface"| lolcat
	echo "  [+] SMS Bombing "| lolcat
	echo "  [+] Call Bombing "| lolcat
	echo "  [+] Mail Bombing "| lolcat
	#echo "  [+] Custom SMS Sending"| lolcat
	echo "  [+] Automated Future Updates"| lolcat
	echo "  [+] Easy To Use And Embed in Code"| lolcat
	echo ""
	echo -e "\e[1;31m This Script is Only For Educational Purposes or To Prank.\e[0m"| lolcat
	echo -e "\e[1;31m Do not Use This To Harm Others. \e[0m"| lolcat
	echo -e "\e[1;31m I Am Not Responsible For The Misuse Of The Script. \e[0m"| lolcat
	echo  " "
	echo -e "\e[4;31m That's All !!!\e[0m"| lolcat
	echo -e "\e[4;34m This Bomber Was Created By Jatin kalwar \e[0m" | lolcat
	echo -e "\e[1;34m For Any Queries Contact Me!!!\e[0m"| lolcat
	echo -e "\e[1;32m   Intagram:- Yourhackinghouse\e[0m"| lolcat
	
        exit
    elif [ $ch -eq 0 ];then
        banner
        exit
    else
        echo -e "\e[4;32m Invalid Input !!! \e[0m"
        pause
    fi
done
