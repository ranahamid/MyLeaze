page 50112 PriorLeaseCard
{
    PageType = ListPart;
    SourceTable = PriorLeaseTbl;
    Caption = 'Prior Lease / Address';

    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {

                field(CustomerNumber_Reference; "No.")
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



                field(PrevLandlord_PriorLease; PrevLandlord_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Previous Landlord';
                    MultiLine = false;
                    Caption = 'Previous Landlord';
                    QuickEntry = true;
                    ShowMandatory = true;
                }


                field(MoveInDate_PriorLease; MoveInDate_PriorLease)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Move in date';
                    MultiLine = false;
                    Caption = 'Move in date';
                    QuickEntry = false;
                }
                field(MoveOutDate_PriorLease; MoveOutDate_PriorLease)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Move out date';
                    MultiLine = false;
                    Caption = 'Move out date';
                    QuickEntry = false;
                }



                field(Address1_PriorLease; Address1_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Address Line 1';
                    MultiLine = false;
                    Caption = 'Address Line 1';
                    QuickEntry = false;
                    ShowMandatory = false;
                }

                field(Address2_PriorLease; Address2_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Address Line 2';
                    MultiLine = false;
                    Caption = 'Address Line 2';
                    QuickEntry = false;
                    ShowMandatory = false;
                }


                field(City_PriorLease; City_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the City';
                    MultiLine = false;
                    Caption = 'City';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(State_PriorLease; State_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the State';
                    MultiLine = false;
                    Caption = 'State';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(Zipcode_PriorLease; Zipcode_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Zip code';
                    MultiLine = false;
                    Caption = 'Zip code';
                    QuickEntry = false;
                    ShowMandatory = false;
                }



                field(Country_PriorLease; Country_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Country';
                    MultiLine = false;
                    Caption = 'Country';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field("Country/Region Code"; "Country/Region Code")
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Country/Region Code';
                    MultiLine = false;
                    Caption = 'Country/Region Code';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(StayTillPeriod_PriorLease; StayTillPeriod_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies did Tenant stay till stated period?';
                    Width = 25;
                    MultiLine = false;
                    Caption = 'Did Tenant stay till stated period?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }

                field(StayTillPeriodCmnt_PriorLease; StayTillPeriodCmnt_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies Comments';
                    MultiLine = false;
                    Caption = 'Comments: Did Tenant stay till stated period?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }


                field(MonthlyRent_PriorLease; MonthlyRent_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies the Monthly Rent';
                    MultiLine = false;
                    Caption = 'Monthly Rent';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(PayonTime_PriorLease; PayonTime_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies did the tenant pay rent and Utilities on time?';
                    Width = 25;
                    MultiLine = false;
                    Caption = 'Did the tenant pay rent and Utilities on time?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(PayonTimeCmnt_PriorLease; PayonTimeCmnt_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies Comments';
                    MultiLine = false;
                    Caption = 'Comments: Did the tenant pay rent and Utilities on time?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(LivesWithTenant_PriorLease; LivesWithTenant_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies Did anyone lives with Tenant?';
                    Width = 25;
                    MultiLine = false;
                    Caption = 'Did anyone lives with Tenant?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(LegalNtc_PriorLease; LegalNtc_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies Did the tenant ever received a legal notice for rent, noise etc?';
                    Width = 35;
                    MultiLine = false;
                    Caption = 'Did the tenant ever received a legal notice for rent, noise etc?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(LegalNtcCmnt_PriorLease; LegalNtcCmnt_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies Comments';
                    MultiLine = false;
                    Caption = 'Comments: Did the tenant ever received a legal notice for rent, noise etc?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(ProperNotice_PriorLease; ProperNotice_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies did the tenant give proper notice?';
                    Width = 25;
                    MultiLine = false;
                    Caption = 'Did the tenant give proper notice?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(GoodCondition_PriorLease; GoodCondition_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies did the tenant maintain the home in good condition?';
                    Width = 30;
                    MultiLine = false;
                    Caption = 'Did the tenant maintain the home in good condition?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(DepositBack_PriorLease; DepositBack_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies did the tenant receive their entire deposit back after vacating?';
                    Width = 35;
                    MultiLine = false;
                    Caption = 'Did the tenant receive their entire deposit back after vacating?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(RentAgain_PriorLease; RentAgain_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies would you rent to the tenant again?';
                    Width = 25;
                    MultiLine = false;
                    Caption = 'Would you rent to the tenant again?';
                    QuickEntry = false;
                    ShowMandatory = false;
                }
                field(Description_PriorLease; Description_PriorLease)
                {

                    ApplicationArea = All;
                    ToolTip = 'Specifies description';
                    MultiLine = false;
                    Caption = 'Description';
                    QuickEntry = false;
                    ShowMandatory = false;
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