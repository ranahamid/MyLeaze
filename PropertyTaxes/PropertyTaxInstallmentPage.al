page 50204 PropertyTaxesInstallmentPage
{
    PageType = ListPart;
    SourceTable = PropertyTaxesInstallmentTbl;
    Caption = 'Property Taxes installment';

    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {

                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Visible = false;
                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                    Editable = false;
                }
                field(PropertyTax_Installment; PropertyTax_Installment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Installment';
                    MultiLine = false;
                    Caption = 'Installment';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PropertyTax_Amount; PropertyTax_Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Amount';
                    MultiLine = false;
                    Caption = 'Amount';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(PropertyTax_DueDate; PropertyTax_DueDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Due Date';
                    MultiLine = false;
                    Caption = 'Due Date';
                    QuickEntry = true;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {

        }

    }

}