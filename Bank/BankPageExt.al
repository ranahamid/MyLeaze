pageextension 50104 CustomerBankCardExt extends "Customer Bank Account Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field(AccountType_Bank; AccountType_Bank)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Account Type';
                MultiLine = false;
                Caption = 'Account Type';
            }

            field(ACHAuthorization_Bank; ACHAuthorization_Bank)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ACH Authorization';
                MultiLine = false;
                Caption = 'Is the ACH Authorization';
            }

        }
        addafter("Bank Account No.")
        {
            field(RoutingNumber_Bank; RoutingNumber_Bank)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Routing Number';
                MultiLine = false;
                Caption = 'Routing Number';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}