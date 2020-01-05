table 50300 TransactionTbl
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50301; TenantNo; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(50302; Tenant_Name; Text[100])
        {
            Description = 'Tenant Name';
            Editable = false;
        }
        field(50303; FeeType; Text[100])
        {
            Description = 'Fee Type';
            Editable = false;
        }

        field(50304; InvoiceNumber; Text[100])
        {
            Description = 'Invoice Number';
            Editable = false;
        }

        field(50305; ItemName; Text[100])
        {
            Description = 'Item Name';
            Editable = false;
        }
        field(50306; LineAmount; Text[100])
        {
            Description = 'Line Amount';
            Editable = false;
        }
    }

    keys
    {
        key(PK; TenantNo)
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