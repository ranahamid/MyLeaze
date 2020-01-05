page 50114 FeeTypesListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = FeeTypesTbl;
    Caption = 'Fee Types';
    CardPageId = FeeTypesCard;

    layout
    {

        area(content)
        {

            repeater(Group)
            {

                field(FeeId_FeeTypes; FeeId_FeeTypes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Fee Types';

                }
                field(Description_FeeTypes; Description_FeeTypes)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description';
                    Caption = 'Description';
                }
                field(Refundable_FeeTypes; Refundable_FeeTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Refundable';

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

                trigger OnAction();
                begin

                end;
            }
        }
    }

}