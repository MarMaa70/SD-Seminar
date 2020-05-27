page 50101 "CSD Seminar Card"
{
    Caption = 'Seminar Card';
    PageType = Card;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; "Seminar Price")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Comments)
            {
                Caption = 'Comments';
                ApplicationArea = All;
                Image = Comment;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                RunObject = page "Comment Sheet";
                RunPageLink = "Table Name" = const("CSD Seminar"),
                "No." = field("No.");
            }
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;
                ApplicationArea = All;
            }
            action("Ledger Entries")
            {
                Caption = 'Ledger Entries';
                RunObject = page "CSD Seminar Ledger Entries";
                RunPageLink = "Seminar No." = field("No.");
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ShortcutKey = "Ctrl+F7";
                ApplicationArea = All;
                Image = WarrantyLedger;
            }
            action("&Registrations")
            {
                Caption = '&Registrations';
                RunObject = page "CSD Seminar Registration List";
                RunPageLink = "Seminar No." = field("No.");
                Image = Timesheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = All;
            }
        }
    }

    var
        myInt: Integer;
}