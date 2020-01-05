page 50206 ContractList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ContactTbl;
    Caption = 'Contact Type List';
    CardPageId = ContactCardPage;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Contact_No; Contact_No)
                {
                    ApplicationArea = All;
                    Caption = 'Contact Type';

                }

                field(Contact_Description; Contact_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Contact Description';
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