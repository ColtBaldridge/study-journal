Attribute VB_Name = "Module1"
Sub FormattingReadings()
Attribute FormattingReadings.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Formatting Macro
'
    Cells.Replace What:="35+", Replacement:="35", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
'    Cells.Replace What:="NA", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
    Cells.Replace What:="~~", Replacement:="", LookAt:=xlPart, SearchOrder _
        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
    Range("A1:N500").Select
    Range("J13").Activate
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With

End Sub
Sub FormatPiping()
Attribute FormatPiping.VB_ProcData.VB_Invoke_Func = "j\n14"
'
' Macro6 Macro
'
    ActiveSheet.Paste
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to the desired column
    ActiveCell.FormulaR1C1 = "=(RC[1]&"" ""&RC[2])"                                                     ' Formula to get the text I want
                                                                                                        ' Needs to apply formula formatting to the rest of column
    ' This line is intentionally left blank.                                                            '   for which there is a value in the corresponding column
    ActiveCell.Offset(0, 1).Select                                                                      ' Shifts active cell to the right
    Selection.End(xlDown).Select                                                                        ' Sends active cell to the bottom of equipment
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell back to column A
    ActiveCell() = "x"
    Selection.End(xlUp).Select
    Selection.AutoFill Destination:=Range(Selection, Selection.End(xlDown)), Type:=xlFillDefault        ' Applies the formula for all applicable cells in the column
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy                                                                                      ' Copies the newly formatted data
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False                                                                       ' Pastes the data, effectively converting it into plaintext
    ActiveCell.Offset(0, 1).Select                                                                      ' Sets active cell back to original column
    Range(Selection, Selection.Offset(0, 1)).Select                                                     ' Highlights cell to the right to select other half of data
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects entire columns for deletion
        Selection.Clear                                                                                 ' Clears original columns that were just formatted
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to properly formatted column
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects all data in formatted column
        Selection.Cut                                                                                   ' Cuts formatted column for moving
        ActiveCell.Offset(0, 1).Select                                                                  ' Sets active cell to destination column
        ActiveSheet.Paste                                                                               ' Pastes cut data
'==========================================
    ActiveCell.Offset(0, 2).Select
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to the desired column
    ActiveCell.FormulaR1C1 = "=(RC[1]&"" ""&RC[2])"                                                     ' Formula to get the text I want
                                                                                                        ' Needs to apply formula formatting to the rest of column
    ' This line is intentionally left blank.                                                            '   for which there is a value in the corresponding column
    ActiveCell.Offset(0, 1).Select                                                                      ' Shifts active cell to the right
    Selection.End(xlDown).Select                                                                        ' Sends active cell to the bottom of equipment
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell back to column A
    ActiveCell() = "x"
    Selection.End(xlUp).Select
    Selection.AutoFill Destination:=Range(Selection, Selection.End(xlDown)), Type:=xlFillDefault        ' Applies the formula for all applicable cells in the column
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy                                                                                      ' Copies the newly formatted data
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False                                                                       ' Pastes the data, effectively converting it into plaintext
    ActiveCell.Offset(0, 1).Select                                                                      ' Sets active cell back to original column
    Range(Selection, Selection.Offset(0, 1)).Select                                                     ' Highlights cell to the right to select other half of data
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects entire columns for deletion
        Selection.Clear                                                                                 ' Clears original columns that were just formatted
'==========================================
    ActiveCell.Offset(0, 2).Select                                                                       ' Sets active cell to prep moving the rest of the data
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, Selection.End(xlToRight)).Select
    Selection.Cut
    ActiveCell.Offset(0, -2).Select
    ActiveSheet.Paste
'==========================================
    Sheets("PartInfo").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    Selection.Copy
    Sheets("PipingData").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 0).Select
    ActiveSheet.Paste
    ActiveCell.Offset(0, 1).Select
    Selection.End(xlDown).Select
    Selection.End(xlToLeft).Select
    Range(Selection, Selection.End(xlUp)).Select
    ActiveSheet.Paste
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 1).Select
    Application.CutCopyMode = False
'=========================================
'    Cells.Replace What:="35+", Replacement:="35", LookAt:=xlPart, _
'        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
'        ReplaceFormat:=False
'    Cells.Replace What:="NA", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Cells.Replace What:="~~", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Range("A1:N500").Select
'    Range("J13").Activate
'    With Selection
'        .HorizontalAlignment = xlCenter
'        .VerticalAlignment = xlBottom
'        .WrapText = False
'        .Orientation = 0
'        .AddIndent = False
'        .IndentLevel = 0
'        .ShrinkToFit = False
'        .ReadingOrder = xlContext
'        .MergeCells = False
'        End With
'   Range("B1").Select
'   Selection.End(xlDown).Offset(1, 0).Select
End Sub

Sub FormatVessel()
Attribute FormatVessel.VB_ProcData.VB_Invoke_Func = "l\n14"
'    ActiveSheet.Paste
'    Selection.TextToColumns DataType:=xlDelimited, ConsecutiveDelimiter:=True, Space:=True
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to the desired column
    ActiveCell.FormulaR1C1 = "=(RC[1]&"" ""&RC[2])"                                                     ' Formula to get the text I want
                                                                                                        ' Needs to apply formula formatting to the rest of column
    ' This line is intentionally left blank.                                                            '   for which there is a value in the corresponding column
    ActiveCell.Offset(0, 1).Select                                                                      ' Shifts active cell to the right
    Selection.End(xlDown).Select                                                                        ' Sends active cell to the bottom of equipment
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell back to column A
    ActiveCell() = "x"
    Selection.End(xlUp).Select
    Selection.AutoFill Destination:=Range(Selection, Selection.End(xlDown)), Type:=xlFillDefault        ' Applies the formula for all applicable cells in the column
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy                                                                                      ' Copies the newly formatted data
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False                                                                       ' Pastes the data, effectively converting it into plaintext
    ActiveCell.Offset(0, 1).Select                                                                      ' Sets active cell back to original column
    Range(Selection, Selection.Offset(0, 1)).Select                                                     ' Highlights cell to the right to select other half of data
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects entire columns for deletion
        Selection.Clear                                                                                 ' Clears original columns that were just formatted
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to properly formatted column
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects all data in formatted column
        Selection.Cut                                                                                   ' Cuts formatted column for moving
        ActiveCell.Offset(0, 1).Select                                                                  ' Sets active cell to destination column
        ActiveSheet.Paste                                                                               ' Pastes cut data
'==========================================
    ActiveCell.Offset(0, 2).Select                                                                       ' Sets active cell to prep moving the rest of the data
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, Selection.End(xlToRight).Offset(0, 3)).Select
    Selection.Cut
    ActiveCell.Offset(0, -1).Select
    ActiveSheet.Paste
'==========================================
    Sheets("PartInfo").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    Selection.Copy
    Sheets("VesselData").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 0).Select
    ActiveSheet.Paste
    ActiveCell.Offset(0, 1).Select
    Selection.End(xlDown).Select
    Selection.End(xlToLeft).Select
    Range(Selection, Selection.End(xlUp)).Select
    ActiveSheet.Paste
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 1).Select
    Application.CutCopyMode = False
'=========================================
'    Cells.Replace What:="35+", Replacement:="35", LookAt:=xlPart, _
'        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
'        ReplaceFormat:=False
'    Cells.Replace What:="NA", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Cells.Replace What:="~~", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Range("A1:N500").Select
'    Range("J13").Activate
'    With Selection
'        .HorizontalAlignment = xlCenter
'        .VerticalAlignment = xlBottom
'        .WrapText = False
'        .Orientation = 0
'        .AddIndent = False
'        .IndentLevel = 0
'        .ShrinkToFit = False
'        .ReadingOrder = xlContext
'        .MergeCells = False
'        End With
'   Range("B1").Select
'   Selection.End(xlDown).Offset(1, 0).Select
End Sub

Sub FormatTank()
Attribute FormatTank.VB_ProcData.VB_Invoke_Func = "k\n14"
'    ActiveSheet.Paste
'    Selection.TextToColumns DataType:=xlDelimited, ConsecutiveDelimiter:=True, Space:=True
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to the desired column
    ActiveCell.FormulaR1C1 = "=(RC[1]&"" ""&RC[2])"                                                     ' Formula to get the text I want
                                                                                                        ' Needs to apply formula formatting to the rest of column
    ' This line is intentionally left blank.                                                            '   for which there is a value in the corresponding column
    ActiveCell.Offset(0, 1).Select                                                                      ' Shifts active cell to the right
    Selection.End(xlDown).Select                                                                        ' Sends active cell to the bottom of equipment
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell back to column A
    ActiveCell() = "x"
    Selection.End(xlUp).Select
    Selection.AutoFill Destination:=Range(Selection, Selection.End(xlDown)), Type:=xlFillDefault        ' Applies the formula for all applicable cells in the column
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy                                                                                      ' Copies the newly formatted data
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False                                                                       ' Pastes the data, effectively converting it into plaintext
    ActiveCell.Offset(0, 1).Select                                                                      ' Sets active cell back to original column
    Range(Selection, Selection.Offset(0, 1)).Select                                                     ' Highlights cell to the right to select other half of data
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects entire columns for deletion
        Selection.Clear                                                                                 ' Clears original columns that were just formatted
    ActiveCell.Offset(0, -1).Select                                                                     ' Sets active cell to properly formatted column
        Range(Selection, Selection.End(xlDown)).Select                                                  ' Selects all data in formatted column
        Selection.Cut                                                                                   ' Cuts formatted column for moving
        ActiveCell.Offset(0, 1).Select                                                                  ' Sets active cell to destination column
        ActiveSheet.Paste                                                                               ' Pastes cut data
'==========================================
    ActiveCell.Offset(0, 2).Select                                                                       ' Sets active cell to prep moving the rest of the data
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, Selection.End(xlToRight).Offset(0, 3)).Select
    Selection.Cut
    ActiveCell.Offset(0, -1).Select
    ActiveSheet.Paste
'==========================================
    Sheets("PartInfo").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    Selection.Copy
    Sheets("TankData").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 0).Select
    ActiveSheet.Paste
    ActiveCell.Offset(0, 1).Select
    Selection.End(xlDown).Select
    Selection.End(xlToLeft).Select
    Range(Selection, Selection.End(xlUp)).Select
    ActiveSheet.Paste
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 1).Select
    Application.CutCopyMode = False
'=========================================
'    Cells.Replace What:="35+", Replacement:="35", LookAt:=xlPart, _
'        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
'        ReplaceFormat:=False
'    Cells.Replace What:="NA", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Cells.Replace What:="~~", Replacement:="", LookAt:=xlPart, SearchOrder _
'        :=xlByRows, MatchCase:=False, SearchFormat:=False, ReplaceFormat:=False
'    Range("A1:N500").Select
'    Range("J13").Activate
'    With Selection
'        .HorizontalAlignment = xlCenter
'        .VerticalAlignment = xlBottom
'        .WrapText = False
'        .Orientation = 0
'        .AddIndent = False
'        .IndentLevel = 0
'        .ShrinkToFit = False
'        .ReadingOrder = xlContext
'        .MergeCells = False
'        End With
'   Range("B1").Select
'   Selection.End(xlDown).Offset(1, 0).Select
End Sub
Sub TestPaste()
ActiveSheet.Paste
AvtiveCell.Offset(0, -1).Select
ActiveCell.Offset(0, 1).Select
Selection.TextToColumns DataType:=xlDelimited, ConsecutiveDelimiter:=True, Space:=True

End Sub

Sub FormatIndividual()
Attribute FormatIndividual.VB_ProcData.VB_Invoke_Func = "m\n14"
 ActiveCell.Offset(0, -1).Select                       ' Sets active cell to the desired column
    ActiveCell.FormulaR1C1 = "=(RC[1]&"" ""&RC[2])"       ' Formula to get the text I want
    Selection.Copy                                          ' Copies the newly formatted data
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False                           ' Pastes the data, effectively converting it into plaintext
    ActiveCell.Offset(0, 2).Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    ActiveCell.Offset(0, -1).Select
    Range(Selection, Selection.Offset(0, -1)).Select
    Selection.Clear
    ActiveCell.Offset(1, 1).Select
End Sub

