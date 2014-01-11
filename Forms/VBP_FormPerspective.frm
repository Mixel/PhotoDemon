VERSION 5.00
Begin VB.Form FormPerspective 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   " Perspective"
   ClientHeight    =   9615
   ClientLeft      =   -15
   ClientTop       =   225
   ClientWidth     =   15135
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   641
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1009
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox cmbMapping 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   360
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   6360
      Width           =   5550
   End
   Begin PhotoDemon.commandBar cmdBar 
      Align           =   2  'Align Bottom
      Height          =   750
      Left            =   0
      TabIndex        =   0
      Top             =   8865
      Width           =   15135
      _ExtentX        =   26696
      _ExtentY        =   1323
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.PictureBox picDraw 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   8640
      Left            =   6000
      ScaleHeight     =   574
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   598
      TabIndex        =   7
      Top             =   120
      Width           =   9000
   End
   Begin VB.ComboBox cmbEdges 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   360
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   7335
      Width           =   5550
   End
   Begin PhotoDemon.fxPreviewCtl fxPreview 
      Height          =   5625
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5625
      _ExtentX        =   9922
      _ExtentY        =   9922
   End
   Begin PhotoDemon.smartOptionButton OptInterpolate 
      Height          =   330
      Index           =   0
      Left            =   240
      TabIndex        =   5
      Top             =   8280
      Width           =   1005
      _ExtentX        =   1773
      _ExtentY        =   635
      Caption         =   "quality"
      Value           =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin PhotoDemon.smartOptionButton OptInterpolate 
      Height          =   330
      Index           =   1
      Left            =   2040
      TabIndex        =   6
      Top             =   8280
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   635
      Caption         =   "speed"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "transformation type:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Index           =   0
      Left            =   120
      TabIndex        =   8
      Top             =   6000
      Width           =   2175
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "if pixels lie outside the image..."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Index           =   5
      Left            =   120
      TabIndex        =   4
      Top             =   6960
      Width           =   3315
   End
   Begin VB.Label lblTitle 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "render emphasis:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   285
      Index           =   2
      Left            =   120
      TabIndex        =   1
      Top             =   7890
      Width           =   1845
   End
End
Attribute VB_Name = "FormPerspective"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'***************************************************************************
'Image Perspective Distortion
'Copyright �2013-2014 by Tanner Helland
'Created: 08/April/13
'Last updated: 30/August/13
'Last update: added an option for forward or reverse transformations.  I was hesitant to do this previously, because
'             the difference is confusing, but I think I've finally found a way to present it that won't alienate
'             casual users.  Hopefully this is the best of both worlds, as the reverse option really is nice if you
'             have a reference object in the source image that needs to be perspective-corrected.
'
'This tool allows the user to apply arbitrary perspective to an image.  The code is fairly involved linear
' algebra, as a series of equations must be solved to generate the homography matrix used for the transform.
' For a more detailed explanation of the math and theory behind projective transforms, please visit:
'
' http://en.wikipedia.org/wiki/Homography
'
'As with all distorts, reverse-mapping is used to allow for high-quality antialiasing.
'
'I used a number of projects as references while build this tool.  Thank you to the following:
'
' http://www.cs.cmu.edu/~ph/texfund/texfund.pdf
' http://www.imagemagick.org/Usage/distorts/#perspective
' http://stackoverflow.com/questions/169902/projective-transformation
' http://freespace.virgin.net/hugo.elias/graphics/x_persp.htm
' http://stackoverflow.com/questions/530396/how-to-draw-a-perspective-correct-grid-in-2d?lq=1
'
'All source code in this file is licensed under a modified BSD license.  This means you may use the code in your own
' projects IF you provide attribution.  For more information, please visit http://photodemon.org/about/license/
'
'***************************************************************************

Option Explicit

'When previewing, we need to modify all measurements by the ratio between the (generally smaller) preview image
' and the full-size image.
Dim iWidth As Long, iHeight As Long

'Width and height of the preview image
Dim m_previewWidth As Long, m_previewHeight As Long

'Control points for the live preview box
Private Type fPoint
    pX As Double
    pY As Double
End Type

'We track two sets of control point coordinates - the original points, and the new points.  The difference between
' these is passed to the perspective function.
Dim m_oPoints(0 To 3) As fPoint
Dim m_nPoints(0 To 3) As fPoint

'Track mouse status between MouseDown and MouseMove events
Dim m_isMouseDown As Boolean

'Currently selected node in the workspace area
Dim m_selPoint As Long

'How close to a node the user must click to select that node
Private Const mouseAccuracy As Byte = 6

'Custom tooltip class allows for things like multiline, theming, and multiple monitor support
Dim m_ToolTip As clsToolTip

Private Sub cmbEdges_Click()
    updatePreview
End Sub

Private Sub cmbEdges_Scroll()
    updatePreview
End Sub

'Apply horizontal and/or vertical perspective to an image by shrinking it in one or more directions
' Input: the coordinates of the four corners of the transformed image, stored inside a "|"-delimited string.  To see how
'        these points are generated by the preview picture box, visit the getPerspectiveParamString() function at the
'        bottom of this page.
Public Sub PerspectiveImage(ByVal listOfModifiers As String, Optional ByVal toPreview As Boolean = False, Optional ByRef dstPic As fxPreviewCtl)

    If Not toPreview Then Message "Applying new perspective..."
    
    'Create a local array and point it at the pixel data of the current image
    Dim dstImageData() As Byte
    Dim dstSA As SAFEARRAY2D
    prepImageData dstSA, toPreview, dstPic
    CopyMemory ByVal VarPtrArray(dstImageData()), VarPtr(dstSA), 4
    
    'Create a second local array.  This will contain the a copy of the current image, and we will use it as our source reference
    ' (This is necessary to prevent translated pixels from spreading across the image as we go.)
    Dim srcImageData() As Byte
    Dim srcSA As SAFEARRAY2D
    
    Dim srcDIB As pdDIB
    Set srcDIB = New pdDIB
    srcDIB.createFromExistingDIB workingDIB
    
    prepSafeArray srcSA, srcDIB
    CopyMemory ByVal VarPtrArray(srcImageData()), VarPtr(srcSA), 4
        
    'Local loop variables can be more efficiently cached by VB's compiler, so transfer all relevant loop data here
    Dim x As Long, y As Long, initX As Long, initY As Long, finalX As Long, finalY As Long
    initX = curDIBValues.Left
    initY = curDIBValues.Top
    finalX = curDIBValues.Right
    finalY = curDIBValues.Bottom
    
    'These values will help us access locations in the array more quickly.
    ' (qvDepth is required because the image array may be 24 or 32 bits per pixel, and we want to handle both cases.)
    Dim QuickVal As Long, qvDepth As Long
    qvDepth = curDIBValues.BytesPerPixel
    
    'Parse the incoming parameter string into individual (x, y) pairs
    Dim cParams As pdParamString
    Set cParams = New pdParamString
    If Len(listOfModifiers) > 0 Then cParams.setParamString listOfModifiers
    
    'See if the user wants a rect -> quad ("Normal" in GIMP) or quad -> rect ("Corrective" in GIMP) mapping
    Dim correctiveProjection As Boolean
    If cParams.GetLong(9) = 0 Then
        correctiveProjection = False
    Else
        correctiveProjection = True
    End If
    
    'Create a filter support class, which will aid with edge handling and interpolation
    Dim fSupport As pdFilterSupport
    Set fSupport = New pdFilterSupport
    fSupport.setDistortParameters qvDepth, cParams.GetLong(10), cParams.GetBool(11), curDIBValues.maxX, curDIBValues.MaxY
    
    'To keep processing quick, only update the progress bar when absolutely necessary.  This function calculates that value
    ' based on the size of the area to be processed.
    Dim progBarCheck As Long
    progBarCheck = findBestProgBarValue()
            
    'Store region width and height as floating-point
    Dim imgWidth As Double, imgHeight As Double
    imgWidth = finalX - initX
    imgHeight = finalY - initY
    
    'If this is a preview, we need to adjust the width and height values to match the size of the preview box
    Dim wModifier As Double, hModifier As Double
    wModifier = 1
    hModifier = 1
    If toPreview Then
        wModifier = (imgWidth / iWidth)
        hModifier = (imgHeight / iHeight)
    End If
    
    'Scale quad coordinates to the size of the image.  (This is useful for batch processing, because we perform all
    ' calculations in terms of the unit square.  Thus the transform values of a 1000x1000 image will still be valid
    ' for say a 100x100 image.)
    Dim invWidth As Double, invHeight As Double
    invWidth = 1 / imgWidth
    invHeight = 1 / imgHeight
    
    'Copy the points given by the user (which are currently strings) into individual floating-point variables
    Dim x0 As Double, x1 As Double, x2 As Double, x3 As Double
    Dim y0 As Double, y1 As Double, y2 As Double, y3 As Double
    
    x0 = cParams.GetDouble(1)
    y0 = cParams.GetDouble(2)
    x1 = cParams.GetDouble(3)
    y1 = cParams.GetDouble(4)
    x2 = cParams.GetDouble(5)
    y2 = cParams.GetDouble(6)
    x3 = cParams.GetDouble(7)
    y3 = cParams.GetDouble(8)
        
    If toPreview Then
        x0 = x0 * wModifier
        y0 = y0 * hModifier
        x1 = x1 * wModifier
        y1 = y1 * hModifier
        x2 = x2 * wModifier
        y2 = y2 * hModifier
        x3 = x3 * wModifier
        y3 = y3 * hModifier
    End If
    
    'Map those coordinates to the unit square by multiplying them by "1 / image_width"
    ' or "1 / image_height" as appropriate.
    x0 = x0 * invWidth
    y0 = y0 * invHeight
    x1 = x1 * invWidth
    y1 = y1 * invHeight
    x2 = x2 * invWidth
    y2 = y2 * invHeight
    x3 = x3 * invWidth
    y3 = y3 * invHeight
    
    'First things first: we need to map the original image (now in terms of the unit square)
    ' to the arbitrary quadrilateral defined by the user's parameters
    Dim dx1 As Double, dy1 As Double, dx2 As Double, dy2 As Double, dx3 As Double, dy3 As Double
    dx1 = x1 - x2
    dy1 = y1 - y2
    dx2 = x3 - x2
    dy2 = y3 - y2
    dx3 = x0 - x1 + x2 - x3
    dy3 = y0 - y1 + y2 - y3
    
    'Technically, these are points in a matrix - and they could be defined as an array.  But VB accesses
    ' individual data types more quickly than an array, so we declare them separately.
    Dim h11 As Double, h21 As Double, h31 As Double
    Dim h12 As Double, h22 As Double, h32 As Double
    Dim h13 As Double, h23 As Double, h33 As Double
    
    'Certain values can lead to divide-by-zero problems - check those in advance and convert 0 to something like 0.000001
    Dim chkDenom As Double
    chkDenom = (dx1 * dy2 - dy1 * dx2)
    If chkDenom = 0 Then chkDenom = 0.000000001
    
    h13 = (dx3 * dy2 - dx2 * dy3) / chkDenom
    h23 = (dx1 * dy3 - dy1 * dx3) / chkDenom
    h11 = x1 - x0 + h13 * x1
    h21 = x3 - x0 + h23 * x3
    h31 = x0
    h12 = y1 - y0 + h13 * y1
    h22 = y3 - y0 + h23 * y3
    h32 = y0
    h33 = 1
    
    'Next, we need to calculate the key set of transformation parameters, using the reverse-map data we just generated.
    ' Again, these are technically just matrix entries, but we get better performance by declaring them individually.
    Dim hA As Double, hB As Double, hC As Double
    Dim hD As Double, hE As Double, hF As Double
    Dim hG As Double, hH As Double, hI As Double
    
    hA = h22 * h33 - h32 * h23
    hB = h31 * h23 - h21 * h33
    hC = h21 * h32 - h31 * h22
    hD = h32 * h13 - h12 * h33
    hE = h11 * h33 - h31 * h13
    hF = h31 * h12 - h11 * h32
    hG = h12 * h23 - h22 * h13
    hH = h21 * h13 - h11 * h23
    hI = h11 * h22 - h21 * h12
        
    'We now have two options.  We can either...
    ' 1) Proceed with the projection mapping, which assumes a RECTANGULAR source area and a QUADRILATERAL destination
    '    area. (GIMP calls this Normal/Forward which is confusing from a coding standpoint, because it's still
    '    reverse-mapping, where the user-drawn quadrilateral defines the boundaries of the destination area.)
    ' 2) Invert the mapping matrix we've created, which changes the assumption to a QUADRILATERAL source area and a
    '    RECTANGULAR destination area.  (GIMP calls this Corrective/Backward which is again confusing, as "Normal"
    '    mapping is still a perfectly valid way to correct perspective distortion.  Anyway, this additional operation
    '    simply changes the user-drawn quadrilateral to define the boundaries of the source area.)
    
    If correctiveProjection Then
    
        'Invert the transformation using the adjoint of the forward mapping.  If you don't know what an adjoint is
        ' (don't worry, most don't! :), we're basically reversing the plane-to-plane mapping by which we've defined
        ' this particular projection.  (This means that we want the quadrilateral to define a section of the SOURCE
        ' image instead of a section of the DESTINATION image.)  For a detailed explanation of this process, please
        ' read pages 24-25 of Paul Heckbert's thesis on projective transformations, which is really the best source
        ' for understanding projective mappings in general: http://www.cs.cmu.edu/~ph/texfund/texfund.pdf
        Dim newA As Double, newB As Double, newC As Double
        Dim newD As Double, newE As Double, newF As Double
        Dim newG As Double, newH As Double, newI As Double
        
        newA = hE * hI - hF * hH
        newB = hC * hH - hB * hI
        newC = hB * hF - hC * hE
        
        newD = hF * hG - hD * hI
        newE = hA * hI - hC * hG
        newF = hC * hD - hA * hF
        
        newG = hD * hH - hE * hG
        newH = hB * hG - hA * hH
        newI = hA * hE - hB * hD
    
        hA = newA
        hB = newB
        hC = newC
        hD = newD
        hE = newE
        hF = newF
        hG = newG
        hH = newH
        hI = newI
        
    End If
        
    'Scale those values to match the size of the transformed image
    hA = hA * invWidth
    hD = hD * invWidth
    hG = hG * invWidth
    hB = hB * invHeight
    hE = hE * invHeight
    hH = hH * invHeight
    
    'With all that data calculated in advanced, the actual transform is quite simple.
            
    'Source X and Y values, which may or may not be used as part of a bilinear interpolation function
    Dim srcX As Double, srcY As Double
    
    'Loop through each pixel in the image, converting values as we go
    For x = initX To finalX
        QuickVal = x * qvDepth
    For y = initY To finalY
                
        'Reverse-map the coordinates back onto the original image (to allow for resampling)
        chkDenom = (hG * x + hH * y + hI)
        If chkDenom = 0 Then chkDenom = 0.000000001
        
        srcX = imgWidth * (hA * x + hB * y + hC) / chkDenom
        srcY = imgHeight * (hD * x + hE * y + hF) / chkDenom
                
        'The lovely .setPixels routine will handle edge detection and interpolation for us as necessary
        fSupport.setPixels x, y, srcX, srcY, srcImageData, dstImageData
                
    Next y
        If toPreview = False Then
            If (x And progBarCheck) = 0 Then
                If userPressedESC() Then Exit For
                SetProgBarVal x
            End If
        End If
    Next x
    
    'With our work complete, point both ImageData() arrays away from their DIBs and deallocate them
    CopyMemory ByVal VarPtrArray(srcImageData), 0&, 4
    Erase srcImageData
    
    CopyMemory ByVal VarPtrArray(dstImageData), 0&, 4
    Erase dstImageData
    
    'Pass control to finalizeImageData, which will handle the rest of the rendering
    finalizeImageData toPreview, dstPic
        
End Sub

Private Sub cmbMapping_Click()
    redrawPreviewBox
    updatePreview
End Sub

Private Sub cmdBar_AddCustomPresetData()
    
    'Place all node data into a single string, then write that string out to file
    Dim nodeString As String
    nodeString = ""
    
    Dim i As Long
    For i = 0 To 3
        nodeString = nodeString & CStr(m_nPoints(i).pX) & "," & CStr(m_nPoints(i).pY)
        If i < 3 Then nodeString = nodeString & "|"
    Next i
    
    cmdBar.addPresetData "NodeLocations", nodeString
    
End Sub

Private Sub cmdBar_OKClick()
    Process "Perspective", , getPerspectiveParamString
End Sub

Private Sub cmdBar_RandomizeClick()

    Randomize Timer
    
    'Set the points in the current area to random values - not much to see here!
    Dim i As Long
    For i = 0 To 3
        m_nPoints(i).pX = Rnd * picDraw.ScaleWidth
        m_nPoints(i).pY = Rnd * picDraw.ScaleHeight
    Next i
    
End Sub

Private Sub cmdBar_ReadCustomPresetData()
    
    'Retrieve the string that contains the node coordinates
    Dim tmpString As String
    tmpString = cmdBar.retrievePresetData("NodeLocations")
    
    'With the help of a paramString class, parse out individual coordinates into the cNodes array
    Dim cParams As pdParamString
    Set cParams = New pdParamString
    cParams.setParamString Replace(tmpString, ",", "|")
    
    Dim i As Long
    For i = 0 To 3
        
        'Retrieve this node's x and y values
        m_nPoints(i).pX = cParams.GetLong(i * 2 + 1)
        m_nPoints(i).pY = cParams.GetLong(i * 2 + 2)
        
    Next i
    
End Sub

Private Sub cmdBar_RequestPreviewUpdate()
    redrawPreviewBox
    updatePreview
End Sub

Private Sub cmdBar_ResetClick()
        
    'Set edge handling to match the default specified in Form_Load
    cmbEdges.ListIndex = EDGE_ERASE
    
    'Copy the original values into the "current values" point array and redraw everything
    Dim i As Long
    For i = 0 To 3
        m_nPoints(i).pX = m_oPoints(i).pX
        m_nPoints(i).pY = m_oPoints(i).pY
    Next i
        
    redrawPreviewBox
    updatePreview
    
End Sub

Private Sub Form_Activate()
        
    'Assign the system hand cursor to all relevant objects
    Set m_ToolTip = New clsToolTip
    makeFormPretty Me, m_ToolTip
        
    'Create the preview
    cmdBar.markPreviewStatus True
    redrawPreviewBox
    updatePreview
    
End Sub

Private Sub Form_Load()

    'Disable all previews while we initialize the dialog
    cmdBar.markPreviewStatus False
    
    'I use a central function to populate the edge handling combo box; this way, I can add new methods and have
    ' them immediately available to all distort functions.
    popDistortEdgeBox cmbEdges, EDGE_ERASE
    
    'Populate the mapping type combo box
    cmbMapping.Clear
    cmbMapping.AddItem " forward (outline defines destination area)", 0
    cmbMapping.AddItem " reverse (outline defines source area)", 1
    
    'Note the current image's width and height, which will be needed to adjust the preview effect
    If pdImages(g_CurrentImage).selectionActive Then
        iWidth = pdImages(g_CurrentImage).mainSelection.boundWidth
        iHeight = pdImages(g_CurrentImage).mainSelection.boundHeight
    Else
        iWidth = pdImages(g_CurrentImage).Width
        iHeight = pdImages(g_CurrentImage).Height
    End If
        
    'Determine the size of the preview image
    convertAspectRatio iWidth, iHeight, fxPreview.getPreviewWidth, fxPreview.getPreviewHeight, m_previewWidth, m_previewHeight
    
    'Determine initial points for the draw area
    m_oPoints(0).pX = (picDraw.ScaleWidth - m_previewWidth) / 2
    m_oPoints(0).pY = (picDraw.ScaleHeight - m_previewHeight) / 2
    
    m_oPoints(1).pX = m_oPoints(0).pX + m_previewWidth
    m_oPoints(1).pY = m_oPoints(0).pY
    
    m_oPoints(2).pX = m_oPoints(0).pX + m_previewWidth
    m_oPoints(2).pY = m_oPoints(0).pY + m_previewHeight
    
    m_oPoints(3).pX = m_oPoints(0).pX
    m_oPoints(3).pY = m_oPoints(0).pY + m_previewHeight
    
    'Copy those values into the "current values" point array
    Dim i As Long
    For i = 0 To 3
        m_nPoints(i).pX = m_oPoints(i).pX
        m_nPoints(i).pY = m_oPoints(i).pY
    Next i
        
    'Mark the mouse as not being down
    m_isMouseDown = False
        
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ReleaseFormTheming Me
End Sub

Private Sub OptInterpolate_Click(Index As Integer)
    updatePreview
End Sub

'Redraw the on-screen preview of the transformed image
Private Sub updatePreview()
    If cmdBar.previewsAllowed Then PerspectiveImage getPerspectiveParamString, True, fxPreview
End Sub

Private Sub redrawPreviewBox()

    picDraw.Cls
    
    'Start by drawing a grid through the center of the image
    picDraw.DrawWidth = 1
    picDraw.ForeColor = RGB(172, 172, 172)
    picDraw.Line (0, picDraw.Height / 2)-(picDraw.Width, picDraw.Height / 2)
    picDraw.Line (picDraw.Width / 2, 0)-(picDraw.Width / 2, picDraw.Height)
    
    'Next, we will do one of two things:
    ' 1) For forward mapping, draw a silhouette around the original image outline.
    ' 2) For reverse mapping, just draw the image itself.
    If cmbMapping.ListIndex = 0 Then
        Dim i As Long
        For i = 0 To 3
            If i < 3 Then
                picDraw.Line (m_oPoints(i).pX, m_oPoints(i).pY)-(m_oPoints(i + 1).pX, m_oPoints(i + 1).pY)
            Else
                picDraw.Line (m_oPoints(i).pX, m_oPoints(i).pY)-(m_oPoints(0).pX, m_oPoints(0).pY)
            End If
        Next i
    Else
        If cmdBar.previewsAllowed Then
            Dim tmpSA As SAFEARRAY2D
            prepImageData tmpSA, True, fxPreview
            StretchBlt picDraw.hDC, m_oPoints(0).pX, m_oPoints(0).pY, m_oPoints(1).pX - m_oPoints(0).pX, m_oPoints(2).pY - m_oPoints(0).pY, workingDIB.getDIBDC, 0, 0, workingDIB.getDIBWidth, workingDIB.getDIBHeight, vbSrcCopy
        End If
    End If
    
    'Next, draw connecting lines to form an image outline.  Use GDI+ for superior results (e.g. antialiasing).
    Dim oTransparency As Long
    oTransparency = 192
    
    picDraw.ForeColor = RGB(0, 0, 255)
    For i = 0 To 3
        If i < 3 Then
            GDIPlusDrawLineToDC picDraw.hDC, m_nPoints(i).pX, m_nPoints(i).pY, m_nPoints(i + 1).pX, m_nPoints(i + 1).pY, picDraw.ForeColor, oTransparency, 2
        Else
            GDIPlusDrawLineToDC picDraw.hDC, m_nPoints(i).pX, m_nPoints(i).pY, m_nPoints(0).pX, m_nPoints(0).pY, picDraw.ForeColor, oTransparency, 2
        End If
    Next i
    
    'Next, draw circles at the corners of the perspective area
    For i = 0 To 3
        GDIPlusDrawCanvasCircle picDraw.hDC, m_nPoints(i).pX, m_nPoints(i).pY, 7, oTransparency
    Next i
    
    'Finally, draw the center cross to help the user orient to the center point of the perspective effect
    GDIPlusDrawLineToDC picDraw.hDC, m_nPoints(0).pX, m_nPoints(0).pY, m_nPoints(2).pX, m_nPoints(2).pY, RGB(0, 0, 255), 128
    GDIPlusDrawLineToDC picDraw.hDC, m_nPoints(1).pX, m_nPoints(1).pY, m_nPoints(3).pX, m_nPoints(3).pY, RGB(0, 0, 255), 128
    
    picDraw.Refresh

End Sub

Private Sub picDraw_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    m_isMouseDown = True
    
    'If the mouse is over a point, mark it as the active point
    m_selPoint = checkClick(x, y)
    
End Sub

Private Sub picDraw_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)

    'If the mouse is not down, indicate to the user that points can be moved
    If Not m_isMouseDown Then
        
        'If the user is close to a knot, change the mousepointer to 'move'
        If checkClick(x, y) > -1 Then
            If picDraw.MousePointer <> 5 Then picDraw.MousePointer = 5
            
            Select Case checkClick(x, y)
                Case 0
                    picDraw.ToolTipText = g_Language.TranslateMessage("top-left")
                Case 1
                    picDraw.ToolTipText = g_Language.TranslateMessage("top-right")
                Case 2
                    picDraw.ToolTipText = g_Language.TranslateMessage("bottom-right")
                Case 3
                    picDraw.ToolTipText = g_Language.TranslateMessage("bottom-left")
                    
            End Select
            
        Else
            If picDraw.MousePointer <> 0 Then picDraw.MousePointer = 0
        End If
    
    'If the mouse is down, move the current point and redraw the preview
    Else
    
        If m_selPoint >= 0 Then
            m_nPoints(m_selPoint).pX = x
            m_nPoints(m_selPoint).pY = y
            redrawPreviewBox
            updatePreview
        End If
    
    End If

End Sub

Private Sub picDraw_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    m_isMouseDown = False
    m_selPoint = -1
End Sub

'Simple distance routine to see if a location on the picture box is near an existing point
Private Function checkClick(ByVal x As Long, ByVal y As Long) As Long
    Dim dist As Double
    Dim i As Long
    For i = 0 To 3
        dist = pDistance(x, y, m_nPoints(i).pX, m_nPoints(i).pY)
        'If we're close to an existing point, return the index of that point
        If dist < mouseAccuracy Then
            checkClick = i
            Exit Function
        End If
    Next i
    'Returning -1 says we're not close to an existing point
    checkClick = -1
End Function

'Simple distance formula here - we use this to calculate if the user has clicked on (or near) a point
Private Function pDistance(ByVal x1 As Long, ByVal y1 As Long, ByVal x2 As Long, ByVal y2 As Long) As Double
    pDistance = Sqr((x1 - x2) ^ 2 + (y1 - y2) ^ 2)
End Function

'Take the current tool settings and merge them into a parameter string
Private Function getPerspectiveParamString() As String

    Dim paramString As String
    paramString = ""

    'Top-left
    paramString = (m_nPoints(0).pX - m_oPoints(0).pX) * (iWidth / m_previewWidth)
    paramString = paramString & "|" & (m_nPoints(0).pY - m_oPoints(0).pY) * (iHeight / m_previewHeight)
    
    'Top-right
    paramString = paramString & "|" & (iWidth + ((m_nPoints(1).pX - m_oPoints(1).pX) * (iWidth / m_previewWidth)))
    paramString = paramString & "|" & (m_nPoints(1).pY - m_oPoints(1).pY) * (iHeight / m_previewHeight)
    
    'Bottom-right
    paramString = paramString & "|" & (iWidth + ((m_nPoints(2).pX - m_oPoints(2).pX) * (iWidth / m_previewWidth)))
    paramString = paramString & "|" & (iHeight + (m_nPoints(2).pY - m_oPoints(2).pY) * (iHeight / m_previewHeight))
    
    'Bottom-left
    paramString = paramString & "|" & ((m_nPoints(3).pX - m_oPoints(3).pX) * (iWidth / m_previewWidth))
    paramString = paramString & "|" & (iHeight + (m_nPoints(3).pY - m_oPoints(3).pY) * (iHeight / m_previewHeight))
    
    'Quad to square or square to quad
    paramString = paramString & "|" & CLng(cmbMapping.ListIndex)
    
    'Edge handling
    paramString = paramString & "|" & CLng(cmbEdges.ListIndex)
    
    'Resampling
    paramString = paramString & "|" & OptInterpolate(0).Value
    
    getPerspectiveParamString = paramString

End Function

'If the user changes the position and/or zoom of the preview viewport, the entire preview must be redrawn.
Private Sub fxPreview_ViewportChanged()
    updatePreview
End Sub

