@echo off
SET BDS=D:\Program Files (x86)\Embarcadero\Studio\21.0
SET BDSINCLUDE=D:\Program Files (x86)\Embarcadero\Studio\21.0\include
SET BDSCOMMONDIR=D:\Users\Public\Documents\Embarcadero\Studio\21.0
SET FrameworkDir=D:\Windows\Microsoft.NET\Framework\v4.0.30319
SET FrameworkVersion=v4.5
SET FrameworkSDKDir=
SET PATH=%FrameworkDir%;%FrameworkSDKDir%;D:\Program Files (x86)\Embarcadero\Studio\21.0\bin;D:\Program Files (x86)\Embarcadero\Studio\21.0\bin64;D:\Program Files (x86)\Embarcadero\Studio\21.0\cmake;D:\Users\Public\Documents\Embarcadero\InterBase\redist\InterBaseXE7\IDE_spoof;%PATH%
SET LANGDIR=FR
SET PLATFORM=
SET PlatformSDK=

MSBuild .\Tests\UnitTests.dproj /t:Build /p:config="Release"
