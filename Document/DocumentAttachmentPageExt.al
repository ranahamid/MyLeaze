pageextension 50121 DocumentAttachmentsExt extends "Document Attachment Details"
{
    layout
    {
        addafter(Name)
        {
            field(Description; Description)
            {
                ApplicationArea = All;
                ToolTip = 'Description';
            }
            field("File Name"; "File Name")
            {
                ApplicationArea = All;
                ToolTip = 'File Name';
            }
        }
    }
}

