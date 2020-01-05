page 50120 DocumentAttachmentsCustFactExt
{
    PageType = CardPart;
    SourceTable = "Document Attachment";
    Caption = 'Documents';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Table ID"; "Table ID")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }

                field("File Name"; "File Name")
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    Width = 10;
                }
                field("File Extension"; "File Extension")
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    Visible = false;
                }
                field("Document Type"; "Document Type")
                {

                    ApplicationArea = All;
                    MultiLine = false;
                    Caption = 'Document Type';
                    Visible = false;
                }
                field(User; User)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    Visible = false;
                }
                field("Attached Date"; "Attached Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }

    }

}