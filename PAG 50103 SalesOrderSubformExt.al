pageextension 50103 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        addafter(Description)
        {

            field(InternalCategories; InternalCategories)
            {
                ApplicationArea = All;
            }
        }

    }

}