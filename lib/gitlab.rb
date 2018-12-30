require 'json'

def valid_login? token
  login(token) != "error"
end

def login token
  @login ||= gitlab_user_login(token)
end

def gitlab_user_login token
  json = `curl -H "Private-Token: #{token}" -s https://gitlab.com/api/v4/user` rescue "{}"
  user = JSON.parse json rescue {}
  user["username"] || "error"
end

def user_block token
  <<-USER
       Gitlab User:   #{login(token)}
  USER
end
