page 50208 FeatureServiceListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Feature & Services List';
    CardPageId = FeatureServicesCardPage;
    SourceTable = FeaturesServicesTbl;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                Caption = 'Feature & Services';
                field("Feture_No."; "Feture_No.")
                {
                    ApplicationArea = All;
                    Caption = 'Feature & Services Type';
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