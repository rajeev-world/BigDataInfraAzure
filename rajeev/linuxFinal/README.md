
                                                # Assignment One: 
                                                
Simple deployment of a Centos VM with DSC Linux Extension, configuration files are placed in GitHub in this directory

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/http://raw.githubusercontent.com/rajeev-world/BigDataInfraAzure/master/rajeev/linuxFinal/azuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/rajeev-world/BigDataInfraAzure/master/rajeev/linuxFinal/azuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template uses the Azure [DSC for Linux Extension](https://github.com/Azure/azure-linux-extensions/tree/master/DSC) to deploy an Linux VM. Azure DSC for Linux Extension allows the owner of the Azure VMs to configure the VM using Windows PowerShell Desired State Configuration (DSC) for Linux.

With this template, you:

Push MOF configurations to the Linux VM, the MOF files is placed in github same directory


How to deploy

Azure CLI or Powershell is recommended to deploy the template.

1. Using Azure CLI

  https://azure.microsoft.com/en-us/documentation/articles/xplat-cli-azure-resource-manager/

2. Using Powershell

  https://azure.microsoft.com/en-us/documentation/articles/powershell-azure-resource-manager/
  
  Thanks,
  Rajeev
