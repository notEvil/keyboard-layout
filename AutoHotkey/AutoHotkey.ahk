
; general
SendMode, Input


; suspend AHK
LWin & a::Suspend


; Escape -> Tab -> Ctrl -> CapsLock -> Escape
$Escape::Capslock
$Tab::Escape
$Capslock::LCtrl
$LCtrl::Tab
\::Enter



; QWERTY -> Colemak
$e::f
$r::p
$t::g
$y::j
$u::l
$i::u
$o::y
$p::;
$s::r
$d::s
$f::t
$g::d
$j::n
$k::e
$l::i
$;::o
$n::k



; short physical caps lock without additional key: backspace
; otherwise: ctrl
$Capslock::
  Send, {LCtrl down}
  CapslockDown := A_TickCount
  Return
$Capslock up::
  Send, {LCtrl up}
  if ((A_PriorKey == "CapsLock") and ((A_TickCount - CapslockDown) < 200))
    Send, {Backspace}
  Return
  




:*?c:ae::
{
  str = ä
  Goto, HotStrings
}

:*?c:oe::
{
  str = ö
  Goto, HotStrings
}

:*?c:ue::
{
  str = ü
  Goto, HotStrings
}

:*?c:AE::
{
  str = Ä
  Goto, HotStrings
}

:*?c:OE::
{
  str = Ö
  Goto, HotStrings
}

:*?c:UE::
{
  str = Ü
  Goto, HotStrings
}

:*?c:SS::
{
  str = ß          
  Goto, HotStrings
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
    Send, % "{BS " l "}" nHotKey
  }
  Exit



; not in use anymore
RegisterCtrlKeys:
  Loop 26
    HotKey, % "^" Chr(A_Index+96) " up", SendCtrlKey
  Return

SendCtrlKey:
  StringTrimRight, nHotKey, A_ThisHotkey, 3
  Send, {Blind}%nHotKey%
  Return

