page 50200 RiskAreaCardPage
{
    PageType = Card;
    UsageCategory = Tasks;
    SourceTable = RiskAreaTbl;
    AdditionalSearchTerms = 'Risk Area';
    Caption = 'Risk Area';

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                Caption = 'General Information';
                field("Risk_No."; "Risk_No.")
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field(Risk_Description; Risk_Description)
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