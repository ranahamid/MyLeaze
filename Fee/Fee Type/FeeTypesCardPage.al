page 50115 FeeTypesCard
{
    PageType = Card;
    SourceTable = FeeTypesTbl;
    Caption = 'Fee Types';
    UsageCategory = Tasks;
    // ApplicationArea = All;

    layout
    {
        area(content)
        {
            group("Fee Types")
            {
                field(FeeId_FeeTypes; FeeId_FeeTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Fee Name';
                    NotBlank = true;
                    ShowMandatory = true;

                }
                field(Description_FeeTypes; Description_FeeTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Description';

                }
                field(Refundable_FeeTypes; Refundable_FeeTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Refundable';
                    Editable = true;
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
}

