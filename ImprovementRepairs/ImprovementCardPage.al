page 50212 ImprovementCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ImprovementRepairTbl;
    Caption = 'Improvement/Repair Type';

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                Caption = 'General Information';
                field(Improvement_No; Improvement_No)
                {
                    ApplicationArea = All;
                    Caption = 'Improvement/Repair Type';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field(Improvement_Description; Improvement_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
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