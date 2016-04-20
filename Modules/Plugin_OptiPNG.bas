Attribute VB_Name = "Plugin_OptiPNG"
'***************************************************************************
'OptiPNG Interface
'Copyright 2016-2016 by Tanner Helland
'Created: 20/April/16
'Last updated: 20/April/16
'Last update: initial build
'
'Module for handling all OptiPNG interfacing.  This module is pointless without the accompanying
' OptiPNG plugin, which will be in the App/PhotoDemon/Plugins subdirectory as "optipng.exe"
'
'OptiPNG is a free, open-source lossless PNG compression library.  You can learn more about it here:
'
' http://optipng.sourceforge.net/
'
'PhotoDemon has been designed against v0.7.6 (03 April '16).  It may not work with other versions.
' Additional documentation regarding the use of OptiPNG is available as part of the official OptiPNG library,
' downloadable from http://optipng.sourceforge.net/.
'
'OptiPNG is available under the zLib license.  Please see the App/PhotoDemon/Plugins/optipng-LICENSE.txt file
' for questions regarding copyright or licensing.
'
'All source code in this file is licensed under a modified BSD license.  This means you may use the code in your own
' projects IF you provide attribution.  For more information, please visit http://photodemon.org/about/license/
'
'***************************************************************************

Option Explicit

'Retrieve the OptiPNG plugin version.  Shelling the executable with the "-version" tag will cause it to return
' the current version (and compile date) over stdout.
Public Function GetOptiPNGVersion() As String
    
    GetOptiPNGVersion = ""
    
    If PluginManager.IsPluginCurrentlyInstalled(CCP_OptiPNG) Then
        
        Dim pluginPath As String
        pluginPath = g_PluginPath & "optipng.exe"
        
        Dim outputString As String
        If ShellExecuteCapture(pluginPath, "optipng.exe -version", outputString) Then
        
            'The output string is quite large, but the first line will always look like "OptiPNG version 0.7.6".
            ' Split the output by lines, then by spaces, and retrieve the last word of the first line.
            outputString = Trim$(outputString)
            Dim versionLines() As String
            versionLines = Split(outputString, vbCrLf, , vbBinaryCompare)
            
            If VB_Hacks.IsArrayInitialized(versionLines) Then
                
                Dim versionParts() As String
                versionParts = Split(versionLines(0), " ")
                
                If VB_Hacks.IsArrayInitialized(versionParts) Then
                    If UBound(versionParts) >= 2 Then GetOptiPNGVersion = versionParts(2) & ".0"
                End If
            
            End If
            
        End If
        
    End If
    
End Function

