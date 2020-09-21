Vagrant.configure("2") do |config|

config.vm.box = "ubuntu/bionic64"
config.vm.provision :shell, 
        path: "install-docker.sh"

config.vm.provider "virtualbox" do |vb|
        vb.memory = "4000"
        # vb.memory = "3096"
	vb.cpus = 2
end
 
config.vm.define "rancher" do |rancher|
        rancher.vm.hostname = "rancher"
	rancher.vm.box = "ubuntu/bionic64"
        #rancher.vm.network "private_network", 
        #        ip: "192.168.50.254",
        #        virtualbox__intnet: "rancher"
        rancher.vm.network "public_network",
                bridge: "enp7s0"
end

config.vm.define "k8s1" do |k8s1|
	k8s1.vm.hostname = "k8s1"
        k8s1.vm.box = "ubuntu/bionic64"
        #k8s1.vm.network "private_network", 
        #        ip: "192.168.50.2",
        #        virtualbox__intnet: "rancher"
        k8s1.vm.network "public_network",
                bridge: "enp7s0"
end
	
config.vm.define "k8s2" do |k8s2|
        k8s2.vm.hostname = "k8s2"
        k8s2.vm.box = "ubuntu/bionic64"
        #k8s2.vm.network "private_network", 
        #        ip: "192.168.50.3",
        #        virtualbox__intnet: "rancher"
        k8s2.vm.network "public_network",
                bridge: "enp7s0"
end

config.vm.define "k8s3" do |k8s3|
        k8s3.vm.hostname = "k8s3"
        k8s3.vm.box = "ubuntu/bionic64"
        #k8s3.vm.network "private_network", 
        #        ip: "192.168.50.4",
        #        virtualbox__intnet: "rancher"
        k8s3.vm.network "public_network",
                bridge: "enp7s0"
end
end