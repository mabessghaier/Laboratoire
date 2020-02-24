pageextension 50102 O365ActivitiesExt extends "O365 Activities"
{
    layout
    {
        addafter(Welcome)
        {
            cuegroup(internalCategories)
            {
                Caption = 'Internal Categories';

                field(DA4Categories; DA4Categories)
                {
                    ApplicationArea = All;
                    Caption = 'DA4 Category';
                    DrillDownPageID = "Item List";
                    StyleExpr = CATStyleExpr;
                }
                field(DA8Categories; DA8Categories)
                {
                    ApplicationArea = All;
                    Caption = 'DA8 Category';
                    DrillDownPageID = "Item List";
                }
                field(DA16Categories; DA16Categories)
                {
                    ApplicationArea = All;
                    Caption = 'DA16 Category';
                    DrillDownPageID = "Item List";
                }
            }

        }

    }


    trigger OnAfterGetRecord()
    begin
        CalcFields(DA4Categories);

        if DA4Categories = 0 then
            CATStyleExpr := 'Unfavorable';
    end;

    var

        CATStyleExpr: Text;
}