LINE Notify API
    
前言:
    #假如你想推播訊息給使用者, 不一定要申請 line chatbot, 也可以試試line的另一個服務 line notify (^-^)
    #不過, 目前是沒辦法對使用者的訊息產生回應的, 是屬於單方面的訊息通知.

1. 需要一台 https server
    #目前這個範例使用的是 webscript 這個服務, 方便快速的產生 https 網址. ex: https://yourname.webscript.io/yourpage
    #免費版 webscript 只能放七天, 但測試夠用了(你想付費也是OK~)
    
2. 這邊寫兩個頁面, 一個是先取得 user id, 第二個就是把 user id 拿去打 oauth 取得 access token, 就可以進行推播了.

3. 廢話不多說, 直接看 code 吧~

參考網址:
line notify 官網: https://notify-bot.line.me/zh_TW/
line notify api doc: https://notify-bot.line.me/doc/en/
webscript 官網: https://www.webscript.io
