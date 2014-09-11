
/*
key   .. key which should be sent
value .. character for string matching

if any modifier is set: send key and return immediately

'transs' is the sequence of transition definitions (["from" , "to"]) to work with
AnyKey keeps track of new, partially complete and already performed transitions
'active' is a sequence of (partially) complete transitions
  item type: [passive, start, len, trans. definition]
  passive .. number of keys since this (part.)comp. transition is passive
             0 means active
  start   .. birthday
  len     .. matching len
  trans. definition .. item of transs
'pos' is time/clock

on next key
- check for initial match for every transition definition
-- on match: add to 'active' with 'len' set to 0
- for each item in 'active'
-- if 'passive': increment 'passive', else
-- check for match
  - matches:
  -- increment 'len'
  -- if complete: perform replace, set 'replace' to skip subsequent
  - else: set 'passive' to 1
- burry dead items of 'active' (see histLimit)
- if no replace op happened: send key

special values:
- "BS"
-- for each item in 'active'
  - if 'passive': decrement 'passive', else
  - decrement 'len'
  - if 'len' is 0: kill item
-- send BS

- "CL"
-- clear 'active', reset time
-- send key if specified

- "SP"
-- for each item in 'active': increment passive
-- send key if specified
*/
AnyKey(key, value)
{
  static transs := [["ae", "ä"], ["oe", "ö"], ["does", "does"], ["ue", "ü"], ["eue", "eue"], ["alue", "alue"], ["que", "que"], ["queue", "queue"], ["ktue", "ktue"], ["AE", "Ä"], ["OE", "Ö"], ["UE", "Ü"], ["SS", "ß"], ["EUR", "€"]]
  
  if (GetKeyState("LCtrl")  or  GetKeyState("LAlt")  or  GetKeyState("LWin"))
  {
    Send, {Blind}%key%
    Return
  }

  static histLimit := 20

  static cTranss := 14

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
