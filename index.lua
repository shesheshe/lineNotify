local html =
[[
<html>
<head>
    <title>lineNotify</title>
	<meta charset="utf-8" />
    <script>
        function Auth() {
            var URL = 'https://notify-bot.line.me/oauth/authorize?';
            URL += 'response_type=code';
            URL += '&client_id={ 你的client id }';
            URL += '&redirect_uri={ 你的重導向網址(需要https) }';
            URL += '&scope=notify';
            URL += '&state=abcde';
            window.location.href = URL;
        }
    </script>
</head>
<body>
    <button onclick="Auth();">點選這裡連結到LineNotify</button>
</body>
</html>
]]

return html, {["Content-Type"]="text/html"}