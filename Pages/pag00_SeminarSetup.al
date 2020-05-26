page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    Caption = 'Seminar Setup';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {
                    ApplicationArea = All;
                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}