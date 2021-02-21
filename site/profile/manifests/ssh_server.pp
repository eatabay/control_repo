class profile::ssh_server {
        package { 'openssh-server':
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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtrSELifoWX48PsfBnM9SQe19WbuJ+pJG/tWPBNYuHBYCed55l7OiIFEg0Gv5RVp2OnFJFpn3igM75PmgzivO918wQCrb5Z6wyhkZxqi+3BeyVFv2yooMznAq21v3qNrcN4AJ9cLk5lVeKKMbVeX0+YWNNi+DfNwETYuhSbNMFy9Rral+QuklNNRllNek02769fKUY06Ut6iZe0IJ5qjVB3wwJYceTaFWRzHZOsAkJwbadlZBAJ7Q7mNATAsEnK9A6i9om6cZJjuFdiSxlVV/VENpYdkhWsPVbWMlJSlTtx8UpsNazs10YleXurcOlWgnr0rz37vNDF4ayWIs4Xk3h',
        }
}
