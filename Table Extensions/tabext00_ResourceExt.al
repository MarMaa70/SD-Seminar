tableextension 50100 "CSD Resource" extends Resource
{
    fields
    {
        field(50100; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = CustomerContent;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }
        field(50101; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = CustomerContent;
        }
        field(50102; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = CustomerContent;
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
    }

    var
        myInt: Integer;
}