def get_tweets(username)
  consumer_key = OAuth::Consumer.new(
      "9ezY3Nqc5r5efWWtOCya8GRuS",
      "ebqH9Lg5O8oz9S19RCCAKNLiOtj6W3bKBvGfcF8ZvTfUCevbvH")
  access_token = OAuth::Token.new(
      "1471081286-fXscCtqauyxMFJbGiQxVbMAomNFoI6xqUssNAyc",
      "Qysg9Iv1VtWoi6s90lybNlMDKnRHlOkb0FERkldfZPXHH")
  baseurl = "https://api.twitter.com"
  path = "/1.1/statuses/user_timeline.json"
  query = URI.encode_www_form(
      "screen_name" => username,
      "count" => 10,
  )
  address = URI("#{baseurl}#{path}?#{query}")
  request = Net::HTTP::Get.new address.request_uri
  http = Net::HTTP.new address.host, address.port
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  request.oauth! http, consumer_key, access_token
  http.start
  response = http.request request
  tweets = nil
  if response.code == '200' then
    tweets = JSON.parse(response.body)
  end
  tweets
end

def get_user_info(username)
  consumer_key = OAuth::Consumer.new(
      "9ezY3Nqc5r5efWWtOCya8GRuS",
      "ebqH9Lg5O8oz9S19RCCAKNLiOtj6W3bKBvGfcF8ZvTfUCevbvH")
  access_token = OAuth::Token.new(
      "1471081286-fXscCtqauyxMFJbGiQxVbMAomNFoI6xqUssNAyc",
      "Qysg9Iv1VtWoi6s90lybNlMDKnRHlOkb0FERkldfZPXHH")
  baseurl = "https://api.twitter.com"
  path = "/1.1/users/show.json"
  query = URI.encode_www_form(
      "screen_name" => username
  )
  address = URI("#{baseurl}#{path}?#{query}")
  request = Net::HTTP::Get.new address.request_uri
  http = Net::HTTP.new address.host, address.port
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  request.oauth! http, consumer_key, access_token
  http.start
  response = http.request request
  user_info = nil
  if response.code == '200' then
    user_info = JSON.parse(response.body)
  end
  user_info
end
