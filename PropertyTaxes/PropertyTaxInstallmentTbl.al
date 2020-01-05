table 50127 PropertyTaxesInstallmentTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50187; "No."; Code[20])
        {
            Description = 'Property No';
            Caption = 'Property No';
            DataClassification = ToBeClassified;
        }
        field(50188; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }

        field(50189; PropertyTax_Installment; Text[200])
        {
            Description = 'Installment';
            Caption = 'Installment';
            DataClassification = ToBeClassified;
        }
        field(50190; PropertyTax_DueDate; Date)
        {
            Description = 'Due Date';
            Caption = 'Due Date';
            DataClassification = ToBeClassified;
        }
        field(50191; PropertyTax_Amount; Decimal)
        {
            Description = 'Amount';
            Caption = 'Amount';
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