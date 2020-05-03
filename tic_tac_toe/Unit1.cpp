//---------------------------------------------------------------------------

#include <vcl.h>
#include <cstdlib>
#include <ctime>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
        char p1,p2,p3,p4,p5,p6,p7,p8,p9;
        int runda=1, wygrane_o=0, wygrane_x=0;
        char losuj()
        {
              srand( time( NULL ) );
              int liczba=rand();
              if (liczba%2==0) return 'o';
              else return 'x';
        }
        char kto='o';
        //'n' (nic) : 'x' : 'o'

        void sprawdz()
        {
                char *wygrana;
                if((p1==p2 && p2==p3 && p1!='n') ||
                (p4==p5 && p5==p6 && p4!='n') ||
                (p7==p8 && p8==p9 && p7!='n') ||
                (p1==p4 && p4==p7 && p1!='n') ||
                (p2==p5 && p5==p8 && p2!='n') ||
                (p3==p6 && p6==p9 && p3!='n') ||
                (p1==p5 && p5==p9 && p1!='n') ||
                (p3==p2 && p5==p7 && p3!='n'))
                {
                        if (kto!='o') {wygrana="Wygra³o kó³ko!";
                        wygrane_o++;
                        //wynik_o->Caption=wygrane_o;
                        }
                        else {wygrana="Wygra³ krzy¿yk";
                        wygrane_x++;
                        //wynik_x->Caption=wygrane_x;
                        }
                        /*wynik_o->Caption=wygrane_o;
                        wynik_x->Caption=wygrane_x;  */
                        Application->MessageBox(wygrana, "Koniec gry!",
                        MB_OK | MB_ICONINFORMATION);
                }
                else if(p1!='n' && p2!='n' && p3!='n' &&
                p4!='n' && p5!='n' && p6!='n' &&
                p7!='n' && p7!='n' && p9!='n')
                {
                        wygrana="Remis!";
                        Application->MessageBox(wygrana, "Koniec gry!",
                        MB_OK | MB_ICONINFORMATION);
                }
        }
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
        numer_label->Caption=runda;
        wynik_o->Caption=wygrane_o;
        wynik_x->Caption=wygrane_x;
        runda++;
       pole1->Picture->LoadFromFile("img/nic.bmp");
       pole2->Picture->LoadFromFile("img/nic.bmp");
       pole3->Picture->LoadFromFile("img/nic.bmp");
       pole4->Picture->LoadFromFile("img/nic.bmp");
       pole5->Picture->LoadFromFile("img/nic.bmp");
       pole6->Picture->LoadFromFile("img/nic.bmp");
       pole7->Picture->LoadFromFile("img/nic.bmp");
       pole8->Picture->LoadFromFile("img/nic.bmp");
       pole9->Picture->LoadFromFile("img/nic.bmp");

       o_picture->Picture->LoadFromFile("img/osmall.bmp");
       x_picture->Picture->LoadFromFile("img/xsmall.bmp");


       p1='n'; p2='n'; p3='n';
       p4='n'; p5='n'; p6='n';
       p7='n'; p8='n'; p9='n';


       if(radio1->Checked==true)
       {
             kto=losuj();
             if(kto=='o')  tura->Picture->LoadFromFile("img/osmall.bmp");
             else if  (kto=='x') tura->Picture->LoadFromFile("img/xsmall.bmp");
       }
       if(radio2->Checked==true)
       {

             if(runda % 2==0)
             {
                kto='x'; tura->Picture->LoadFromFile("img/xsmall.bmp");
             }
             else
             {
             kto='o'; tura->Picture->LoadFromFile("img/osmall.bmp");
       }
       }
       if(radio3->Checked==true)
       {
             kto='o'; tura->Picture->LoadFromFile("img/osmall.bmp");
       }
       if(radio4->Checked==true)
       {
             kto='x'; tura->Picture->LoadFromFile("img/xsmall.bmp");
       }
       if(radio5->Checked==true)
       {
             if(wygrane_x==wygrane_o)
             {
             kto=losuj();
             if(kto=='o')  tura->Picture->LoadFromFile("img/osmall.bmp");
             else if  (kto=='x') tura->Picture->LoadFromFile("img/xsmall.bmp");
             }
             else if(wygrane_o>wygrane_x)
             {
                   kto='x'; tura->Picture->LoadFromFile("img/xsmall.bmp");
             }
             else if(wygrane_x>wygrane_o)
             {
                   kto='o'; tura->Picture->LoadFromFile("img/osmall.bmp");
             }
       }


       pole1->Enabled = true;
       pole2->Enabled = true;
       pole3->Enabled = true;
       pole4->Enabled = true;
       pole5->Enabled = true;
       pole6->Enabled = true;
       pole7->Enabled = true;
       pole8->Enabled = true;
       pole9->Enabled = true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::pole1Click(TObject *Sender)
{
        if(p1=='n')
        {
                if(kto=='o')
                {
                        pole1->Picture->LoadFromFile("img/o.bmp");
                        p1='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole1->Picture->LoadFromFile("img/x.bmp");
                        p1='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole1->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::pole2Click(TObject *Sender)
{
        if(p2=='n')
        {
                if(kto=='o')
                {
                        pole2->Picture->LoadFromFile("img/o.bmp");
                        p2='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole2->Picture->LoadFromFile("img/x.bmp");
                        p2='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole2->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole3Click(TObject *Sender)
{
        if(p3=='n')
        {
                if(kto=='o')
                {
                        pole3->Picture->LoadFromFile("img/o.bmp");
                        p3='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole3->Picture->LoadFromFile("img/x.bmp");
                        p3='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole3->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole4Click(TObject *Sender)
{
        if(p4=='n')
        {
                if(kto=='o')
                {
                        pole4->Picture->LoadFromFile("img/o.bmp");
                        p4='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole4->Picture->LoadFromFile("img/x.bmp");
                        p4='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole4->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole5Click(TObject *Sender)
{
        if(p5=='n')
        {
                if(kto=='o')
                {
                        pole5->Picture->LoadFromFile("img/o.bmp");
                        p5='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole5->Picture->LoadFromFile("img/x.bmp");
                        p5='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole5->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole6Click(TObject *Sender)
{
        if(p6=='n')
        {
                if(kto=='o')
                {
                        pole6->Picture->LoadFromFile("img/o.bmp");
                        p6='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole6->Picture->LoadFromFile("img/x.bmp");
                        p6='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole6->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole7Click(TObject *Sender)
{
        if(p7=='n')
        {
                if(kto=='o')
                {
                        pole7->Picture->LoadFromFile("img/o.bmp");
                        p7='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole7->Picture->LoadFromFile("img/x.bmp");
                        p7='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole7->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole8Click(TObject *Sender)
{
        if(p8=='n')
        {
                if(kto=='o')
                {
                        pole8->Picture->LoadFromFile("img/o.bmp");
                        p8='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole8->Picture->LoadFromFile("img/x.bmp");
                        p8='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole8->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole9Click(TObject *Sender)
{
        if(p9=='n')
        {
                if(kto=='o')
                {
                        pole9->Picture->LoadFromFile("img/o.bmp");
                        p9='o';
                        kto='x';
                        tura->Picture->LoadFromFile("img/xsmall.bmp");
                }
                else
                {
                        pole9->Picture->LoadFromFile("img/x.bmp");
                        p9='x';
                        kto='o';
                        tura->Picture->LoadFromFile("img/osmall.bmp");
                }
                pole9->Enabled=false;
                sprawdz();
        }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        if((Application->MessageBox("Czy na pewno zakoñczyæ?", "Kó³ko i krzy¿yk",
        MB_YESNO | MB_ICONQUESTION)==IDNO))
        {
               Action=caNone;
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
        wygrane_o=0;
        wygrane_x=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
       Form2->ShowModal();
}
//---------------------------------------------------------------------------

