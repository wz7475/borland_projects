#include <iostream>
#include <windows.h>
//BOOL WINAPI FreeConsole( void );
//#include <winapi>
using namespace std;
void HideConsole()
{
    ::ShowWindow(::GetConsoleWindow(), SW_HIDE);
}
int main()
{
    HideConsole();
    string a="python.exe C:\\Users\\wojte\\Desktop\\link-opener#2\\runner_autostart.py";
    system(a.c_str());
    return 0;
}
