page 50108 ReferenceCard
{
    PageType = ListPart;
    SourceTable = ReferenceTbl;
    Caption = 'References / Emergency Contacts';

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



                field(Type_Reference; Type_Reference)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Type of Reference';
                    MultiLine = false;
                    Caption = 'Type';
                    QuickEntry = true;
                    ShowMandatory = true;
                }

                field(Name_Reference; Name_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Name';
                    MultiLine = false;
                    Caption = 'Name';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Address1_Reference; Address1_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Address 1';
                    MultiLine = false;
                    Caption = 'Address 1';
                    QuickEntry = true;
                }
                field(Address2_Reference; Address2_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Address 2';
                    MultiLine = false;
                    Caption = 'Address 2';
                    QuickEntry = true;
                }
                field(Phone_Reference; Phone_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Phone';
                    MultiLine = false;
                    Caption = 'Phone';
                    QuickEntry = true;
                    ExtendedDatatype = PhoneNo;
                }

                field(Email_Reference; Email_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Email';
                    MultiLine = false;
                    Caption = 'Email';
                    QuickEntry = true;
                    ExtendedDatatype = EMail;
                }
                field(Relationship_Reference; Relationship_Reference)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Relationship';
                    MultiLine = false;
                    Caption = 'Relationship';
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