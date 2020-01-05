tableextension 50100 CustomerTblExt extends Customer
{

    fields
    {
        // Add changes to table fields here
        field(50100; Reason_Evictions; Text[2000])
        {
            Description = 'Description';
            Caption = 'Description';
            DataClassification = ToBeClassified;

        }
        field(50101; Name_DepositReturn; Text[100])
        {
            Description = 'Name';
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }

        field(50102; AddressLine1_DepositReturn; Text[100])
        {
            Description = 'Address 1';
            Caption = 'Address 1';
            DataClassification = ToBeClassified;
        }

        field(50103; AddressLine2_DepositReturn; Text[100])
        {
            Description = 'Address 2';
            Caption = 'Address 2';
            DataClassification = ToBeClassified;
        }




        field(50104; MovementReason_Notice; Text[2000])
        {
            Description = 'Moveout Reason';
            Caption = 'Moveout Reason';
            DataClassification = ToBeClassified;

        }


        field(50105; AddressLine1_Notice; Text[100])
        {
            Description = 'Address 1';
            Caption = 'Address 1';
            DataClassification = ToBeClassified;
        }

        field(50106; AddressLine2_Notice; Text[100])
        {
            Description = 'Address 2';
            Caption = 'Address 2';
            DataClassification = ToBeClassified;
        }
        // Personal Information
        field(50107; FirstName_Personal; Text[100])
        {
            Description = 'First Name';
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(50108; MiddleName_Personal; Text[100])
        {
            Description = 'Middle Name';
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }

        field(50109; SSN_Personal; Text[100])
        {
            Description = 'SSN';
            Caption = 'SSN';
            DataClassification = ToBeClassified;
        }


        field(50110; DateofBirth_Personal; Date)
        {
            Description = 'Date of Birth';
            Caption = 'Date of Birth';
            DataClassification = ToBeClassified;
        }
        field(50111; DrivingLicenseState_Personal; Text[100])
        {
            Description = 'Driving License State';
            Caption = 'Driving License State';
            DataClassification = ToBeClassified;
        }
        field(50112; DrivingLicenseId_Personal; Text[100])
        {
            Description = 'Driving License Id';
            Caption = 'Driving License Id';
            DataClassification = ToBeClassified;
        }
        field(50113; Email_Personal; Text[100])
        {
            Description = 'Email';
            ExtendedDatatype = EMail;
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(50114; Phone_Personal; Text[100])
        {
            Description = 'Phone';
            Caption = 'Phone';
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;
        }
        field(50115; AltPhone_Personal; Text[100])
        {
            Description = 'Alternate Phone';
            Caption = 'Alternate Phone';
            ExtendedDatatype = PhoneNo;
            DataClassification = ToBeClassified;
        }
        //Employment Information

        field(50116; EmployerName_Employment; Text[100])
        {
            Description = 'Employer Name';
            Caption = 'Employer Name';
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(50117; EmployerPhoneNumber_Employment; Text[100])
        {
            Description = 'Employer Phone Number';
            Caption = 'Employer Phone Number';
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(50118; GrossWagesPerMonth_Employment; Integer)
        {
            Description = 'Gross Wages Per Month';
            Caption = 'Gross Wages Per Month';
            DataClassification = ToBeClassified;

        }
        field(50119; OtherSourcesIncome_Employment; Text[1000])
        {
            Description = 'Other Sources Income';
            Caption = 'Other Sources Income';
            DataClassification = ToBeClassified;
        }
        field(50120; IsPositionTemporary_Employment; Boolean)
        {
            Description = 'Is Position Temporary';
            Caption = 'Is Position Temporary';
            DataClassification = ToBeClassified;
        }
        field(50121; Description_Employment; Text[200])
        {
            Description = 'Description';
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(50122; Position_Employment; Text[100])
        {
            Description = 'Position';
            Caption = 'Position';
            DataClassification = ToBeClassified;
        }
        field(50123; SupervisorName_Employment; Text[100])
        {
            Description = 'Supervisor Name';
            Caption = 'Supervisor Name';
            DataClassification = ToBeClassified;
        }
        field(50124; HireDate_Employment; Date)
        {
            Description = 'Hire Date';
            Caption = 'Hire Date';
            DataClassification = ToBeClassified;
        }
        field(50125; AmountPerMonth_Employment; Integer)
        {
            Description = ' Amount Per Month';
            Caption = 'Amount Per Month';
            DataClassification = ToBeClassified;
        }
        //Tenant Screening

        field(50126; HowLongLive_Screening; Text[50])
        {
            Description = 'How long will you live here?';
            Caption = 'How long will you live here?';
            DataClassification = ToBeClassified;
        }
        field(50127; WhatPets_Screening; Text[200])
        {
            Description = 'What Pets do you have?';
            Caption = 'What Pets do you have?';
            DataClassification = ToBeClassified;
        }
        field(50128; HowManyEvictions_Screening; Integer)
        {
            Description = 'How many evictions do you have?';
            Caption = 'How many evictions do you have?';
            DataClassification = ToBeClassified;
        }
        field(50129; HowManyFelonies_Screening; Integer)
        {
            Description = 'How many felonies do you have?';
            Caption = 'How many felonies do you have?';
            DataClassification = ToBeClassified;
        }
        field(50130; HaveBrokenLease_Screening; Boolean)
        {
            Description = 'Have you ever broken a lease?';
            Caption = 'Have you ever broken a lease?';
            DataClassification = ToBeClassified;
        }
        field(50131; HowManyVehicles_Screening; Integer)
        {
            Description = 'How many vehicles do you own?';
            Caption = 'How many vehicles do you own?';
            DataClassification = ToBeClassified;
        }
        field(50132; MoveInAmount_Screening; Integer)
        {
            Description = 'Move in amount available now?';
            Caption = 'Move in amount available now?';
            DataClassification = ToBeClassified;
        }
        field(50133; MoveinDate_Screening; Date)
        {
            Description = 'Movein date?';
            Caption = 'Movein date?';
            DataClassification = ToBeClassified;
        }
        field(50134; HowPayRent_Screening; Text[200])
        {
            Description = 'How do you pay rent?';
            Caption = 'How do you pay rent?';
            DataClassification = ToBeClassified;
        }
        field(50135; CheckingAcBalance_Screening; Integer)
        {
            Description = 'Checking account balance?';
            Caption = 'Checking account balance?';
            DataClassification = ToBeClassified;
        }
        field(50136; SavingsAcBalance_Screening; Integer)
        {
            Description = 'Savings account balance?';
            Caption = 'Savings account balance?';
            DataClassification = ToBeClassified;
        }
        field(50137; HowHearUs_Screening; Text[200])
        {
            Description = 'How do you hear about us?';
            Caption = 'How do you hear about us?';
            DataClassification = ToBeClassified;
        }

        field(50138; Smoke_Screening; Boolean)
        {
            Description = 'Do you Smoke?';
            Caption = 'Do you Smoke?';
            DataClassification = ToBeClassified;
        }

        field(50139; TypeOrganization; Option)
        {
            OptionMembers = " ","Company","Individual";
            Description = 'Type of Organization';
            Caption = 'Type of Organization';
            DataClassification = ToBeClassified;
        }
        //Prior Lease / Address

        field(50140; CompanyName_Personal; Text[100])
        {
            Description = 'Company Name';
            Caption = 'Company Name';
            DataClassification = ToBeClassified;
        }
        //Move-Out Survey


    }

    var
        myInt: Integer;
        PhoneNoCannotContainLettersErr: Label 'must not contain letters';
}