
; general
SendMode , Input


; suspend AHK
LWin & a::Suspend


; Escape -> Tab -> Ctrl -> CapsLock -> Escape
$Escape::Capslock
$Tab::Escape
$Capslock::Ctrl
$LCtrl::Tab
$\::Enter


; short physical caps lock without additional key: backspace
; otherwise: ctrl
$Capslock::
  send {Ctrl down}
  CapslockDown := A_TickCount
  Return
$Capslock up::
  send {Ctrl up}
  if ((A_PriorKey == "CapsLock") and ((A_TickCount - CapslockDown) < 200))
    send {Backspace}
  return



:*?c:ae::
{
  str = ä
  goto HotStrings
}

:*?c:oe::
{
  str = ö
  goto HotStrings
}

:*?c:ue::
{
  str = ü
  goto HotStrings
}

:*?c:AE::
{
  str = Ä
  goto HotStrings
}

:*?c:OE::
{
  str = Ö
  goto HotStrings
}

:*?c:UE::
{
  str = Ü
  goto HotStrings
}

:*?c:SS::
{
  str = ß
  goto HotStrings
}


HotStrings:
  IfInString, A_ThisHotKey, *:
    rmTrigger = 0
  else
    rmTrigger = 1

  ; get begin of trigger str
  StringGetPos, start, A_ThisHotKey, :, L2
  start += 1
  StringTrimLeft, nHotKey, A_ThisHotKey, start

  Send % str
  Input, kl, V L1, {BS}
  IfInString, ErrorLevel, EndKey:
  {
    l = Strlen(str) - rmTrigger
    Send % "{BS " l "}" nHotKey
  }
  Exit


