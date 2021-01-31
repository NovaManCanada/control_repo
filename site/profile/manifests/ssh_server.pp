class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRgoxUcuQfQMCxvgQjWw5Q5kAuCIS6gLjij+kNPYjJztB9cE6qmSvc0f63/RI9gNSVlBq2b6NwQIUCHuNhX5vPzTofRqOkPI6kFBH4Ce7KzdoGDyiyoqOjZrMCo770S6cQSpBFiXg314jIp4l8ENnHQdvghx72qJBNDSueKTZ+g5g/S+bZEzRigcfdKBPAMUkfbXjJJahk5IubZSHftZRNeBO+yJej5xLAoBAY8rtbV+hGgiinwmp8TvV/TyYrCGtZ+eu5GBOzhTxgP2H3azWYZGSA7XiitIpBB2fh0/yQFZDfJ9RAZMDelVoJsixStge8uYk1avgom79J8CANbejz',
	}  
}
