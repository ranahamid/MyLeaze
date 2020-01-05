table 50113 FeeTypesTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50100; FeeId_FeeTypes; Code[30])
        {

            Description = 'Fee ID';
            Caption = 'Fee ID';
            DataClassification = ToBeClassified;
        }
        field(50101; Description_FeeTypes; Text[100])
        {
            Description = 'Description';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(50102; LastModifiedDate_FeeTypes; Date)
        {
            Description = 'Last Modified Date';
            Editable = false;
        }

        field(50103; Refundable_FeeTypes; Boolean)
        {
            Description = 'Refundable';
            Editable = false;
        }

    }


    keys
    {
        key(PK; FeeId_FeeTypes)
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;

    trigger OnInsert()
    begin
        SetLastModifiedDate();
    end;

    trigger OnModify()
    begin
        SetLastModifiedDate();
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        SetLastModifiedDate();
    end;

    local procedure SetLastModifiedDate();
    begin
        Rec.LastModifiedDate_FeeTypes := Today();
    end;
}