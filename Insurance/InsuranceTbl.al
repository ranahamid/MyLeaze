table 50125 InsuranceTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50179; "No."; Code[20])
        {
            Description = 'Property Number';
            Caption = 'Property Number';
            DataClassification = ToBeClassified;
        }
        field(50180; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(50181; RiskArea_Type; Code[50])
        {
            Description = 'Risk Area';
            Caption = 'Risk Area';
            TableRelation = RiskAreaTbl."Risk_No.";
            DataClassification = ToBeClassified;
        }

        field(50182; Provider; Text[100])
        {
            Description = 'Provider';
            Caption = 'Provider';
            DataClassification = ToBeClassified;
        }

        field(50183; Premium; Text[100])
        {
            Description = 'Provider';
            Caption = 'Provider';
            DataClassification = ToBeClassified;
        }
        field(50184; Coverage; Text[100])
        {
            Description = 'Provider';
            Caption = 'Provider';
            DataClassification = ToBeClassified;
        }
        field(50185; StartDate; Date)
        {
            Description = 'Start Date';
            Caption = 'Start Date';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            begin
                IF Rec.StartDate > Rec.EndDate THEN
                    Rec.FIELDERROR(Rec.StartDate, Text001);
            end;
        }
        field(50186; EndDate; Date)
        {
            Description = 'End Date';
            Caption = 'End Date';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            begin
                IF Rec.EndDate < Rec.StartDate THEN
                    Rec.FIELDERROR(Rec.EndDate, Text002);
            end;
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
        Text001: Label 'must be less than End Date.';
        Text002: Label 'must be greater than Start Date.';
}