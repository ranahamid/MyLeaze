table 50107 ReferenceTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50107; "No."; Code[20])
        {

            Description = 'Customer Number';
            Caption = 'Customer Number';
            DataClassification = ToBeClassified;
        }
        field(50100; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }


        field(50101; Type_Reference; Option)
        {
            Description = 'Type';
            OptionMembers = " ","Reference","Emergency Contact";
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }

        field(50103; Name_Reference; Text[100])
        {
            Description = 'Name';
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }

        field(50104; Address1_Reference; Text[100])
        {
            Description = 'Address Line 1';
            Caption = 'Address Line 1';
            DataClassification = ToBeClassified;
        }

        field(50105; Address2_Reference; Text[100])
        {
            Description = 'Address Line 2';
            Caption = 'Address Line 2';
            DataClassification = ToBeClassified;
        }
        field(50106; Phone_Reference; Text[100])
        {
            Description = 'Contact Phone';
            Caption = 'Contact Phone';
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;
        }

        field(50108; Email_Reference; Text[100])
        {
            Description = 'Email';
            Caption = 'Email';
            ExtendedDatatype = EMail;
            DataClassification = ToBeClassified;
        }

        field(50109; Relationship_Reference; Option)
        {
            Description = 'Name';
            Caption = 'Name';
            OptionMembers = " ","Spuose","Uncle","Brother";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.", "Line No.")
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;
}