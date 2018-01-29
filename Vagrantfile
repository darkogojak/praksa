BOX_IMAGE = "centos/7"
CENTOS7_NODES = 2

Vagrant.configure("2") do |config|
  config.vm.define "MASTERofPUPPETS" do |subconfig| 
    subconfig.vm.box = BOX_IMAGE
    
    config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "1024"
    end
  end
  
  (1..CENTOS7_NODES).each do |i|
    config.vm.define "centos7#{i}" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
        config.vm.provider "virtualbox" do |vb|
          vb.gui = true
          vb.memory = "1024"
        end
    end
    
    config.vm.provision "shell", inline: <<-SHELL
      yum update
      sudo yum install -y httpd
    SHELL
  end
end
