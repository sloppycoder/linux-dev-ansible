#
#  this box is for doing development work
#
$system_setup = <<END_OF_SETUP

apt-get update 
apt-get install -y ansible git

END_OF_SETUP


$user_setup = <<END_OF_USER_SETUP


END_OF_USER_SETUP

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "debian/stretch64"
	# config.vm.box = "debian/buster64"
	# config.vm.box = "generic/ubuntu1804"

	config.vm.box_check_update = false

	config.vm.provider 'virtualbox' do |v|
	    v.memory = 1536
	    v.cpus = 1
	end

	config.vm.provision 'shell', inline: $system_setup
	config.vm.provision 'shell', inline: $user_setup, privileged: false

end
