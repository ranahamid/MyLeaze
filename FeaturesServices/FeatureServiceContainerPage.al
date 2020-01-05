page 50209 FeatureContainerPage
{
    PageType = ListPart;
    SourceTable = FeatureContainerTble;
    Caption = 'Feature & Services';

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
                field(Feture_Type; Feture_Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Feature & Services Type';
                    MultiLine = false;
                    Caption = 'Feature & Services Type';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(Feature_Value; Feature_Value)
                {
                    ApplicationArea = All;
                    ToolTip = 'Value';
                    MultiLine = false;
                    Caption = 'Value';
                    QuickEntry = true;
                    ShowMandatory = true;
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