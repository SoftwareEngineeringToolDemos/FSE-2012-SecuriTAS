###VM set up instructions:

1. Download and install [VirtualBox](https://www.virtualbox.org/).
2. Download and install [Vagrant](http://www.vagrantup.com/).
3. Clone this repoitory to your preferred location. 
  * git clone `https://github.com/SoftwareEngineeringToolDemos/FSE-2012-SecuriTAS.git`
4. Open command line and navigate to the bulild-vm folder of the cloned repository.
4. Run `vagrant up` to set up the vm. This would do following:
  * Download and add the base box image in Vagrant.
  * Create virtual machine using this image.
  * Launch VM in GUI mode.
  * Install java 1.7 and Graphviz packages using Chocolatey.

####Acknowledgements:
  * Used vagrant Windows 7 32 bit base box image of [modernIE/w7-ie11](https://vagrantcloud.com/modernIE/boxes/w7-ie11).
  * Chocolatey powershell non-administrative install script from their [github page](https://github.com/chocolatey/choco/wiki/Installation#command-line).

####Notes:
  * To see the provision results, you can open up command line in the VM running in Virtualbox and run java -version after the provisioning has completed.
  * Winrm and RDP to the VM is enabled on default host port 5985 and 3377 respectively. Use vagrant rdp to launch the rdp client (non Windows hosts may have to install an RDP client). Use the following credentials (the RDP client should be launched with the user name already filled in):
      * User: `IEUser`
      * Password: `Passw0rd!`
      * Please note that these credentials are set from the base box image creator.
  * The license of the Windows image is valid until 2016-01-20, unless the base box provider updates it.
