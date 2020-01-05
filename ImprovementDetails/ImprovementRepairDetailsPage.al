page 50210 ImprovementDetailPage
{
    PageType = ListPart;
    SourceTable = ImprovementDetailsTbl;
    Caption = 'Improvement and Repairs';

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
                field(Improvement_Type; Improvement_Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Improvement/Repair Type';
                    MultiLine = false;
                    Caption = 'Improvement/Repair Type';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Improvement_Date; Improvement_Date)
                {
                    ApplicationArea = All;
                    ToolTip = 'Date';
                    MultiLine = false;
                    Caption = 'Date';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Improvement_Estimate; Improvement_Estimate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Estimate';
                    MultiLine = false;
                    Caption = 'Estimate';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Improvement_Actual; Improvement_Actual)
                {
                    ApplicationArea = All;
                    ToolTip = 'Actual';
                    MultiLine = false;
                    Caption = 'Actual';
                    QuickEntry = true;
                }
                field(Contractor_Company; Contractor_Company)
                {
                    ApplicationArea = All;
                    ToolTip = 'Contractor Company';
                    MultiLine = false;
                    Caption = 'Contractor Company';
                    QuickEntry = true;

                }
                field(License_Number; License_Number)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;


                }
                field(Improvement_First_Name; Improvement_First_Name)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(Improvement_Last_Name; Improvement_Last_Name)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(Improvement_Phone; Improvement_Phone)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(Improvement_Email; Improvement_Email)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(Improvement_Address_1; Improvement_Address_1)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(Improvement_Address_2; Improvement_Address_2)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(State; State)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field(ZipCode; ZipCode)
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = All;
                    MultiLine = false;
                    QuickEntry = true;
                    Caption = 'Country';
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