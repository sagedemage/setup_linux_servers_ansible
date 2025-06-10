#!/bin/bash

case "$1" in
	"start")
		vboxmanage startvm "115df686-10e6-4a0a-a2ab-4dde2d77b769" --type headless
		vboxmanage startvm "f5f1f4b3-2e1d-4f98-89af-0105eb35a5c6" --type headless
		vboxmanage startvm "5d05a724-41dd-4034-b886-f2b407a36f2b" --type headless
		vboxmanage startvm "b6f1fd19-fe07-4c2e-b735-8df4fce3b192" --type headless
		;;
	"poweroff")
		vboxmanage controlvm "115df686-10e6-4a0a-a2ab-4dde2d77b769" poweroff
		vboxmanage controlvm "f5f1f4b3-2e1d-4f98-89af-0105eb35a5c6" poweroff
		vboxmanage controlvm "5d05a724-41dd-4034-b886-f2b407a36f2b" poweroff
		vboxmanage controlvm "b6f1fd19-fe07-4c2e-b735-8df4fce3b192" poweroff
		;;
	"status")
		vboxmanage list runningvms
		;;
	*)
		echo "start   			start the virtual machines"
		echo "poweroff			poweroff the virtual machines"
		echo "status  			list the running virtual machines"
		;;
esac
