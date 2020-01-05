table 50111 PriorLeaseTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50100; "No."; Code[20])
        {
            Description = 'Prior Lease / Address';
            Caption = 'Prior Lease / Address';
            DataClassification = ToBeClassified;
        }
        field(50101; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }

        field(50102; PrevLandlord_PriorLease; Text[200])
        {
            Description = 'Previous Landlord';
            Caption = 'Previous Landlord';
            DataClassification = ToBeClassified;
        }

        field(50103; MoveInDate_PriorLease; Date)
        {
            Description = 'Move in date';
            Caption = 'Move in date';
            DataClassification = ToBeClassified;
        }
        field(50104; MoveOutDate_PriorLease; Date)
        {
            Description = 'Move out date';
            Caption = 'Move out date';
            DataClassification = ToBeClassified;
        }


        field(50105; Address1_PriorLease; Text[100])
        {
            Description = 'Address Line 1';
            Caption = 'Address Line 1';
            DataClassification = ToBeClassified;
        }

        field(50106; Address2_PriorLease; Text[100])
        {
            Description = 'Address Line 2';
            Caption = 'Address Line 2';
            DataClassification = ToBeClassified;
        }


        field(50107; City_PriorLease; Text[100])
        {
            Description = 'City';
            Caption = 'City';
            DataClassification = ToBeClassified;

            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;


            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City_PriorLease, Zipcode_PriorLease, Country_PriorLease, "Country/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(City_PriorLease, Zipcode_PriorLease, Country_PriorLease, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);

            end;
        }

        field(50108; State_PriorLease; Text[100])
        {
            Description = 'State';
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(50109; Zipcode_PriorLease; Code[20])
        {
            Description = 'Zipcode';
            Caption = 'Zipcode';
            DataClassification = ToBeClassified;

            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City_PriorLease, Zipcode_PriorLease, Country_PriorLease, "Country/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode(City_PriorLease, Zipcode_PriorLease, Country_PriorLease, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;

        }

        field(50110; Country_PriorLease; Text[100])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Description = 'Country';
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }
        field(35; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City_PriorLease, Zipcode_PriorLease, Country_PriorLease, "Country/Region Code", xRec."Country/Region Code");
            end;
        }
        field(50111; StayTillPeriod_PriorLease; Boolean)
        {
            Description = 'Did Tenant stay till stated period?';
            Caption = 'Did Tenant stay till stated period?';
            DataClassification = ToBeClassified;
        }
        field(50112; StayTillPeriodCmnt_PriorLease; Text[100])
        {
            Description = 'Comments';
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }

        field(50113; MonthlyRent_PriorLease; Integer)
        {
            Description = 'Monthly Rent';
            Caption = 'Monthly Rent';
            DataClassification = ToBeClassified;
        }

        field(50114; PayonTime_PriorLease; Boolean)
        {
            Description = 'Did the tenant pay rent and Utilities on time?';
            Caption = 'Did the tenant pay rent and Utilities on time?';
            DataClassification = ToBeClassified;
        }
        field(50115; PayonTimeCmnt_PriorLease; Text[100])
        {
            Description = 'Comments';
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(50116; LivesWithTenant_PriorLease; Boolean)
        {
            Description = 'Did anyone lives with Tenant?';
            Caption = 'Did anyone lives with Tenant?';
            DataClassification = ToBeClassified;
        }

        field(50117; LegalNtc_PriorLease; Boolean)
        {
            Description = 'Did the tenant ever received a legal notice for rent, noise etc?';
            Caption = 'Did the tenant ever received a legal notice for rent, noise etc?';
            DataClassification = ToBeClassified;
        }
        field(50118; LegalNtcCmnt_PriorLease; Text[100])
        {
            Description = 'Comments';
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(50119; ProperNotice_PriorLease; Boolean)
        {
            Description = 'Did the tenant give proper notice?';
            Caption = 'Did the tenant give proper notice?';
            DataClassification = ToBeClassified;
        }


        field(50120; GoodCondition_PriorLease; Boolean)
        {
            Description = 'Did the tenant maintain the home in good condition?';
            Caption = 'Did the tenant maintain the home in good condition?';
            DataClassification = ToBeClassified;
        }
        field(50121; DepositBack_PriorLease; Boolean)
        {
            Description = 'Did the tenant receive their entire deposit back after vacating?';
            Caption = 'Did the tenant receive their entire deposit back after vacating?';
            DataClassification = ToBeClassified;
        }
        field(50122; RentAgain_PriorLease; Boolean)
        {
            Description = 'Would you rent to the tenant again?';
            Caption = 'Would you rent to the tenant again?';
            DataClassification = ToBeClassified;
        }
        field(50123; Description_PriorLease; Text[2000])
        {
            Description = 'Description';
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "No.", "Line No.")
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;
        PostCode: Record "Post Code";
}