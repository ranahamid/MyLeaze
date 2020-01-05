table 50128 ContactTbl
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50192; Contact_No; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Contact Type';
        }
        field(50193; "Contact_Description"; Text[200])
        {
            Description = 'Contact Description';
            Caption = 'Contact Description';
        }
    }

    keys
    {
        key(PK; Contact_No)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}