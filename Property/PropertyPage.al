page 50122 PropertyCardPage
{
    SourceTable = PropertyTbl;
    AdditionalSearchTerms = 'Property';
    Caption = 'Property';
    PageType = Card;

    layout
    {
        area(content)
        {
            group("The Property")
            {
                field("Property_No."; "Property_No.")
                {
                    ApplicationArea = All;
                    Caption = 'Property ID';
                    Importance = Standard;
                }
                field(Property_Description; Property_Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    Importance = Standard;
                }
            }
            group("General Info")
            {
                field("Build_In"; "Built_In")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the year of built the property';
                    MultiLine = false;
                    Caption = 'Built In';
                }
                field(Number_Of_Stories; Number_Of_Stories)
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of Stories';
                    MultiLine = false;
                    Caption = 'Number of Stories';
                }
                field(Purchase_Date; Purchase_Date)
                {
                    ApplicationArea = All;
                    ToolTip = 'Purchase Date';
                    MultiLine = false;
                    Caption = 'Purchase Date';
                }
                field(Purchase_Price; Purchase_Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Purchase Price';
                    MultiLine = false;
                    Caption = 'Purchase Price';
                }
                field(Loan_Provider; Loan_Provider)
                {
                    ApplicationArea = All;
                    ToolTip = 'Loan Provider';
                    MultiLine = false;
                    Caption = 'Loan Provider';
                }
                field(Loan_Installments; Loan_Installments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Loan Installments';
                    MultiLine = false;
                    Caption = 'Loan Installments';
                }
                group(PropertyAddressdetails)
                {
                    Caption = 'Property Address';
                    field(Address_1; Address_1)
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                    }
                    field("Address_2"; "Address_2")
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies additional address information.';
                    }
                    field("Country/Region Code"; "Country/Region Code")
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies the country/region of the address.';

                        trigger OnValidate()
                        begin
                            IsCountyVisible := FormatAddress.UseCounty("Country/Region Code");
                        end;
                    }
                    field(City; City)
                    {
                        ApplicationArea = Basic, Suite;
                        ToolTip = 'Specifies the property''s city.';
                    }
                    field("ZipCode"; "ZipCode")
                    {
                        ApplicationArea = Basic, Suite;
                        Importance = Promoted;
                        ToolTip = 'Specifies the zip code.';
                    }
                }
            }
            group("ContactInfo")
            {
                Caption = 'Contact Info';
                part(Control1101754049; ContactDetailsPage)
                {
                    Visible = true;
                    ShowFilter = true;
                    UpdatePropagation = Both;
                    ApplicationArea = All;

                    SubPageLink = "No." = field("Property_No.");
                }
            }
            group("Unit Stats")
            {
                Caption = 'Unit Stats';
                field(Studio; Studio)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Studio';
                }
                field(Single_Bed; Single_Bed)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Single Bed';
                }
                field(Double_Bed; Double_Bed)
                {
                    ApplicationArea = Basic, Suite;
                    //Importance = Promoted;
                    ToolTip = 'Double Bed';
                }
                field(Triple_Bed; Triple_Bed)
                {
                    ApplicationArea = Basic, Suite;
                    //Importance = Promoted;
                    ToolTip = 'Triple Bed';
                }
                field(Homes; Homes)
                {
                    ApplicationArea = Basic, Suite;
                    //Importance = Promoted;
                    ToolTip = 'Homes';
                }
                field(Mantions; Mantions)
                {
                    ApplicationArea = Basic, Suite;
                    //Importance = Promoted;
                    ToolTip = 'Mantions';
                }
            }
            group("Features and Services")
            {
                Caption = 'Features and Services';
                part(Control1101754050; FeatureContainerPage)
                {
                    Visible = true;
                    ShowFilter = true;
                    UpdatePropagation = Both;
                    ApplicationArea = All;
                    Caption = 'Features & Services';
                    SubPageLink = "No." = field("Property_No.");
                }
            }
            group("Inusrance")
            {
                part(Control1101754043; InsurancePage)
                {
                    Visible = true;
                    ShowFilter = true;
                    UpdatePropagation = Both;
                    ApplicationArea = All;
                    Caption = 'Insurance';
                    SubPageLink = "No." = field("Property_No.");
                }
            }
            group("Property Taxes")
            {
                field(PropertyTax_Description; PropertyTax_Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                    MultiLine = false;
                    Caption = 'Description';

                }
                field(PropertyTax_Assessor; PropertyTax_Assessor)
                {
                    ApplicationArea = All;
                    ToolTip = 'Assessor';
                    MultiLine = false;
                    Caption = 'Assessor';
                }
                field(PropertyTax_AssessmentId; PropertyTax_AssessmentId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Assessment Id';
                    MultiLine = false;
                    Caption = 'Assessment Id';
                }
                field(PropertyTax_AssessmentValue; PropertyTax_AssessmentValue)
                {
                    ApplicationArea = All;
                    ToolTip = 'Assessment Value';
                    MultiLine = false;
                    Caption = 'Assessment Value';
                }
            }
            part(Control1101754044; PropertyTaxesInstallmentPage)
            {
                Visible = true;
                ShowFilter = true;
                UpdatePropagation = Both;
                ApplicationArea = All;
                Caption = 'Property Taxes Installment';
                SubPageLink = "No." = field("Property_No.");
            }
            group("Improvements and Repairs")
            {
                part(Control1101754054; ImprovementDetailPage)
                {
                    Visible = true;
                    ShowFilter = true;
                    UpdatePropagation = Both;
                    ApplicationArea = All;
                    Caption = 'Improvements and Repairs';
                    SubPageLink = "No." = field("Property_No.");
                }
            }
            group("Move-Out Survey")
            {

                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Customer Number';
                    MultiLine = false;
                    Caption = 'Customer Number';

                }
                field(Date_MoveOut; Date_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Date';
                    MultiLine = false;
                    Caption = 'Date';
                }
                field(RentedUnit_MoveOut; RentedUnit_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Rented Unit';
                    MultiLine = false;
                    Caption = 'Rented Unit';
                }
                field(OverallImpression_MoveOut; OverallImpression_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the overall impression of the home you rented';
                    MultiLine = true;
                    Caption = 'What is your overall impression of the home you rented?';

                }
                field(MostLikeHome_MoveOut; MostLikeHome_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the most like about the home you rented from us';
                    MultiLine = true;
                    Caption = 'What did you like most about the home you rented from us?';

                }
                field(LeastLikeHome_MoveOut; LeastLikeHome_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the least like about the home you rented from us';
                    MultiLine = true;
                    Caption = 'What did you like least about the home you rented from us?';

                }

                field(SuggestImprove_MoveOut; SuggestImprove_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the suggestions for improvements we could make to the home';
                    MultiLine = true;
                    Caption = 'Do you have any suggestions for improvements we could make to the home?';

                }
                field(RentAgain_MoveOut; RentAgain_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the rent from us again or refer others to us in the future';
                    MultiLine = false;
                    Caption = 'Would you rent from us again or refer others to us in the future?';

                }
                field(Comments_MoveOut; Comments_MoveOut)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Additional Comments';
                    MultiLine = true;
                    Caption = 'Additional Comments';

                }




            }


        }

    }

    actions
    {
        area(Processing)
        {
            action(Attachments)
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                Image = Attach;
                Promoted = true;
                PromotedCategory = Category9;
                ToolTip = 'Add a file as an attachment. You can attach images as well as documents.';

                trigger OnAction()
                var
                    DocumentAttachmentDetails: Page "Document Attachment Details";
                    RecRef: RecordRef;
                begin
                    RecRef.GetTable(Rec);
                    DocumentAttachmentDetails.OpenForRecRef(RecRef);
                    DocumentAttachmentDetails.RunModal;
                end;
            }
        }
    }

    var
        myInt: Integer;
        IsCountyVisible: Boolean;
        FormatAddress: Codeunit "Format Address";
}
