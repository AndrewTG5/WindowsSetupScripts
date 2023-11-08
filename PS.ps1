Set-Service AxInstSV -StartupType Disabled # Provides User Account Control validation for the installation of ActiveX controls from the Internet and enables management of ActiveX control installation based on Group Policy settings.
Set-Service tzautoupdate -StartupType Disabled # Automatically sets the system time zone.
Set-Service bthserv -StartupType Disabled # The Bluetooth service supports discovery and association of remote Bluetooth devices.
Set-Service PimIndexMaintenanceSvc -StartupType Disabled # Indexes contact data for fast contact searching. If you stop or disable this service, contacts might be missing from your search results.
Set-Service dmwappushservice -StartupType Disabled # Routes Wireless Application Protocol (WAP) Push messages received by the device and synchronizes Device Management sessions.
Set-Service SharedAccess -StartupType Disabled # Provides network address translation, addressing, name resolution and/or intrusion prevention services for a home or small office network.
Set-Service AppVClient -StartupType Disabled # Manages App-V users and virtual applications.
Set-Service NetTcpPortSharing -StartupType Disabled # NetTcpPortSharing
Set-Service CscService -StartupType Disabled # The Offline Files service performs maintenance activities on the Offline Files cache, responds to user logon and logoff events, implements the internals of the public API, and dispatches interesting events to those interested in Offline Files activities and changes in cache state.
Set-Service PhoneSvc -StartupType Disabled # Manages the telephony state on the device.
Set-Service QWAVE -StartupType Disabled # Quality Windows Audio Video Experience (qWave) is a networking platform for Audio Video (AV) streaming applications on IP home networks. qWave enhances AV streaming performance and reliability by ensuring network quality-of-service (QoS) for AV applications. It provides mechanisms for admission control, run time monitoring and enforcement, application feedback, and traffic prioritization.
Set-Service RmSvc -StartupType Disabled # Radio Management and Airplane Mode Service.
Set-Service RemoteAccess -StartupType Disabled # Offers routing services to businesses in local area and wide area network environments.
Set-Service SCardSvr -StartupType Disabled # Manages access to smart cards read by your computer. If this service is stopped, your computer will be unable to read smart cards.
Set-Service ScDeviceEnum -StartupType Disabled # Creates software device nodes for all smart card readers accessible to a given session. If this service is disabled, WinRT APIs will not be able to enumerate smart card readers.
Set-Service WiaRpc -StartupType Disabled # Launches applications associated with still image acquisition events. Used for scanners.
Set-Service OneSyncSvc -StartupType Disabled # This service synchronizes mail, contacts, calendar and various other user data.
Set-Service upnphost -StartupType Disabled # Allows UPnP devices to be hosted on your computer.
Set-Service UevAgentService -StartupType Disabled # Provides support for application and OS settings roaming.
Set-Service WalletService -StartupType Disabled # Hosts objects used by clients of the wallet.
Set-Service FrameServer -StartupType Disabled # Enables multiple clients to access video frames from camera devices.
Set-Service stisvc -StartupType Disabled # Provides image acquisition services for scanners and cameras.
Set-Service wisvc -StartupType Disabled # Provides infrastructure support for the Windows Insider Program. This service must remain enabled for the Windows Insider Program to work.
Set-Service icssvc -StartupType Disabled # Provides the ability to share a cellular data connection with another device.
Set-Service SEMgrSvc -StartupType Disabled # Manages payments and Near Field Communication (NFC) based secure elements.
Set-Service DiagTrack -StartupType Disabled # The Connected User Experiences and Telemetry service enables features that support in-application and connected user experiences. Additionally, this service manages the event driven collection and transmission of diagnostic and usage information (used to improve the experience and quality of the Windows Platform) when the diagnostics and usage privacy option settings are enabled under Feedback and Diagnostics.
Set-Service NcdAutoSetup -StartupType Disabled # Network Connected Devices Auto-Setup service monitors and installs qualified devices that connect to a qualified network. Stopping or disabling this service will prevent Windows from discovering and installing qualified network connected devices automatically. Users can still manually add network connected devices to a PC through the user interface.
Set-Service webthreatdefsvc -StartupType Disabled # Enhanced Phishing Protection may automatically collect additional content for security analysis from a suspicious website or app when your users enter their work or school password into that website or app.
Set-Service DusmSvc -StartupType Disabled # Network data usage, data limit, restrict background data, metered networks.
Set-Service Spooler -StartupType Disabled # This service spools print jobs and handles interaction with the printer.  If you turn off this service, you won’t be able to print or see your printers.
Set-Service PcaSvc -StartupType Disabled # This service provides support for the Program Compatibility Assistant (PCA).  PCA monitors programs installed and run by the user and detects known compatibility problems.
Set-Service lmhosts -StartupType Disabled # Provides support for the NetBIOS over TCP/IP (NetBT) service and NetBIOS name resolution for clients on the network, therefore enabling users to share files, print, and log on to the network. If this service is stopped, these functions might be unavailable.
Set-Service FDResPub -StartupType Disabled # Publishes your computer and resources attached to your computer so they can be discovered over the network. If this service is stopped, network resources will no longer be published and they will not be discovered by other computers on the network.
Set-Service RasMan -StartupType Disabled # Manages dial-up and virtual private network (VPN) connections from your computer to the Internet or other remote networks.
Set-Service SstpSvc -StartupType Disabled # Provides support for the Secure Socket Tunneling Protocol (SSTP) to connect to remote computers using VPN. If this service is disabled, users will not be able to use SSTP to access remote servers.
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f # disable superfetch and prefetch
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 # ultimate performance plan
bcdedit /set disabledynamictick yes # disable power saving feature
Get-AppxPackage -AllUsers | Where-Object {$_.Name -like "*WebExperience*"} | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue # Uninstall widgets