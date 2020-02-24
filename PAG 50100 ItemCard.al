pageextension 50100 ItemCardExt extends "Item Card"
{
    layout
    {
        addafter("No.")

        {

            field(InternalCategories; InternalCategories)
            {
                ApplicationArea = all;
                Caption = 'Internal Categories';
            }

        }
    }
}