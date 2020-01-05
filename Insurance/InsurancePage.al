page 50202 InsurancePage
{
    PageType = ListPart;
    SourceTable = InsuranceTbl;
    Caption = 'Insurance';

    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
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
                field(RiskArea_Type; RiskArea_Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Risk Area';
                    MultiLine = false;
                    Caption = 'Risk Area';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Provider; Provider)
                {
                    ApplicationArea = All;
                    ToolTip = 'Provider';
                    MultiLine = false;
                    Caption = 'Provider';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Premium; Premium)
                {
                    ApplicationArea = All;
                    ToolTip = 'Premium';
                    MultiLine = false;
                    Caption = 'Premium';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Coverage; Coverage)
                {
                    ApplicationArea = All;
                    ToolTip = 'Coverage';
                    MultiLine = false;
                    Caption = 'Coverage';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(StartDate; StartDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Start Date';
                    MultiLine = false;
                    Caption = 'Start Date';
                    QuickEntry = true;
                    // ShowMandatory = true;
                }
                field(EndDate; EndDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'End Date';
                    MultiLine = false;
                    Caption = 'End Date';
                    QuickEntry = true;
                    //ShowMandatory = true;
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