query 50500 "Transaction Query"
{
    QueryType = Normal;
    Caption = 'Transaction Query';

    elements
    {
        dataitem(Tenant; "Customer")
        {
            column(Tenant_Name; Name)
            {

            }
            column(Tenant_No; "No.")
            {

            }
            dataitem(Sales_Header; "Sales Header")
            {
                DataItemTableFilter = "Document Type" = const(Invoice);
                DataItemLink = "Sell-to Customer No." = Tenant."No.";
                SqlJoinType = InnerJoin;

                column(Invoice_Number; "No.")
                {

                }
                column(Amount; Amount)
                {

                }
                dataitem(Sales_Line; "Sales Line")
                {
                    DataItemTableFilter = "Type" = const(Item);
                    DataItemLink = "Sell-to Customer No." = Sales_Header."Sell-to Customer No.";
                    SqlJoinType = InnerJoin;
                    column(Line_Amount; "Line Amount")
                    {

                    }
                    dataitem(Tenant_Item; "Item")
                    {
                        DataItemLink = "No." = Sales_Line."No.";
                        SqlJoinType = InnerJoin;
                        column(Item_Name; Description)
                        {

                        }

                        dataitem(Tenant_FeeId; FeeTypesTbl)
                        {
                            DataItemLink = FeeId_FeeTypes = Tenant_Item.FeeId_Item;
                            SqlJoinType = InnerJoin;
                            column(Fee_Type; Description_FeeTypes)
                            {

                            }
                        }
                    }
                }
            }
        }
    }
}