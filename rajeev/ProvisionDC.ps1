Configuration MyWebServerCfg2 {
 
    Import-DscResource -ModuleName PsDesiredStateConfiguration
 
   node ("localhost") {
 
        # The first resource block ensures that the Web-Server (IIS) feature is enabled.
       # The second resource block ensures that the Web-Mgmt-Tools feature is enabled.
        
	WindowsFeature IIS-Tools {
            Ensure    = "Absent"
            Name      = "Web-Mgmt-Tools"
            DependsOn = "[WindowsFeature]IIS"
        }   
	WindowsFeature IIS {
            Ensure = "Absent"
            Name   = "Web-Server"
        }
 	    File ApacheDownload {
            Ensure = 'Present'
            SourcePath = 'https://home.apache.org/~steffenal/VC15/binaries/httpd-2.4.38-win64-VC15.zip'
            DestinationPath = 'c:\'
        }
 
 
    }
}
