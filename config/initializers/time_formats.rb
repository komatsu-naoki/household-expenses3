d = Date.today
week = %W(日 月 火 水 木 金 土)[d.wday]
Time::DATE_FORMATS[:ymd] = ("%Y年%m月%d日(#{week})") 
Date::DATE_FORMATS[:ymd] = ("%Y年%m月%d日(#{week})")


a = Date.current.beginning_of_month
week1 = %W(日 月 火 水 木 金 土)[a.wday]

Time::DATE_FORMATS[:y1] = ("%Y年%m月%d日(#{week1})") 
Date::DATE_FORMATS[:y1] = ("%Y年%m月%d日(#{week1})")

b = Date.today.end_of_month
week1 = %W(日 月 火 水 木 金 土)[b.wday]

Time::DATE_FORMATS[:y2] = ("%Y年%m月%d日(#{week1})") 
Date::DATE_FORMATS[:y2] = ("%Y年%m月%d日(#{week1})")
