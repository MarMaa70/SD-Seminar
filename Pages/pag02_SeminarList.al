page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar List';
    CardPageId = "CSD Seminar Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; "Seminar Price")
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
            }
        }
        area(Factboxes)
        {
            systempart("Link"; Links)
            {

            }
            systempart(Notes; Notes)
            {

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
}