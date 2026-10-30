tableextension 50028 "E3 Dimension Value Ext" extends "Dimension Value"
{
    fields
    {
        field(50000; "Specialty Code"; Code[50])
        {
            Caption = 'Specialty Code';
            DataClassification = CustomerContent;
        }
        field(50001; "Specialty Name"; Text[100])
        {
            Caption = 'Specialty Name';
            DataClassification = CustomerContent;
        }
        field(50002; "Division Code"; Code[50])
        {
            Caption = 'Division Code';
            DataClassification = CustomerContent;
        }
        field(50003; "Division Name"; Text[100])
        {
            Caption = 'Division Name';
            DataClassification = CustomerContent;
        }
        field(50004; "Sub-Divisions Code"; Code[50])
        {
            Caption = 'Sub-Divisions Code';
            DataClassification = CustomerContent;
        }
        field(50005; "Sub-Divisions Name"; Text[100])
        {
            Caption = 'Sub-Divisions Name';
            DataClassification = CustomerContent;
        }
        field(50006; "Units Code"; Code[50])
        {
            Caption = 'Units Code';
            DataClassification = CustomerContent;
        }
        field(50007; "Units Name"; Text[100])
        {
            Caption = 'Units Name';
            DataClassification = CustomerContent;
        }
    }
}