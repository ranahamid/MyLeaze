page 50211 FeatureServicesCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = FeaturesServicesTbl;
    Caption = 'Fearture & Services Type';

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                Caption = 'General Information';
                field("Feture_No."; "Feture_No.")
                {
                    ApplicationArea = All;
                    Caption = 'Fetrue & Services Type';
                    NotBlank = true;
                    ShowMandatory = true;
                }
                field(Feture_Description; Feture_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}