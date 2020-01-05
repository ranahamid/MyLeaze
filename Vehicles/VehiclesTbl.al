table 50105 Vehicle
{

    DataClassification = ToBeClassified;
    fields
    {
        // field(50107; FirstName_Personal; Text[100])
        // {
        //     Description = 'First Name';
        //     Caption = 'First Name';
        //     DataClassification = ToBeClassified;
        // }
        // Add changes to table fields here

        field(50107; "No."; Code[20])
        {

            Description = 'Customer Number';
            Caption = 'Customer Number';
            DataClassification = ToBeClassified;
        }
        field(50104; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(50100; VehicleMake_Tenant; Text[100])
        {

            Description = 'Vehicle Make';
            Caption = 'Vehicle Make';
            DataClassification = ToBeClassified;
        }

        field(50101; ModelVehicle_Tenant; Text[100])
        {
            Description = 'Model';
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }

        field(50102; NumberVehicle_Tenant; Integer)
        {
            Description = 'Number';
            Caption = 'Number';
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