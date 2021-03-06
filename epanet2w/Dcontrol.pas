unit Dcontrol;

{-------------------------------------------------------------------}
{                    Unit:    Dcontrol.pas                          }
{                    Project: EPANET2W                              }
{                    Version: 2.0                                   }
{                    Date:    5/29/00                               }
{                    Author:  L. Rossman                            }
{                                                                   }
{   Form unit with a memo control that edits either Simple or       }
{   Rule-Based Controls.                                            }
{-------------------------------------------------------------------}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Uglobals, ComCtrls;

type
  TControlsForm = class(TForm)
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnOK: TButton;
    BtnCancel: TButton;
    BtnHelp: TButton;
    procedure BtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  RuleForm: TRuleForm;

implementation

{$R *.DFM}

procedure TControlsForm.BtnOKClick(Sender: TObject);
begin
  if Memo1.Modified then HasChanged := True;
end;

procedure TControlsForm.FormCreate(Sender: TObject);
begin
  Uglobals.SetFont(self);
  Memo1.Font.Style := Font.Style;
end;

procedure TControlsForm.BtnHelpClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

end.
