table 50124 RiskAreaTbl
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50177; "Risk_No."; Code[50])
        {
            Description = 'Name';
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }

        field(50178; "Risk_Description"; Text[200])
        {
            Description = 'Risk Area Description';
            Caption = 'Risk Area Description';
            //DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Risk_No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;



}