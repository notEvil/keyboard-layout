
; general
SendMode, Input

; suspend AHK
LWin & a::Suspend


; Escape -> Tab -> Ctrl -> CapsLock -> Escape
$Escape::Capslock
$Tab::AnyKey("{Escape}", "CL")
$Capslock::Ctrl
$Ctrl::AnyKey("{Tab}", "`t")

; make \ (left of Enter and closer to right pinky) an additional Enter
$*\::AnyKey("{Enter}", "`n")


; main keys 
$*a::AnyKey("a", "a")
$*b::AnyKey("b", "b")
$*c::AnyKey("c", "c")
$*d::AnyKey("d", "d")
$*e::AnyKey("e", "e")
$*f::AnyKey("f", "f")
$*g::AnyKey("g", "g")
$*h::AnyKey("h", "h")
$*i::AnyKey("i", "i")
$*j::AnyKey("j", "j")
$*k::AnyKey("k", "k")
$*l::AnyKey("l", "l")
$*m::AnyKey("m", "m")
$*n::AnyKey("n", "n")
$*o::AnyKey("o", "o")
$*p::AnyKey("p", "p")
$*q::AnyKey("q", "q")
$*r::AnyKey("r", "r")
$*s::AnyKey("s", "s")
$*t::AnyKey("t", "t")
$*u::AnyKey("u", "u")
$*v::AnyKey("v", "v")
$*w::AnyKey("w", "w")
$*x::AnyKey("x", "x")
$*y::AnyKey("y", "y")
$*z::AnyKey("z", "z")
$+a::AnyKey("+a", "A")
$+b::AnyKey("+b", "B")
$+c::AnyKey("+c", "C")
$+d::AnyKey("+d", "D")
$+e::AnyKey("+e", "E")
$+f::AnyKey("+f", "F")
$+g::AnyKey("+g", "G")
$+h::AnyKey("+h", "H")
$+i::AnyKey("+i", "I")
$+j::AnyKey("+j", "J")
$+k::AnyKey("+k", "K")
$+l::AnyKey("+l", "L")
$+m::AnyKey("+m", "M")
$+n::AnyKey("+n", "N")
$+o::AnyKey("+o", "O")
$+p::AnyKey("+p", "P")
$+q::AnyKey("+q", "Q")
$+r::AnyKey("+r", "R")
$+s::AnyKey("+s", "S")
$+t::AnyKey("+t", "T")
$+u::AnyKey("+u", "U")
$+v::AnyKey("+v", "V")
$+w::AnyKey("+w", "W")
$+x::AnyKey("+x", "X")
$+y::AnyKey("+y", "Y")
$+z::AnyKey("+z", "Z")
$*;::AnyKey(";", ";")
$+;::AnyKey("+;", ":")
$*`::AnyKey("``", "`")
$*1::AnyKey("1", "1")
$*2::AnyKey("2", "2")
$*3::AnyKey("3", "3")
$*4::AnyKey("4", "4")
$*5::AnyKey("5", "5")
$*6::AnyKey("6", "6")
$*7::AnyKey("7", "7")
$*8::AnyKey("8", "8")
$*9::AnyKey("9", "9")
$*0::AnyKey("0", "0")
$*-::AnyKey("-", "-")
$*=::AnyKey("=", "=")
$*[::AnyKey("[", "[")
$*]::AnyKey("]", "]")
$*'::AnyKey("'", "'")
$*,::AnyKey(",", ",")
$*.::AnyKey(".", ".")
$*/::AnyKey("/", "/")
$+`::AnyKey("+``", "~")
$+1::AnyKey("+1", "!")
$+2::AnyKey("+2", "@")
$+3::AnyKey("+3", "#")
$+4::AnyKey("+4", "$")
$+5::AnyKey("+5", "%")
$+6::AnyKey("+6", "^")
$+7::AnyKey("+7", "&")
$+8::AnyKey("+8", "*")
$+9::AnyKey("+9", "(")
$+0::AnyKey("+0", ")")
$+-::AnyKey("+-", "_")
$+=::AnyKey("+=", "+")
$+[::AnyKey("+[", "{")
$+]::AnyKey("+]", "}")
$+'::AnyKey("+'", "")
$+,::AnyKey("+,", "<")
$+.::AnyKey("+.", ">")
$+/::AnyKey("+/", "?")

; special keys
$*Backspace::AnyKey("", "BS")
$*Space::AnyKey("{Space}", " ")
$*Enter::AnyKey("{Enter}", "`n")
$*Home::AnyKey("{Home}", "CL")
$*End::AnyKey("{End}", "CL")
$*PgUp::AnyKey("{PgUp}", "CL")
$*PgDn::AnyKey("{PgDn}", "CL")
$*Up::AnyKey("{Up}", "CL")
$*Down::AnyKey("{Down}", "CL")
$*Left::AnyKey("{Left}", "CL")
$*Right::AnyKey("{Right}", "CL")

; numpad
$*Numpad0::AnyKey("{Numpad0}", "0")
$*Numpad1::AnyKey("{Numpad1}", "1")
$*Numpad2::AnyKey("{Numpad2}", "2")
$*Numpad3::AnyKey("{Numpad3}", "3")
$*Numpad4::AnyKey("{Numpad4}", "4")
$*Numpad5::AnyKey("{Numpad5}", "5")
$*Numpad6::AnyKey("{Numpad6}", "6")
$*Numpad7::AnyKey("{Numpad7}", "7")
$*Numpad8::AnyKey("{Numpad8}", "8")
$*Numpad9::AnyKey("{Numpad9}", "9")
$*NumpadDot::AnyKey("{NumpadDot}", ".")
$*NumpadDiv::AnyKey("{NumpadDiv}", "/")
$*NumpadMult::AnyKey("{NumpadMult}", "*")
$*NumpadAdd::AnyKey("{NumpadAdd}", "+")
$*NumpadSub::AnyKey("{NumpadSub}", "-")
$*NumpadEnter::AnyKey("{NumpadEnter}", "`n")
$*NumpadEnd::AnyKey("{NumpadEnd}", "CL")
$*NumpadDown::AnyKey("{NumpadDown}", "CL")
$*NumpadPgDn::AnyKey("{NumpadPgDn}", "CL")
$*NumpadLeft::AnyKey("{NumpadLeft}", "CL")
$*NumpadClear::AnyKey("{NumpadClear}", "CL")
$*NumpadRight::AnyKey("{NumpadRight}", "CL")
$*NumpadHome::AnyKey("{NumpadHome}", "CL")
$*NumpadUp::AnyKey("{NumpadUp}", "CL")
$*NumpadPgUp::AnyKey("{NumpadPgUp}", "CL")




AnyKey(key, value)
{
  if (GetKeyState("Ctrl")  or  GetKeyState("LAlt")  or  GetKeyState("LWin"))
  {
    Send, {Blind}%key%
    Return
  }

  static histLimit := 20

  static transs := [["ae", "ä"], ["oe", "ö"], ["ue", "ü"], ["euer", "euer"], ["AE", "Ä"], ["OE", "Ö"], ["UE", "Ü"], ["SS", "ß"], ["EUR", "€"], ["alue", "alue"]]
  static cTranss := 10

  static active := []
  static cActive := 0

  static pos := 0

  ; handle backspace
  if (value == "BS")
  {
    Loop %cActive%
    {
      item := active[A_Index]

      passive := item[1]
      if (passive)
      {
        passive -= 1
        item[1] := passive
        Continue
      }

      len := item[3]
      len -= 1
      
      if (len)
      {
        item[3] := len
      } else {
        item[1] := 4194967295 ;  kill at next call
      }
    }

    Send, {Blind}{BS}
    pos -= 1
    Return
  }

  ; handle clear
  if (value == "CL")
  {
    active := []
    cActive := 0
    pos := 0

    if (key)                  
    {
      Send, {Blind}%key%
    }
    
    Return
  }
  
  if (value == "SP")
  {
    Loop %cActive%
    {
      item := active[A_Index]
      
      item[1] += 1
    }

    if (key)
    {
      pos += 1
      Send, {Blind}%key%
    }
    
    Return
  }


  ; add noobs
  Loop %cTranss%
  {
    item := transs[A_Index]

    a := item[1]
    if (SubStr(a, 1, 1) == value)
    {
      cActive += 1
      active[cActive] := [0, pos, 0, item] ;  [passive, start, len, trans item]
    }
  }


  dropPassive := 0
  replace := 1
  sendKey := 1
  
  ; check actives
  Loop %cActive%
  {
    item := active[A_Index]
    passive := item[1]

    if (passive)
    {
      passive += 1
      item[1] := passive

      if (histLimit < passive)
      {
        dropPassive := 1
      }
      Continue
    }      

    len := item[3]
    a := item[4][1]

    if (SubStr(a, len + 1, 1) == value)
    {
      len += 1
      item[3] := len
      
      if (StrLen(a) = len  and  replace)
      {
        replace := 0 ;  first come, first serve
        
        c := pos - item[2] ;  pos - start pos
        if (c)
        {
          Send, {Blind}{BS %c%}
        }

        b := item[4][2]
        SendRaw, %b%
        pos += StrLen(b) - c
        sendKey := 0
      }

    } else {
      item[1] := 1 ;  set passive

    }
  }

  if (dropPassive)
  {
    nActive := []
    nCActive := 0

    Loop %cActive%
    {
      item := active[A_Index]
      if (histLimit < item[1])
      {
        Continue
      }

      nCActive += 1
      nActive[nCActive] := item
    }

    active := nActive
    cActive := nCActive
  }

  if (sendKey)
  {
    Send, {Blind}%key%
    pos += 1
  }
}

