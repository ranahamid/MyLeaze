tableextension 50117 ItemTblExt extends Item
{

    fields
    {
        // Add changes to table fields here
        field(50000; FeeId_Item; Code[30])
        {
            TableRelation = FeeTypesTbl.FeeId_FeeTypes;
            ValidateTableRelation = true;
            Description = 'Fee Type';
            Caption = 'Fee Type';
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}