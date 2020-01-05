table 50109 TenantTbl
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

        field(50103; FirstName_Tenants; Text[100])
        {
            Description = 'First Name';
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }

        field(50104; LastName_Tenants; Text[100])
        {
            Description = 'Last Name';
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }

        field(50105; DoB_Tenants; Date)
        {
            Description = 'Date of Birth';
            Caption = 'Date of Birth';
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