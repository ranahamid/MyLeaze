page 50124 PropertyListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PropertyTbl;
    Caption = 'Properties';
    CardPageId = PropertyCardPage;

    layout
    {

        area(content)
        {

            repeater(Group)
            {

                field("Property_No"; "Property_No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Property No.';

                }
                field(Property_Description; Property_Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Property Description';
                    Caption = 'Description';
                }
                field(Built_In; Built_In)
                {
                    ApplicationArea = All;
                    Caption = 'Built In';
                }
                field(Number_Of_Stories; Number_Of_Stories)
                {
                    ApplicationArea = All;
                    Caption = 'Number of Stories';
                }
                field(Purchase_Price; Purchase_Price)
                {
                    ApplicationArea = All;
                    Caption = 'Purchase Price';
                }
                field(Loan_Provider; Loan_Provider)
                {
                    ApplicationArea = All;
                    Caption = 'Loan Provider';
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