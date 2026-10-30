pageextension 50030 "E3 Dimension Values Ext" extends "Dimension Values"
{
    layout
    {
        addafter(Name)
        {
            field("Specialty Code"; Rec."Specialty Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Specialty Code.';
            }
            field("Specialty Name"; Rec."Specialty Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Specialty Name.';
            }
            field("Division Code"; Rec."Division Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Division Code.';
            }
            field("Division Name"; Rec."Division Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Division Name.';
            }
            field("Sub-Divisions Code"; Rec."Sub-Divisions Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Sub-Divisions Code.';
            }
            field("Sub-Divisions Name"; Rec."Sub-Divisions Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Sub-Divisions Name.';
            }
            field("Units Code"; Rec."Units Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Units Code.';
            }
            field("Units Name"; Rec."Units Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Units Name.';
            }
        }
    }
}