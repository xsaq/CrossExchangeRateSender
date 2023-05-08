Function FormatDoc()

    Range("D1").Value = "����"
    Range("E1").Value = "����"
    Range("F1").Value = "�����"

    Columns("A:G").AutoFit

    Range("B:B,G:G").NumberFormat = _
        "_-* #,##0.00_?_._-;-* #,##0.00_?_._-;_-* ""-""??_?_._-;_-@_-"
    Columns("E").NumberFormat = _
        "_-* #,##0.0000_�_._-;-* #,##0.0000_�_._-;_-* ""-""????_�_._-;_-@_-"

	FormatDoc = IIf(Application.WorksheetFunction.Sum(Range("G2:G32")) > 0, 0, 1)

End Function
