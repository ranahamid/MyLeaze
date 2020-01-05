page 50201 RiskAreaList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = RiskAreaTbl;
    CardPageId = RiskAreaCardPage;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "Risk_No.")
                {
                    ApplicationArea = All;

                }

                field(Risk_Description; Risk_Description)
                {
                    ApplicationArea = All;

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