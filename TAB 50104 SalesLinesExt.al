tableextension 50104 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(50104; InternalCategories; Option)
        {
            Caption = 'Item Internal Categories';
            OptionMembers = " ",DA4,DA8,DA16;
            DataClassification = CustomerContent;
        }
    }
}