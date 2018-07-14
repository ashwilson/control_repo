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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC32RK/odbMnd2rRuheJurjc0NXt2X3+FYwfjKTYEAFmVlez3NaAdq7KQ+i2iCFIQWKmnBBlO05fKiQaEBSaDZTHBywP8MDjXXWyB4YvjQ5TnNYA6vhGk9LtPgbosvRaYyjdZicprxiPr8au3hGguJZpjpnRAjSATW8KRxwCriKh6X+zP6uKiRbubJhkZIje+QYr/VtsiVat7EnaDU+dYHQDDM2AHayKzrYfuJ5OA0+IC0O0l+RzDDFpOGl/A7DT4kj/HL1Jh3b+Qw6ApjpQez9x+uN8vUP8ni19/sYXcNFX0LCb0ajSXMbH4vqftK1bq1vxzzAcDZertIehPuFwtFR root@master.puppet.vm',
	}  
}
