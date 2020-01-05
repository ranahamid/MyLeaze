page 50110 TenantCard
{
    PageType = ListPart;
    SourceTable = TenantTbl;
    Caption = 'Tenants';

    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    layout
    {
        area(content)
        {

            repeater(Group)
            {

                field(CustomerNumber_Reference; "No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Visible = false;
                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                    Editable = false;
                }



                field(FirstName_Tenants; FirstName_Tenants)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the First Name';
                    MultiLine = false;
                    Caption = 'First Name';
                    QuickEntry = true;
                    ShowMandatory = true;
                }

                field(LastName_Tenants; LastName_Tenants)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Last Name';
                    MultiLine = false;
                    Caption = 'Last Name';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(DoB_Tenants; DoB_Tenants)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Date of Birth';
                    MultiLine = false;
                    Caption = 'Date of Birth';
                    QuickEntry = true;
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