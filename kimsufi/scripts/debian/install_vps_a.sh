#!/usr/bin/env bash
#
# Post-installation Configuration Scripts
#
# Common Debian based host tasks
# - Install base packages
# - User parameters


do_upgrade () {
  apt-get --assume-yes update
  apt-get --assume-yes upgrade
  apt-get --assume-yes dist-upgrade
}


install_base_packages () {
  apt-get --assume-yes install sudo tmux bash-completion ca-certificates
  apt-get --assume-yes install git lm-sensors
}


set_defaults () {
  update-alternatives --set editor /usr/bin/vim.basic
}


main () {
	install_base_packages
	set_defaults
	touch deb_host_done
}

main
