pageextension 50063 "Chart of Accounts Card" extends "G/L Account Card"
{
    layout
    {
        addafter(Totaling)
        {
            field(FIReportMapping; Rec.FIReportMapping)
            {
                ApplicationArea = All;
                Caption = 'KPIs Mapping';
                ToolTip = 'Specifies the value of the KPIs Mapping field.';
            }
            field("KPIs Name"; Rec."KPIs Name")
            {
                ApplicationArea = All;
                Caption = 'KPIs Mapping Name';
                ToolTip = 'Specifies the value of the KPIs Mapping Name field.';
            }
        }
        addlast(content)
        {
            group(PDMHAttributes)
            {
                Caption = 'PDMH Attributes';
                field("Level 1"; Rec."Level 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Level 1.';
                }
                field("Level 2"; Rec."Level 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Level 2.';
                }
                field("Level 3"; Rec."Level 3")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Level 3.';
                }
                field("Level 4"; Rec."Level 4")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Level 4.';
                }
                field("Level 5"; Rec."Level 5")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Level 5.';
                }
            }
        }
    }
}
