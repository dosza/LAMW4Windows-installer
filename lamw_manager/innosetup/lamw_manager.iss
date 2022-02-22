; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LAMW Manager"
#define MyAppVersion "0.3.1.6-beta"
#define MyAppPublisher "LAMW Manager"
#define MyAppURL "https://github.com/DanielOliveiraSouza/LAMW4Windows-installer"
#define MyAppExeName "preinstall.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

AppId={{971E9B55-5E5A-4F36-A3C2-D4C77B8F9CF7}}
PrivilegesRequired=admin
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=c:\lamw_manager
DisableDirPage=no
DisableProgramGroupPage=yes
OutputBaseFilename=lamw_manager_setup
Compression=lzma
SolidCompression=yes
MinVersion=6.2
VersionInfoVersion=0.3.1.6
VersionInfoTextVersion=0.3.1.6-beta

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;Source: "c:\lamw_manager\preinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\lamw_builder\preinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\lamw_builder\preinstall-win32.bat"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\lamw_builder\preinstall-win64.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\lamw_builder\simple-lamw-install.sh"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\lamw_builder\lamw_manager.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\lamw_builder\newinstaller.ps1"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\lamw_builder\repair-msys.bat"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\lamw_builder\repair-lamw4windows.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\lamw_builder\Getting Started.txt"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[UninstallDelete]
Type: files; Name: "{app}\lamw_manager.bat";

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: runascurrentuser shellexec postinstall skipifsilent 
