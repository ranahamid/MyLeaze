tableextension 50102 BankTblExt extends "Customer Bank Account"
{

    fields
    {
        // Add changes to table fields here
        field(50100; AccountType_Bank; Option)
        {
            Description = 'Description';
            OptionMembers = " ","Checking","Savings";
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

        field(50101; ACHAuthorization_Bank; Boolean)
        {
            Description = 'ACH Authorization';
            Caption = 'ACH Authorization';
            DataClassification = ToBeClassified;
        }

        field(50102; RoutingNumber_Bank; Text[50])
        {
            Description = 'Routing Number';
            Caption = 'Routing Number';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}