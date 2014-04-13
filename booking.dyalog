:NameSpace booking

    init_db←{#.db←5 4 8 ⍴ 0}
    from←{⍺,(¯1+⍵)↓⍳8}
    for←{⍺,(⊃⍵)↑1↓⍵}
    on←{⍵}
      free←{ba←0=+/#.db[⊃⍵;;1↓⍵]
          r←ba/⍳2⊃⍴#.db
          (⊂r),⍵}
    first←{(⊃⊃⍵),1↓⍵}
    book←{bid←get_next_bid ⍬ ⋄#.db[2⊃⍵;1⊃⍵;2↓⍵]←bid⋄bid}
                            
                            
    init_bid←{ #.bid ← 1 }
    get_next_bid←{ r←#.bid⋄#.bid←1+r⋄r}
    id←{⍵}
    with←{⍵}
    unbook←{(,#.db)[(,#.db=⍵)/⍳⍴,#.db]←0}
          
    show←{ show_day ¨ ⍵ }
    all←⍳5
    show_day←{ ('mtwtf'[⍵]) ((⍳2⊃⍴#.db),'×⎕'[1+0=#.db[⍵;;]]) }
    monday←1
    tuesday←2
    wednesday←3
    thursday←4
    friday←5

:EndNameSpace