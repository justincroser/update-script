#Dependancies Neofetch. Plus Piholes / Flatpak / Snaps if used. Works with Debian / Ubuntu / Fedora based systems. Comment out whats not needed in this case uncomment what you do need so it works.

#Don't forget to CHMOD + x this file to make it executable but I should've already done that for you' and make sure to run as sudo ie sudo bash update.sh

#Made by Justin Croser https://justincroser.io I am not responsible for any breakages use at your own risk however I doubt it will be a problem with the script except an distribution update / dependancy issue' 

#Debian based servers
#apt update
#apt upgrade -y
#I like a clean system, but these may or may not be helpful.
#apt autoclean -y
#apt autoremove -y

#Fedora/Redhat machines
#dnf update -y
#dnf upgrade -y
#I like a clean system, but these may or may not be helpful.
#dnf autoremove -y

#Updates Flatpaks
#flatpak update -y

#Updates Snaps
#snap refresh -y

#Updates Pihole if you have one
#pihole -up

#Ask if user wants to reboot the systm? Useful for home servers
read -r -p "Reboot? [Y/n] " input
case $input in
	[yY][eE][sS]|[yY])
		echo "You have opted to reboot!"
			systemctl reboot -i
			;;
	[nN][oO]|[nN])
		echo "You will not reboot right now!"
		neofetch
			exit 1
			;;
	*)
		echo "Invalid input..."
		neofetch
		exit 1
		;;
esac
