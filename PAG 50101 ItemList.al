pageextension 50101 ItemListExt extends "Item List"
{
    layout
    {
        addafter("No.")
        {

            field(InternalCategories; InternalCategories)
            {
                ApplicationArea = All;
                Caption = 'Internal Categories';
            }
        }

    }
}