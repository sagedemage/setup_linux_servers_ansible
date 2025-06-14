#!/bin/bash

vm1_uuid="115df686-10e6-4a0a-a2ab-4dde2d77b769"
vm2_uuid="f5f1f4b3-2e1d-4f98-89af-0105eb35a5c6"
vm3_uuid="5d05a724-41dd-4034-b886-f2b407a36f2b"
vm4_uuid="b6f1fd19-fe07-4c2e-b735-8df4fce3b192"
vm5_uuid="eff6e85d-016e-43f7-baeb-43f2b3e21e10"

case "$1" in
	"start")
		vboxmanage startvm $vm1_uuid --type headless
		vboxmanage startvm $vm2_uuid --type headless
		vboxmanage startvm $vm3_uuid --type headless
		vboxmanage startvm $vm4_uuid --type headless
		vboxmanage startvm $vm5_uuid --type headless
		;;
	"poweroff")
		vboxmanage controlvm $vm1_uuid poweroff
		vboxmanage controlvm $vm2_uuid poweroff
		vboxmanage controlvm $vm3_uuid poweroff
		vboxmanage controlvm $vm4_uuid poweroff
		vboxmanage controlvm $vm5_uuid poweroff
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
