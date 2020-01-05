table 50131 FeatureContainerTble
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50215; "No."; Code[20])
        {
            Description = 'Property Number';
            Caption = 'Property Number';
            DataClassification = ToBeClassified;
        }
        field(50216; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(50217; Feture_Type; Code[50])
        {
            Description = 'Feature Type';
            Caption = 'Feature Type';
            TableRelation = FeaturesServicesTbl."Feture_No.";
            DataClassification = ToBeClassified;
        }

        field(50218; Feature_Value; Integer)
        {
            Description = 'Value';
            Caption = 'Value';
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