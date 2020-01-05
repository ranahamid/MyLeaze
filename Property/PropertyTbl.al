table 50123 PropertyTbl
{

    DataClassification = ToBeClassified;

    fields
    {
        field(50100; "Property_No."; Code[20])
        {

            Description = 'Property ID';
            Caption = 'Property ID';
            DataClassification = ToBeClassified;
        }
        field(50121; Property_Description; Text[100])
        {
            Description = 'Please provide details about property description';
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(50101; "Customer No."; Code[20])
        {

            Description = 'Customer Number';
            Caption = 'Customer Number';
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(50102; Date_MoveOut; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }
        field(50103; RentedUnit_MoveOut; Integer)
        {
            Description = 'Rented Unit';
            Caption = 'Rented Unit';
            DataClassification = ToBeClassified;
        }

        field(50104; OverallImpression_MoveOut; Text[500])
        {
            Description = 'What is your overall impression of the home you rented?';
            Caption = 'What is your overall impression of the home you rented?';
            DataClassification = ToBeClassified;

        }

        field(50105; MostLikeHome_MoveOut; Text[500])
        {
            Description = 'What did you like most about the home you rented from us?';
            Caption = 'What did you like most about the home you rented from us?';
            DataClassification = ToBeClassified;

        }

        field(50106; LeastLikeHome_MoveOut; Text[500])
        {
            Description = 'What did you like least about the home you rented from us?';
            Caption = 'What did you like least about the home you rented from us?';
            DataClassification = ToBeClassified;

        }
        field(50107; SuggestImprove_MoveOut; Text[500])
        {
            Description = 'Do you have any suggestions for improvements we could make to the home?';
            Caption = 'Do you have any suggestions for improvements we could make to the home?';
            DataClassification = ToBeClassified;

        }


        field(50108; RentAgain_MoveOut; Boolean)
        {
            Description = 'Would you rent from us again or refer others to us in the future?';
            Caption = 'Would you rent from us again or refer others to us in the future?';
            DataClassification = ToBeClassified;

        }

        field(50109; Comments_MoveOut; Text[500])
        {
            Description = 'Additional Comments?';
            Caption = 'Additional Comments?';
            DataClassification = ToBeClassified;

        }

        field(50110; Built_In; Text[5])
        {
            Description = 'Please provide the year of built in';
            Caption = 'Built In';
            DataClassification = ToBeClassified;

        }
        field(50111; Number_Of_Stories; Integer)
        {
            Description = 'Number Of Stories';
            Caption = 'Number Of Stories';
            DataClassification = ToBeClassified;

        }
        field(50112; Purchase_Date; Date)
        {
            Description = 'Purchase Date';
            Caption = 'Purchase Date';
            DataClassification = ToBeClassified;

        }
        field(50113; Loan_Provider; Text[500])
        {
            Description = 'Loan Provider';
            Caption = 'Loan Provider';
            DataClassification = ToBeClassified;

        }
        field(50114; Loan_Installments; Decimal)
        {
            Description = 'Loan Installments';
            Caption = 'Loan Installments';
            DataClassification = ToBeClassified;

        }

        field(50115; Address_1; Text[200])
        {
            Description = 'Address 1';
            Caption = 'Address 1';
            DataClassification = ToBeClassified;

        }
        field(50116; Address_2; Text[200])
        {
            Description = 'Address 2';
            Caption = 'Address 2';
            DataClassification = ToBeClassified;

        }
        field(50117; City; Text[30])
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
                PostCode.LookupPostCode(City, "ZipCode", County, "Country/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidateCity(City, "ZipCode", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);

                OnAfterValidateCity(Rec, xRec);
            end;

        }
        field(50118; State; Text[100])
        {
            Description = 'State';
            Caption = 'State';
            DataClassification = ToBeClassified;

        }
        field(50119; ZipCode; Code[20])
        {
            Description = 'Zip Code';
            Caption = 'Zip Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City, "ZipCode", County, "Country/Region Code");
            end;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode(City, "ZipCode", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);

                OnAfterValidatePostCode(Rec, xRec);
            end;

        }
        field(50120; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "ZipCode", County, "Country/Region Code", xRec."Country/Region Code");


            end;
        }

        field(50122; Purchase_Price; Decimal)
        {
            Description = 'Purchase Price';
            Caption = 'Purchase Price';
            DataClassification = ToBeClassified;

        }
        field(50123; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
        }
        field(50154; "Studio"; Integer)
        {
            Caption = 'Studio';
            DataClassification = ToBeClassified;
        }
        field(50155; "Single_Bed"; Integer)
        {
            Caption = 'Single Bed';
            DataClassification = ToBeClassified;
        }
        field(50156; "Double_Bed"; Integer)
        {
            Caption = 'Double Bed';
            DataClassification = ToBeClassified;
        }
        field(50157; "Triple_Bed"; Integer)
        {
            Caption = 'Triple Bed';
            DataClassification = ToBeClassified;
        }
        field(50158; "Homes"; Integer)
        {
            Caption = 'Homes';
            DataClassification = ToBeClassified;
        }
        field(50159; "Mantions"; Integer)
        {
            Caption = 'Mantions';
            DataClassification = ToBeClassified;
        }
        field(50189; PropertyTax_Description; Text[200])
        {
            Description = 'Description';
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(50190; PropertyTax_Assessor; Text[200])
        {
            Description = 'Assessor';
            Caption = 'Assessor';
            DataClassification = ToBeClassified;
        }
        field(50191; PropertyTax_AssessmentId; Text[200])
        {
            Description = 'Assessment Id';
            Caption = 'Assessment Id';
            DataClassification = ToBeClassified;
        }
        field(50192; PropertyTax_AssessmentValue; Text[200])
        {
            Description = 'Assessment Value';
            Caption = 'Assessment Value';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Customer No.")
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;
        PostCode: Record "Post Code";
        Country_Region: Record "Country/Region";

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateCity(var Customer: Record PropertyTbl; xCustomer: Record PropertyTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidatePostCode(var Customer: Record PropertyTbl; xCustomer: Record PropertyTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeVATRegistrationValidation(var PropertyTbl: Record PropertyTbl; var IsHandled: Boolean)
    begin
    end;
}