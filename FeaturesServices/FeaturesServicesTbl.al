table 50130 FeaturesServicesTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50212; "Feture_No."; Code[50])
        {
            Description = 'Feture Type';
            Caption = 'Feture Type';
            DataClassification = ToBeClassified;
        }
        field(50214; "Feture_Description"; Text[200])
        {
            Description = 'Description';
            Caption = 'Description';
        }
        // field(50214; "Parking_Spaces_Allotted"; Integer)
        // {
        //     Caption = 'Parking Spaces Allotted';
        //     DataClassification = ToBeClassified;
        // }
        // field(50215; "Parking_Spaces_Free"; Integer)
        // {
        //     Caption = 'Parking Spaces Free';
        //     DataClassification = ToBeClassified;
        // }
        // field(50216; "Laundry"; Integer)
        // {
        //     Caption = 'Laundry';
        //     DataClassification = ToBeClassified;
        // }
        // field(50217; "Fitness_Center"; Integer)
        // {
        //     Caption = 'Fitness Center';
        //     DataClassification = ToBeClassified;
        // }
        // field(50218; "Sauna"; Integer)
        // {
        //     Caption = 'Sauna';
        //     DataClassification = ToBeClassified;
        // }
        // field(50219; "Pool"; Integer)
        // {
        //     Caption = 'Pool';
        //     DataClassification = ToBeClassified;
        // }
        // field(50220; "Spa"; Integer)
        // {
        //     Caption = 'Spa';
        //     DataClassification = ToBeClassified;
        // }

        // field(50221; "Volleyball_Court"; Integer)
        // {
        //     Caption = 'Volleyball Court';
        //     DataClassification = ToBeClassified;
        // }

        // field(50222; "Putting_Greens"; Integer)
        // {
        //     Caption = 'Putting Greens';
        //     DataClassification = ToBeClassified;
        // }

        // field(50223; "Playground"; Integer)
        // {
        //     Caption = 'Playground';
        //     DataClassification = ToBeClassified;
        // }
        // field(50224; "Other"; Integer)
        // {
        //     Caption = 'Other';
        //     DataClassification = ToBeClassified;
        // }
        // field(50225; "Free_Wifi"; Integer)
        // {
        //     Caption = 'Free Wifi';
        //     DataClassification = ToBeClassified;
        // }

        // field(50226; "Controlled_Access"; Boolean)
        // {
        //     Caption = 'Controlled Access';
        //     DataClassification = ToBeClassified;
        // }
        // field(50227; "Property_Manager_on_Site"; Boolean)
        // {
        //     Caption = 'Property Manager on Site';
        //     DataClassification = ToBeClassified;
        // }
        // field(50228; "Dry_Cleaning_Service"; Boolean)
        // {
        //     Caption = 'Dry Cleaning Service';
        //     DataClassification = ToBeClassified;
        // }
        // field(50229; "Guest_Apartment"; Boolean)
        // {
        //     Caption = 'Guest Apartment';
        //     DataClassification = ToBeClassified;
        // }
        // field(50230; "Tennis_Court"; Integer)
        // {
        //     Caption = 'Tennis Court';
        //     DataClassification = ToBeClassified;
        // }

    }

    keys
    {
        key(PK; "Feture_No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

}