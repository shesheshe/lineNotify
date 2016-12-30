-- 取得網址列參數
local code = request.query.code
local state = request.query.state

data = {
    ['grant_type'] = 'authorization_code',
    ['code'] = code,
    ['redirect_uri'] = '{ 從哪個網址導來的(以這個例子來講是index.lua) }',
    ['client_id'] = '{ 你的client id }',
    ['client_secret'] = '{ 你的client secret }'
}

-- 取得 oauth token
local response = http.request {
    url = 'https://notify-bot.line.me/oauth/token', -- line bot server
    method = 'POST',
    data = data
}

result = json.parse(response.content)

data = {
    ['message'] = 'hi (^-^)'
}

-- 將訊息打出去
local response = http.request {
    url = 'https://notify-api.line.me/api/notify', -- line bot server
    method = 'POST',
    data = data,
	 	headers = {
			['Authorization'] = 'Bearer ' .. result.access_token
		}
}

return response.content