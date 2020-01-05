pageextension 50116 ItemCardExtPage extends "Item Card"
{

    layout
    {
        addlast(Item)
        {
            group(Fee)
            {
                field(FeeId_Item; FeeId_Item)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Fee Id';
                    Lookup = true;
                }
            }
        }
    }
    actions
    {
        // Add changes to page actions here
        addfirst(Navigation)
        {
            action("Fee Types")
            {
                ApplicationArea = All;
                RunObject = page FeeTypesListPage;
            }
        }
    }
}



codeunit 50105 FeeTypesInstallCode
{
    Subtype = Install;
    trigger OnInstallAppPerCompany();
    var
        Fee: Record FeeTypesTbl;
    begin
        if Fee.IsEmpty() then begin
            InsertDefaultFees();
        end
    end;

    // Insert fees and deposits
    procedure InsertDefaultFees();
    begin
        InsertFeeLevel('Application fee', 'Application fee', false);
        InsertFeeLevel('Security Deposit', 'Security Deposit', true);
        InsertFeeLevel('Late Fees', 'Late Fees', false);
        InsertFeeLevel('NSF', 'Non Succifient Funds', false);
        InsertFeeLevel('Legal Services', 'Legal Services', false);
        InsertFeeLevel('Carpet Cleaning', 'Carpet Cleaning', false);
        InsertFeeLevel('Cleaning', 'Cleaning', false);
        InsertFeeLevel('Damages', 'Damages', false);
        InsertFeeLevel('Usage', 'Usage', false);
        InsertFeeLevel('Other', 'Other', false);
    end;

    procedure InsertFeeLevel(ID: Code[30]; Description: Text[250]; Refundable: Boolean);

    var
        Fee: Record FeeTypesTbl;
    begin
        Fee.Init();
        Fee.FeeId_FeeTypes := ID;
        Fee.Description_FeeTypes := Description;
        Fee.Refundable_FeeTypes := Refundable;
        Fee.Insert();
    end;
}

