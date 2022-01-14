InputBox, logs, how many ss you want to do?
if ErrorLevel = 1
{
    ExitApp
}
removetooltip:
ToolTip
return
f1::
loop,
{
    Tooltip, % A_Index
    SetTimer, removetooltip, -3000
    Send {Click 3}
    Sleep 1500
    Send 2
    Sleep 500
    Send {Click}
    Sleep 1000
    Send 1
    Sleep 2000
	Loop, 4
	{
		Send {Click}
		Loop, 3
		{
			Sleep 1150
			Send {Click}
		}
		Sleep 1150
		Send {Click, Right}
		Sleep 1100
	}
	Send {Click}
	Sleep 1150
	Send 1
	Sleep 1400
	if A_Index = %logs%
	{
		Send !{f4}
        ExitApp
	} 
}
Return
end::reload
