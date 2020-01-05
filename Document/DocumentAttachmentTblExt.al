tableextension 50119 DocumentAttachmentTblExt extends "Document Attachment"
{

    fields
    {
        // Add changes to table fields here
        field(50100; Description; Text[2000])
        {
            Description = 'Description';
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }

    var
        myInt: Integer;
}