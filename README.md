# Restful Twitter
This is a Ruby Sinatra app that allows you to search for a twitter user and it gives you thier latest tweets. It is just an
application to test out how to use Twitter's RESTful API. If you'd like to replicate this app:

* Go to the Twitter Developers page, and create a new project to get the API keys you'll need from them
* Clone this repository to your machine
* Create a new file in the root directory named '.env' That's the full filename, .env
* Paste you Twitter API keys into your .env file, so that your .env file looks like:
```
CONSUMER_KEY=your_consumer_key
CONSUMER_KEY_SECRET=your_consumer_key_secret
ACCESS_TOKEN=your_access_token
ACCESS_TOKEN_SECRET=your_access_token_secret
```
Then:

* In your terminal: ```$ruby server.rb```
* Visit http://localhost:4567/tweets
