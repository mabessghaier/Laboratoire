tableextension 50101 ActivitiesExt extends "Activities Cue"
{
    fields
    {
        field(50101; DA4Categories; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count (Item where(InternalCategories = filter(DA4)));
        }
        field(50102; DA8Categories; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count (Item where(InternalCategories = filter(DA8)));
        }

        field(50103; DA16Categories; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count (Item where(InternalCategories = filter(DA16)));
        }

    }
}