page 50205 ContactCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ContactTbl;
    Caption = 'Contact Type';

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                Caption = 'General Information';
                field(Contact_No; Contact_No)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field(Contact_Description; Contact_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    // Editable = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}