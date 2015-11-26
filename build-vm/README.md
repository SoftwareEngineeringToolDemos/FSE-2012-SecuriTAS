###VM set up instructions:

1. Download and install [VirtualBox](https://www.virtualbox.org/).
2. Download and install [Vagrant](http://www.vagrantup.com/).
3. Clone this repository to your preferred location. 
  * git clone `https://github.com/SoftwareEngineeringToolDemos/FSE-2012-SecuriTAS.git`
4. Open command line and navigate to the bulild-vm folder of the cloned repository.
5. Install the [vagrant-reload](https://github.com/aidanns/vagrant-reload) plugin. This is required to do a restart of the VM after the provisioning has completed. Use `vagrant plugin install vagrant-reload` to install. If the plugin is not installed, and `vagrant up` is used, the process will abort with an error saying the plugin is missing. 
6. Run `vagrant up` to set up the vm. This would do following:
  * Download and add the base box image in Vagrant.
  * Create virtual machine using this image.
  * Launch VM in GUI mode.
  * Install the following dependencies for the tool during the provision:
    * Java 1.6 (required for JBoss 5.10 GA).
    * Eclipse Indigo.
    * JBoss 5.10 GA.
    * SecuriTAS Tool binaries.
    * MySql.
    * Graphviz 2.38
  * This will set up the other files necessary for the tool to run and after provisioning has completed, it will perform a restart of the VM. If for some reason the VM fails to restart after the provisioning phase, do `vagrant reload` to restart manually.

####Acknowledgements:
  * Used vagrant Windows 7 32 bit base box image of [modernIE/w7-ie11](https://vagrantcloud.com/modernIE/boxes/w7-ie11).

####Notes:
  * Do not do anything in the VM during the provisioning stage.
  * The provision will take a bit of time, it will download more than a GB of setup files and install them in more than one phases.
  * IMPORTANT: To download files, the powershell WebClient has been used, which is known to be quite finicky. If an error/exception is thrown during provisioning (which can occur due to bad connection or timeouts - some of the links used here are not very stable), just restart the provisioning by `vagrant provision`.
  * Winrm and RDP to the VM is enabled on default host port 5985 and 3377 respectively. Use vagrant rdp to launch the rdp client (non Windows hosts may have to install an RDP client). Use the following credentials (the RDP client should be launched with the user name already filled in):
      * User: `IEUser`
      * Password: `Passw0rd!`
      * Please note that these credentials are set from the base box image creator and changing them will result in WinRM authentication failures.
  * The license of the Windows image is valid until 2016-01-20, unless the base box provider updates it.
