tableextension 50051 "GL Account" extends "G/L Account"
{
    fields
    {
        field(50000; "Level 1"; Text[50])
        {
            Caption = 'Level 1';
            DataClassification = CustomerContent;
        }
        field(50001; "Level 2"; Text[50])
        {
            Caption = 'Level 2';
            DataClassification = CustomerContent;
        }
        field(50002; "Level 3"; Text[50])
        {
            Caption = 'Level 3';
            DataClassification = CustomerContent;
        }
        field(50003; "Level 4"; Text[50])
        {
            Caption = 'Level 4';
            DataClassification = CustomerContent;
        }
        field(50004; "Level 5"; Text[50])
        {
            Caption = 'Level 5';
            DataClassification = CustomerContent;
        }
        field(50050; "Opening Balance"; Decimal)
        {
            CalcFormula = sum("G/L Entry".Amount where("G/L Account No." = field("No."),
                       "Posting Date" = field("Opening Filter"),
                       "Global Dimension 1 Code" = field("Global Dimension 1 Filter"),
                       "Global Dimension 2 Code" = field("Global Dimension 2 Filter")));

            Caption = 'Opening Balance';
            FieldClass = FlowField;
            Editable = false;

        }
        field(50051; "Opening Filter"; Date)
        {
            Caption = 'Opening Filter';
            FieldClass = FlowFilter;

        }
        modify("Date Filter")
        {
            trigger OnAfterValidate()
            begin
                SETRANGE("Opening Filter", CLOSINGDATE(GETRANGEMIN("Date Filter") - 1));
            end;
        }
        field(50052; FIReportMapping; Text[20])
        {
            Caption = 'KPIs Code';
            TableRelation = "EDC FIReportingMapping";
        }
        field(50053; "KPIs Name"; Text[100])
        {
            Caption = 'KPIs Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("EDC FIReportingMapping"."KPI Name" WHERE("KPI Code" = field("FIReportMapping")));
        }

    }
    trigger OnBeforeRename()
    begin
        if (Rec."No." <> xRec."No.") and (xRec."No." <> '') then
            Error('You cannot modify the GL Account No.');
    end;

}

