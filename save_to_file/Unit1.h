//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include "trayicon.h"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TTimer *Timer1;
        TTrayIcon *TrayIcon1;
        TLabel *Label2;
        TTimer *Timer2;
        TButton *Button1;
        TLabel *Label3;
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall TrayIcon1Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall Timer2Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
