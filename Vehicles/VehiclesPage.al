page 50106 VehicleCard
{
    PageType = ListPart;
    SourceTable = Vehicle;
    Caption = 'Vehicle Line';

    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    // RefreshOnActivate = true;
    //  SourceTableView = SORTING("CustomerNumber_Tenant", "Line No.");

    layout
    {
        // Add changes to page layout here
        area(content)
        {

            repeater(Group)
            {


                field(CustomerNumber_Tenant; "No.")
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



                field(VehicleMake_Tenant; VehicleMake_Tenant)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Vehicle Make';
                    MultiLine = false;
                    Caption = 'Vehicle Make';
                    QuickEntry = true;
                    ShowMandatory = true;
                }

                field(ModelVehicle_Tenant; ModelVehicle_Tenant)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Model';
                    MultiLine = false;
                    Caption = 'Model';
                    QuickEntry = true;
                    ShowMandatory = true;
                }
                field(NumberVehicle_Tenant; NumberVehicle_Tenant)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Number of Vehicle';
                    MultiLine = false;
                    Caption = 'Number';
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