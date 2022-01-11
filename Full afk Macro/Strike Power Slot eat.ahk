#maxThreadsPerHotkey, 2
end::reload
f1::
macro_on := !macro_on
if (macro_on)
{
    CoordMode Pixel, Window
    CoordMode Mouse, Window
    eat = 1
    temp = 0
    Rythm = 0
    Loop,
    {
        PixelSearch, x, y, 184, 132, 186, 134, 0x3A3A3A, 40, Fast
        if ErrorLevel = 0
        {
            if Rythm = 0
            {
                Rythm++
                Sleep 100
                Send r
            }
            Send {Click, 50}{Click, Right}
        } 
        Else
        {
            Rythm = 0
            Sendinput, {w up}{s up}
            Sleep 100
            Sendinput, {w down}{w up}{w down}{s down}
            Sleep 100
            Loop,
            {
                PixelSearch, x, y, 184, 132, 186, 134, 0x3A3A3A, 40, Fast 
                If ErrorLevel = 0
                {

                    Sleep 2000
                    Sendinput, {w up}{s up}{w up}{s up}{w up}{s up}{w up}{s up}
                    Sleep 100
                    Send {Click, 50}{Click, Right}
                    Break
                }
            }
        }
        PixelSearch, x, y, 40, 132, 65, 134, 0x3A3A3A, 40, Fast  ; if too low stam
        if ErrorLevel = 0
        {
            Sendinput, {w up}{s up}
            Sleep 10000
        }
        PixelSearch, x, y, 70, 144, 80, 145, 0x3A3A3A, 40, Fast ; food under 50%
        If ErrorLevel = 0
        {
            if eat = 1
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 2
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 2
                Sleep 200
                Send 1
                if temp = 5
                {
                    temp = 0
                    eat = 2
                }
            }
            if eat = 2
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 3
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 3
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 3
                }
            }
            if eat = 3
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 4
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 4
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 4
                }
            }
            if eat = 4
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 5
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 5
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 5
                }
            }
            if eat = 5
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 6
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 6
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 6
                }
            }
            if eat = 6
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 7
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 7
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 7
                }
            }
            if eat = 7
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 8
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 8
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 8
                }
            }
            if eat = 8
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 9
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 9
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 9
                }
            }
            if eat = 9
            {
                temp++
                Rythm = 0
                Sendinput, {w up}{s up}
                Send 0
                Sleep 50
                Send {Click}
                Sleep 5000
                Send 0
                Sleep 200
                Send 1
                if temp = 6
                {
                    temp = 0
                    eat = 10
                }
            }
            If eat = 10
            {
                Send !{f4}
                reload
            }
        }
        PixelSearch, x, y, 39, 159, 41, 161, 0x9299BC,, Fast ; logs when hungry
        If ErrorLevel = 0
        {
            Send !{f4}
            Reload
        }
        PixelSearch, x, y, 409,151, 411,153, 0x242424,, Fast ;auto flow
        If ErrorLevel = 0
        {
            Sleep 100
            Send e
            Sleep 100
        }
    }
}
else
{
    ExitApp
}
Return

