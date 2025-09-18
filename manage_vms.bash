#!/bin/bash

vm1_uuid="f1cc4635-f2be-47e5-b08d-3da71c575a84"
vm2_uuid="13f24301-752c-4b58-832e-50c79afa99c3"
vm3_uuid="fce3e712-557f-4bf4-8475-b656dc50c4c5"
vm4_uuid="51a26ce6-4724-4fed-83aa-f1a9aa3a03ad"

case "$1" in
	"start")
		vboxmanage startvm $vm1_uuid --type headless
		vboxmanage startvm $vm2_uuid --type headless
		vboxmanage startvm $vm3_uuid --type headless
		vboxmanage startvm $vm4_uuid --type headless
		;;
	"poweroff")
		vboxmanage controlvm $vm1_uuid poweroff
		vboxmanage controlvm $vm2_uuid poweroff
		vboxmanage controlvm $vm3_uuid poweroff
		vboxmanage controlvm $vm4_uuid poweroff
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
