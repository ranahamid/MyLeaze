page 50207 ContactDetailsPage
{
    PageType = ListPart;
    SourceTable = ContactDetailsTbl;
    Caption = 'Contact Info';

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
                field(Contact_Type; Contact_Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Contact Type';
                    MultiLine = false;
                    Caption = 'Contact Type';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PM_First_Name; PM_First_Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'First Name';
                    MultiLine = false;
                    Caption = 'First Name';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PM_Last_Name; PM_Last_Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Last Name';
                    MultiLine = false;
                    Caption = 'Last Name';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PM_Phone; PM_Phone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Phone';
                    MultiLine = false;
                    Caption = 'Phone';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PM_Email; PM_Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Email Address';
                    MultiLine = false;
                    Caption = 'Email Address';
                    QuickEntry = true;
                    // ShowMandatory = true;
                }
                field(PM_Address_1; PM_Address_1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Address1';
                    MultiLine = false;
                    Caption = 'Address1';
                    QuickEntry = true;
                    //ShowMandatory = true;
                }
                field(PM_Address_2; PM_Address_2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Address2';
                    MultiLine = false;
                    Caption = 'Address2';
                    QuickEntry = true;
                    //ShowMandatory = true;
                }
                field(PM_City; PM_City)
                {
                    ApplicationArea = All;
                    ToolTip = 'City';
                    MultiLine = false;
                    Caption = 'City';
                    QuickEntry = true;
                    //ShowMandatory = true;
                }
                field(PM_State; PM_State)
                {
                    ApplicationArea = All;
                    ToolTip = 'State';
                    MultiLine = false;
                    Caption = 'State';
                    QuickEntry = true;
                    //ShowMandatory = true;
                }
                field(PM_ZipCode; PM_ZipCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Zip Code';
                    MultiLine = false;
                    Caption = 'Zip Code';
                    QuickEntry = true;
                    //ShowMandatory = true;
                }
                field("PM_Country/Region Code"; "PM_Country/Region Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Country';
                    MultiLine = false;
                    Caption = 'Country';
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