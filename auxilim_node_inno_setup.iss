; -- Languages.iss --
; Demonstrates a multilingual installation.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=Auxilim
AppId=Auxilim Job Appliance Node
AppVerName=Auxilim Client
WizardStyle=modern
DefaultDirName={%USERPROFILE}\AppData\Auxilim
DefaultGroupName={cm:MyAppName}
UninstallDisplayIcon={app}\MyProg.exe
VersionInfoDescription=Installateur de Nodes Auxilim
VersionInfoProductName=Beta
OutputDir=output
MissingMessagesWarning=yes
NotRecognizedMessagesWarning=yes
OutputBaseFilename=AuxilimNodeInstaller
CreateAppDir=yes
PrivilegesRequired=lowest
DisableWelcomePage=yes
DisableDirPage=no

; Uncomment the following line to disable the "Select Setup Language"
; dialog and have it rely solely on auto-detection.
;ShowLanguageDialog=no

[Languages]
Name: fr; MessagesFile: "compiler:Languages\French.isl"

[Messages]
fr.BeveledLabel=French


[CustomMessages]
fr.MyDescription=Auxilim est un outil d'envoi automatique de candidature
fr.MyAppName=Auxilim
fr.MyAppVerName=1.0


[Files]
Source: "AuxilimNode.exe"; DestDir: "{app}"
Source: "android_client.exe.lnk"; DestDir: "{app}"
Source: ".git\*"; DestDir: "{app}\.git"; Flags: ignoreversion recursesubdirs

[Dirs]
Name: "{app}";

[Icons]
Name: "{group}\{cm:MyAppName}"; Filename: "{app}\android_client.exe.lnk"

[Run]
Filename: {app}\AuxilimNode.exe; Description: {cm:LaunchProgram,{cm:AppName}}; Flags: nowait postinstall skipifsilent

[CustomMessages]
AppName=mySoftwaresNiceName
LaunchProgram=Lancer l'exécutable Auxilim Node. Patientez un peu lors de la première exécution
CreateDesktopIcon=Créer une icone de bureau
