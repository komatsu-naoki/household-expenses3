d = Date.new
week = %w(日 月 火 水 木 金 土 日)[d.cwday]
Time::DATE_FORMATS[:ymd] = ("%Y年%m月%d日%w") 
Date::DATE_FORMATS[:ymd] = ("%Y年%m月%d日(#{week})")