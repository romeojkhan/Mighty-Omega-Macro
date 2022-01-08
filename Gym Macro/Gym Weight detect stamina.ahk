end::reload

f1::
macro_on := !macro_on
   if (macro_on)
   {
CoordMode , Pixel, Window
PixelGetColor , color2, 250, 134,
loop,
{
    CoordMode, Pixel, Window
    CoordMode, Mouse, Window
    Click , 340, 400
    Sleep 220
    Click , 340, 370
    Sleep 220
    Click , 340, 340
    Sleep 220
    Click , 340, 310
    Sleep 220
    Click , 340, 280
    Sleep 220
    Click , 340, 250
    Sleep 220
    Click , 410, 355
    Sleep 220
    StartTime := A_TickCount
    Loop ,
    {
        PixelSearch , x, y, 40, 133, 80, 135, 0x3A3A3A, 40, Fast
            If ErrorLevel = 0
            {
                Sleep 8000
            }
        ImageSearch, x , y , 250 , 220 , 560 , 440, *30 %A_ScriptDir%\bin\yellow.png ;0xB1EA40
        if (errorlevel = 0)
        {
            MouseClick, Left,  x+5, y+5
            Sleep 100
            Click, 400, 500
        }
    } Until A_TickCount - StartTime > 62000
    StartTime2 := A_TickCount
    Loop ,
    {
        Click, 400, 390
        Sleep 16
    } Until A_TickCount - StartTime2 > 5000
    StartTime4 := A_TickCount
      Loop,
      {
         Sleep 100
         PixelSearch , x, y, 249, 133, 250, 135, color2, , Fast
         If ErrorLevel = 0
         {
            Break
         } 
      } Until A_TickCount - StartTime4 > 7000
}}
else
{
exitapp
}
return
