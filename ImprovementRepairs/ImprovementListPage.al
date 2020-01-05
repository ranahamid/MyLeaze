page 50213 ImprovementList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ImprovementRepairTbl;
    Caption = 'Improvement/Repair List';
    CardPageId = ImprovementCardPage;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Improvement_No; Improvement_No)
                {
                    ApplicationArea = All;
                    Caption = 'Improvement/Repair Type';

                }

                field(Improvement_Description; Improvement_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
            }
        }
        area(Factboxes)
        {

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