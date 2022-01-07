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
    Sleep 1000
    Loop, 4
	{
		Loop, 4
		{
			Sleep 1100
			Send {Click}
		}
		Sleep 1100
		Send {Click, Right}
		Sleep 300
	}
	Sleep 1100
	Send {Click}1{Click 10}
	Sleep 1000
}
Return
end::reload
