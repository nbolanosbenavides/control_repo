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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPCIgQW2S36p8xL8zkMiAX4TjVtsYk/LZ+zA1zf59n+TU5jmLSMl46gpIeooiUJNqn71wxcScITqwCgU9R5QlbReZnhgHbEmk2s1BtXZrNFg/UfpwpFD47f2HbUMDIirISm8f3TbjnLBIUJ853x6+MvGKAH3KrBsiRvGZLlgA7kszcrhqrdtSXK+whv/iEbCscC0T7XLcUpp6RiY3vqJgMLKbnZdyfmyU/hTbV5oSRXFlxNEhE+uFoodJXZgZ908CElDOdsdNm8i6kQ+f3hVy3Y98wKVKkeJQ4Bo6wU9aHydL5PWUy/Xn/dAIJrYdQd95Q63r7SX07qSxn7chu/oNF',
	}  
}
