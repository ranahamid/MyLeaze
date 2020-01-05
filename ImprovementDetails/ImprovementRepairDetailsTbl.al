table 50133 ImprovementDetailsTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50221; "No."; Code[20])
        {
            Description = 'Property Number';
            Caption = 'Property Number';
            DataClassification = ToBeClassified;
        }
        field(50222; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(50223; Improvement_Type; Code[30])
        {
            Description = 'Improvement/Repair Type';
            Caption = 'Improvement/Repair Type';
            TableRelation = ImprovementRepairTbl.Improvement_No;
            DataClassification = ToBeClassified;
        }

        field(50224; Improvement_Date; Date)
        {
            Description = 'Date';
            Caption = 'Improvement/Repair Date';
            DataClassification = ToBeClassified;
        }
        field(50225; Improvement_Details; Text[1000])
        {
            Description = 'Details';
            Caption = 'Improvement/Repair Details';
            DataClassification = ToBeClassified;
        }
        field(50226; Improvement_Estimate; Decimal)
        {
            Description = 'Estimate';
            Caption = 'Improvement/Repair Estimate';
            DataClassification = ToBeClassified;
        }
        field(50227; Improvement_Actual; Decimal)
        {
            Description = 'Actual';
            Caption = 'Improvement/Repair Actual';
            DataClassification = ToBeClassified;
        }
        field(50228; Improvement_Address_1; Text[200])
        {
            Description = 'Address 1';
            Caption = 'Address 1';
            DataClassification = ToBeClassified;

        }
        field(50229; Improvement_Address_2; Text[200])
        {
            Description = 'Address 2';
            Caption = 'Address 2';
            DataClassification = ToBeClassified;

        }
        field(50230; City; Text[30])
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
        field(50231; State; Text[100])
        {
            Description = 'State';
            Caption = 'State';
            DataClassification = ToBeClassified;

        }
        field(50232; ZipCode; Code[20])
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
        field(50233; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "ZipCode", County, "Country/Region Code", xRec."Country/Region Code");


            end;
        }
        field(50234; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
        }
        field(50235; Improvement_First_Name; Text[200])
        {
            Description = 'First Name';
            Caption = 'First Name';
            DataClassification = ToBeClassified;

        }
        field(50236; Improvement_Last_Name; Text[200])
        {
            Description = 'Last Name';
            Caption = 'Last Name';
            DataClassification = ToBeClassified;

        }
        field(50237; Improvement_Email; Text[50])
        {
            Description = 'Email';
            Caption = 'Email';
            DataClassification = ToBeClassified;

        }
        field(50238; Improvement_Phone; Integer)
        {
            Description = 'Phone';
            Caption = 'Phone';
            DataClassification = ToBeClassified;
        }
        field(50239; Contractor_Company; Text[100])
        {
            Description = 'Contractor Company';
            Caption = 'Contractor Company';
            DataClassification = ToBeClassified;
        }
        field(50240; License_Number; Text[100])
        {
            Description = 'License Number';
            Caption = 'License Number';
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
        Country_Region: Record "Country/Region";

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateCity(var Customer: Record ImprovementDetailsTbl; xCustomer: Record ImprovementDetailsTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidatePostCode(var Customer: Record ImprovementDetailsTbl; xCustomer: Record ImprovementDetailsTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeVATRegistrationValidation(var ImprovementDetailsTbl: Record ImprovementDetailsTbl; var IsHandled: Boolean)
    begin
    end;

}