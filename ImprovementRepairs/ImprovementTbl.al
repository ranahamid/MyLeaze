table 50132 ImprovementRepairTbl
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50219; Improvement_No; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Improvement/Repair Type';
        }
        field(50220; "Improvement_Description"; Text[200])
        {
            Description = 'Description';
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; Improvement_No)
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