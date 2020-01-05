table 50129 ContactDetailsTbl
{

    DataClassification = ToBeClassified;
    fields
    {
        field(50194; "No."; Code[20])
        {
            Description = 'Property Number';
            Caption = 'Property Number';
            DataClassification = ToBeClassified;
        }
        field(50195; "Line No."; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(50196; Contact_Type; Code[20])
        {
            Description = 'Contact Type';
            Caption = 'Contact Type';
            TableRelation = ContactTbl.Contact_No;
            DataClassification = ToBeClassified;
        }

        field(50197; PM_First_Name; Text[200])
        {
            Description = 'First Name';
            Caption = 'First Name';
            DataClassification = ToBeClassified;

        }
        field(50198; PM_Last_Name; Text[200])
        {
            Description = 'Last Name';
            Caption = 'Last Name';
            DataClassification = ToBeClassified;

        }
        field(501999; PM_Email; Text[50])
        {
            Description = 'Email';
            Caption = 'Email';
            DataClassification = ToBeClassified;

        }
        field(50200; PM_Phone; Integer)
        {
            Description = 'Phone';
            Caption = 'Phone';
            DataClassification = ToBeClassified;

        }
        field(50201; PM_Address_1; Text[200])
        {
            Description = 'Address 1';
            Caption = 'Address 1';
            DataClassification = ToBeClassified;

        }
        field(50202; PM_Address_2; Text[200])
        {
            Description = 'Address 2';
            Caption = 'Address 2';
            DataClassification = ToBeClassified;

        }
        field(50207; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "ZipCode", County, "Country/Region Code", xRec."Country/Region Code");


            end;
        }
        field(50208; City; Text[30])
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
        field(50209; State; Text[100])
        {
            Description = 'State';
            Caption = 'State';
            DataClassification = ToBeClassified;

        }
        field(50210; ZipCode; Code[20])
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
        field(50211; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
        }
        field(50203; PM_City; Text[30])
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

        field(50204; PM_State; Text[20])
        {
            Description = 'State';
            Caption = 'State';
            DataClassification = ToBeClassified;

        }
        field(50205; PM_ZipCode; Code[20])
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
        field(50206; "PM_Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "ZipCode", County, "Country/Region Code", xRec."Country/Region Code");


            end;
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
    local procedure OnAfterValidateCity(var Customer: Record ContactDetailsTbl; xCustomer: Record ContactDetailsTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterValidatePostCode(var Customer: Record ContactDetailsTbl; xCustomer: Record ContactDetailsTbl)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeVATRegistrationValidation(var ContactDetailsTbl: Record ContactDetailsTbl; var IsHandled: Boolean)
    begin
    end;
}