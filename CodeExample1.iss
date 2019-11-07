; -- CodeExample1.iss --
;
; This script shows various things you can achieve using a [Code] section

[Setup]
AppName=Image Resizer
AppVerName=Image Resizer v0.1.5 alpha
DefaultDirName={pf}\ImageResizer
DefaultGroupName=Image Resizer
UninstallDisplayIcon={app}\launch_imageresizer.exe
InfoBeforeFile=
OutputDir=c:\Documents and Settings\deciacco\Desktop\phpapps\Dev\Apps\imageresizer\setup
MinVersion=0,5.01.2600
LicenseFile=c:\Documents and Settings\deciacco\Desktop\phpapps\Dev\Apps\imageresizer\gpl-3.0.txt
DisableProgramGroupPage=false
AppCopyright=Copyright © 2008 Deciacco.com
DisableReadyPage=true
ShowLanguageDialog=no
SourceDir=c:\Documents and Settings\deciacco\Desktop\phpapps\Dev\Apps\imageresizer
DisableDirPage=true
AppendDefaultGroupName=false
UsePreviousGroup=false
AppPublisher=DeCiacco.com
AppPublisherURL=http://www.deciacco.com/blog/php/image-resizer-php-application-for-windows-almost
AppSupportURL=http://www.deciacco.com/blog/php/image-resizer-php-application-for-windows-almost
AppUpdatesURL=http://www.deciacco.com/blog/php/image-resizer-php-application-for-windows-almost
AppID={{56BBB147-18FB-42BC-A4D8-DA93D4FD44CA}
OutputBaseFilename=irzsetup

[Files]
Source: imageresizer.php; DestDir: {app}
Source: php\libeay32.dll; DestDir: {app}\php
Source: php\license.txt; DestDir: {app}\php
Source: php\php.exe; DestDir: {app}\php
Source: php\php.ini; DestDir: {app}\php
Source: php\php5ts.dll; DestDir: {app}\php
Source: php\php_gd2.dll; DestDir: {app}\php
Source: php\ssleay32.dll; DestDir: {app}\php
Source: gpl-3.0.txt; DestDir: {app}
Source: imageresizer.ini; DestDir: {app}
Source: launch_imageresizer.exe; DestDir: {app}
Source: www.icondrawer.com.html; DestDir: {app}

[Dirs]
Name: {app}\php

[Icons]
;Name: {group}\Image Resizer; Filename: {app}\launch_imageresizer.exe; IconIndex: 0; WorkingDir: {app}; IconFilename: {app}\launch_imageresizer.exe
Name: {group}\INI Settings; Filename: {app}\imageresizer.ini

[Registry]
Root: HKCR; SubKey: Directory\shell\imageresizer; ValueType: string; ValueData: Run Image Resizer On; Flags: uninsdeletekey; MinVersion: 0,5.01.2600
Root: HKCR; SubKey: Directory\shell\imageresizer\command; ValueType: string; ValueData: """c:\program files\imageresizer\php\php.exe"" ""c:\program files\imageresizer\imageresizer.php"" ""%L"""; Flags: uninsdeletekey deletekey; MinVersion: 0,5.01.2600; Check: IsX86
Root: HKCR; SubKey: Directory\shell\imageresizer\command; ValueType: string; ValueData: """c:\program files (x86)\imageresizer\php\php.exe"" ""c:\program files (x86)\imageresizer\imageresizer.php"" ""%L"""; Flags: uninsdeletekey deletekey; MinVersion: 0,6.0.6000; Check: IsX64
Root: HKCR; SubKey: giffile\shell\imageresizer; ValueType: string; ValueData: Resize Image; Flags: uninsdeletekey; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: giffile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files\imageresizer\php\php.exe"" ""c:\program files\imageresizer\imageresizer.php"" ""%L"""; Check: IsX86; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: giffile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files (x86)\imageresizer\php\php.exe"" ""c:\program files (x86)\imageresizer\imageresizer.php"" ""%L"""; Check: IsX64; MinVersion: 0,6.0.6000
Root: HKCR; SubKey: jpegfile\shell\imageresizer; ValueType: string; ValueData: Resize Image; Flags: uninsdeletekey; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: jpegfile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files\imageresizer\php\php.exe"" ""c:\program files\imageresizer\imageresizer.php"" ""%L"""; Check: IsX86; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: jpegfile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files (x86)\imageresizer\php\php.exe"" ""c:\program files (x86)\imageresizer\imageresizer.php"" ""%L"""; Check: IsX64; MinVersion: 0,6.0.6000
Root: HKCR; SubKey: pngfile\shell\imageresizer; ValueType: string; ValueData: Resize Image; Flags: uninsdeletekey; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: pngfile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files\imageresizer\php\php.exe"" ""c:\program files\imageresizer\imageresizer.php"" ""%L"""; Check: IsX86; MinVersion: 0,5.01.2600
Root: HKCR; Subkey: pngfile\shell\imageresizer\command; ValueType: string; Flags: uninsdeletekey deletekey; ValueData: """c:\program files (x86)\imageresizer\php\php.exe"" ""c:\program files (x86)\imageresizer\imageresizer.php"" ""%L"""; Check: IsX64; MinVersion: 0,6.0.6000

[Code]
function IsX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;
function IsX86: Boolean;
begin
  Result := (ProcessorArchitecture = paX86);
end;
