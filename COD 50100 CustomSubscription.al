codeunit 50100 CustomSubscription
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Page, page::"Sales Order Subform", 'OnAfterValidateEvent', 'No.', true, true)]
    local procedure OnAfterValidateNo(var Rec: Record "Sales Line")
    var
        Item: Record Item;
    begin
        If Rec.Type = Rec.Type::Item then begin

            if Item.get(Rec."No.") then
                Rec.InternalCategories := Item.InternalCategories
        end;
    end;


}