pageextension 50101 CustomerPageExt extends "Customer Card"
{
    AdditionalSearchTerms = 'Tenant';

    layout
    {

        addfirst(FactBoxes)
        {
            part(Control1101754046; DocumentAttachmentsCustFactExt)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'Attached Documents';
                SubPageLink = "No." = FIELD("No."), "Table ID" = CONST(18);
            }
        }

        modify(Name)
        {
            Caption = 'Last Name';
        }
        addafter(General)
        {
            group("Personal Information")
            {

                field(TypeOrganization; TypeOrganization)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of Organization';
                    MultiLine = false;
                    Caption = 'Type of Organization';
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin

                        if TypeOrganization = 2 then begin
                            isVisiblePersonal := true;
                            isVisibleCompany := false;
                        end

                        else begin
                            isVisiblePersonal := false;
                            isVisibleCompany := true;
                        end;
                    end;

                }
                group("HideGroupCompany")
                {
                    Visible = isVisibleCompany;
                    Caption = 'Company';

                    field(CompanyName_Personal; CompanyName_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the Company Name';
                        MultiLine = false;
                        Caption = 'Company Name';

                        trigger OnValidate()
                        begin
                            Name := CompanyName_Personal;
                        end;
                    }
                }

                group("HideGroup")
                {
                    Visible = isVisiblePersonal;
                    Caption = 'Personal';

                    field(FirstName_Personal; FirstName_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the First Name';
                        MultiLine = false;
                        Caption = 'First Name';
                    }
                    field(MiddleName_Personal; MiddleName_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the Middle Name';
                        MultiLine = false;
                        Caption = 'Middle Name';

                    }

                    field(SSN_Personal; SSN_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the SSN';
                        MultiLine = false;
                        Caption = 'SSN';

                    }
                    field(DateofBirth_Personal; DateofBirth_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the Date of Birth';
                        MultiLine = false;
                        Caption = 'Date of Birth';
                    }
                    field(DrivingLicenseState_Personal; DrivingLicenseState_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the Driving License State';
                        MultiLine = false;
                        Caption = 'Driving License State';
                    }
                    field(DrivingLicenseId_Personal; DrivingLicenseId_Personal)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the Driving License Id';
                        MultiLine = false;
                        Caption = 'Driving License Id';
                    }
                }

                field(Email_Personal; Email_Personal)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Email';
                    MultiLine = false;
                    Caption = 'Email';
                    ShowMandatory = true;
                    ExtendedDatatype = EMail;
                }
                field(Phone_Personal; Phone_Personal)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Phone';
                    MultiLine = false;
                    Caption = 'Phone';
                    ShowMandatory = true;
                    ExtendedDatatype = PhoneNo;
                }
                field(AltPhone_Personal; AltPhone_Personal)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Alternative Phone';
                    MultiLine = false;
                    Caption = 'Alternative Phone';
                    ExtendedDatatype = PhoneNo;
                }
            }
        }
        // Add changes to page layout here
        addafter("Address & Contact")
        {
            part(Control1101754043; PriorLeaseCard)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'Prior Lease / Address';
                SubPageLink = "No." = FIELD("No.");
            }

            part(Control1101754041; ReferenceCard)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'References / Emergency Contacts';
                SubPageLink = "No." = FIELD("No.");
            }
            group("Employment Information")
            {
                field(EmployerName_Employment; EmployerName_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Employer Name';
                    MultiLine = false;
                    Caption = 'Employer Name';
                }
                field(Position_Employment; Position_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Position';
                    MultiLine = false;
                    Caption = 'Position';
                }

                field(EmployerPhoneNumber_Employment; EmployerPhoneNumber_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Employer Phone Number';
                    MultiLine = false;
                    Caption = 'Employer Phone Number';
                    ExtendedDatatype = PhoneNo;
                }
                field(SupervisorName_Employment; SupervisorName_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Supervisor Name';
                    MultiLine = false;
                    Caption = 'Supervisor Name';
                }

                field(GrossWagesPerMonth_Employment; GrossWagesPerMonth_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Gross Wages per Month';
                    MultiLine = false;
                    Caption = 'Gross Wages per Month';
                }
                field(HireDate_Employment; HireDate_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Hire Date';
                    MultiLine = false;
                    Caption = 'Hire Date';
                }

                field(OtherSourcesIncome_Employment; OtherSourcesIncome_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Other Sources of Income';
                    MultiLine = true;
                    Caption = 'Other Sources of Income';
                }
                field(AmountPerMonth_Employment; AmountPerMonth_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Amount per Month';
                    MultiLine = false;
                    Caption = 'Amount per Month';
                }

                field(IsPositionTemporary_Employment; IsPositionTemporary_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Is the Position Temporary?';
                    MultiLine = false;
                    Caption = 'Is the Position Temporary?';
                }
                field(Description_Employment; Description_Employment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Description';
                    MultiLine = true;
                    Caption = 'Description';
                }

            }
            part(Control1101754042; TenantCard)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'Tenants';
                SubPageLink = "No." = FIELD("No.");
            }
            group("Tenant Screening")
            {
                field(HowLongLive_Screening; HowLongLive_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How long will you live here?';
                    MultiLine = false;
                    Caption = 'How long will you live here?';
                }
                field(WhatPets_Screening; WhatPets_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies What Pets do you have?';
                    MultiLine = false;
                    Caption = 'What Pets do you have?';
                }

                field(HowManyEvictions_Screening; HowManyEvictions_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How many evictions do you have?';
                    MultiLine = false;
                    Caption = 'How many evictions do you have?';
                }

                field(HowManyFelonies_Screening; HowManyFelonies_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How many felonies do you have?';
                    MultiLine = false;
                    Caption = 'How many felonies do you have?';
                }

                field(HaveBrokenLease_Screening; HaveBrokenLease_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Have you ever broken a lease?';
                    MultiLine = false;
                    Caption = 'Have you ever broken a lease?';
                }

                field(Smoke_Screening; Smoke_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Do you Smoke?';
                    MultiLine = false;
                    Caption = 'Do you Smoke?';
                }

                field(MoveInAmount_Screening; MoveInAmount_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Move in amount available now?';
                    MultiLine = false;
                    Caption = 'Move in amount available now?';
                }

                field(MoveinDate_Screening; MoveinDate_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Movein date?';
                    MultiLine = false;
                    Caption = 'Movein date?';
                }

                field(HowPayRent_Screening; HowPayRent_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How do you pay rent?';
                    MultiLine = false;
                    Caption = 'How do you pay rent?';
                }

                field(CheckingAcBalance_Screening; CheckingAcBalance_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Checking account balance?';
                    MultiLine = false;
                    Caption = 'Checking account balance?';
                }

                field(SavingsAcBalance_Screening; SavingsAcBalance_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Savings account balance?';
                    MultiLine = false;
                    Caption = 'Savings account balance?';
                }

                field(HowHearUs_Screening; HowHearUs_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How do you hear about us?';
                    MultiLine = true;
                    Caption = 'How do you hear about us?';
                }
                field(HowManyVehicles_Screening; HowManyVehicles_Screening)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies How many vehicles do you own?';
                    MultiLine = false;
                    Caption = 'How many vehicles do you own?';
                }

            }

            part(Control1101754040; VehicleCard)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'Vehicle Line';
                SubPageLink = "No." = FIELD("No.");
            }
            part(TransactionLines; "Transaction Page")
            {
                ApplicationArea = All;
                Caption = 'Transactions';
                SubPageLink = "Sell-to Customer No." = FIELD("No.");
            }

            group("Notice to Vacate")
            {
                field(AddressLine1_Notice; AddressLine1_Notice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Forwarding Address Line 1';
                    MultiLine = false;
                    Caption = 'Forwarding Address Line 1';
                }

                field(AddressLine2_Notice; AddressLine2_Notice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Forwarding Address Line 2';
                    MultiLine = false;
                    Caption = 'Forwarding Address Line 2';
                }
                field(MovementReason_Notice; MovementReason_Notice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Moveout Reason';
                    MultiLine = true;
                    Caption = 'Forwarding Moveout Reason';
                }
            }
            group("Deposit Return")
            {
                field(Name_DepositReturn; Name_DepositReturn)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Deposit Return Name';
                    MultiLine = false;
                    Caption = 'Name';
                }
                field(AddressLine1_DepositReturn; AddressLine1_DepositReturn)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Deposit Address Line 1';
                    MultiLine = false;
                    Caption = 'Address Line 1';
                }

                field(AddressLine2_DepositReturn; AddressLine2_DepositReturn)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Deposit Address Line 2';
                    MultiLine = false;
                    Caption = 'Address Line 2';
                }

            }
            group("Evictions")
            {
                field(Reason_Evictions; Reason_Evictions)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Evictions Reason';
                    MultiLine = true;
                    Caption = 'Evictions Reason';
                }
            }

        }

        moveafter(MiddleName_Personal; Name)

    }

    actions
    {

        // Add changes to page actions here
    }

    var
        myInt: Integer;
        isVisiblePersonal: Boolean;
        isVisibleCompany: Boolean;
        FirstNameTitle: Text[50];
        MiddleNameTitle: Text[50];
        LastnameTitle: Text[50];

    trigger OnOpenPage()
    begin

        // isVisiblePersonal := true;
        // isVisibleCompany := true;
        begin

            if TypeOrganization = 2 then begin
                isVisiblePersonal := true;
                isVisibleCompany := false;
            end

            else begin
                isVisiblePersonal := false;
                isVisibleCompany := true;
            end;
        end;
    end;
}
