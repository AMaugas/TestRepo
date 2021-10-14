@echo off
SET BDS=C:\Program Files (x86)\Embarcadero\Studio\21.0
SET BDSINCLUDE=C:\Program Files (x86)\Embarcadero\Studio\21.0\include
SET BDSCOMMONDIR=C:\Users\Public\Documents\Embarcadero\Studio\21.0
SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\v4.0.30319
SET FrameworkVersion=v4.5
SET FrameworkSDKDir=
SET PATH=%FrameworkDir%;%FrameworkSDKDir%;C:\Program Files (x86)\Embarcadero\Studio\21.0\bin;C:\Program Files (x86)\Embarcadero\Studio\21.0\bin64;C:\Program Files (x86)\Embarcadero\Studio\21.0\cmake;C:\Users\Public\Documents\Embarcadero\InterBase\redist\InterBaseXE7\IDE_spoof;%PATH%
SET LANGDIR=EN

@ MSbuild .\Tests\UnitTests.dproj /t:Build /p:config="Release" /p:DCC_Define="CI" /verbosity:quiet
