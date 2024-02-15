#!/bin/bash
#Output and error has to be printed on the screen as well as stored in a file /tmp/output after user runs ./install_arch.sh  Providing that...
exec > >(tee /tmp/whole_output_error) 2>&1

#Making sure the directory is right...
working_directory=$(echo ${0%/*})
cd $working_directory
cd scripts

. ./Check_if_I_have_an_UEFI_system
. ./Connect_to_the_Internet
. ./Synchronize_the_system_clock_with_remote_NTP_servers
. ./Partition_hard_drive
. ./Select_mirrors
. ./Install_kernel
. ./Configure_fstab_file
. ./Install_man_pages
. ./Install_which
. ./Install_sudo
. ./Create_a_non-root_user
. ./Install_aur_helper
. ./Install_network_manager
. ./Install_bootloader
. ./Root_password
. ./Configure_locale
. ./Configure_time
. ./Configure_network
. ./Install_gui
. ./Configure_keyboard
. ./Install_desktop_environment
. ./Install_terminal_emulator
. ./Install_window_manager
. ./Install_screenshot
. ./Install_text_editor
. ./Install_sound
. ./Install_spaced_repetition_software
. ./Install_sandboxing_software
. ./Install_web_browser
. ./Install_bash_completion
. ./Install_bash_floating_point_arithmetic
. ./Install_backup
. ./Install_video_and_audio_format_converter
. ./Install_notify_send
. ./Install_music_player
. ./Install_video_player
. ./Install_programming_languages
. ./Install_chess
. ./Install_messanger
. ./Install_image_viewer
. ./Install_google_translate
. ./Install_hypervisor
. ./Install_setclip
. ./Install_software_that_downloads_videos_from_youtube
. ./Install_pdf_reader
. ./Install_software_for_battery_power_thermal_readings
. ./Install_word_alternative
. ./Install_image_editor
. ./Install_password_manager
. ./Install_ssh
. ./Install_udisksctl
arch-chroot /mnt chown -R $User:$User /home/$User #just in case root owns some file which is something I don't want

#At this point unfortunately home partition is empty. /home/$User has been written under / partition and not /home partition. Fixing that...
mkdir /mnt/media
arch-chroot /mnt umount  "$DISK"4
arch-chroot /mnt mount  "$DISK"4 /media
arch-chroot /mnt mv /home/$User /media
arch-chroot /mnt rm -rf /home #there are some leftovers there, that's why run this command (and the next)
mkdir /mnt/home
arch-chroot /mnt umount "$DISK"4

#Test if all the programs were installed
cp Test_what_was_installed /mnt
#Run arch-chroot /mnt bash -c "./Test_what_was_installed 2>&1 | tee /installed_programs"
#After inspecting the file /installed_programs, remove it

##Unmounting everything and rebooting...
#umount -R /mnt
#reboot
