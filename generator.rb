require 'jwt'

# These are random examples. Replace these with the keys for your app
REELDX_PUBLIC_KEY = 'pk_live_EIpwteObKaTqGwh3KHhC1k1W'
REELDX_SECRET_KEY = 'sk_live_yzYhK47aZTWLtWs1S6oL9xv8'

unique_user_id = "app-user-1234" # Replace this with your user's id. Should be a string.

issued_at_timestamp = Time.now.to_i              # Unix timestamp indicating when the token was issued
expire_at_timestamp = (Time.now + (60*60)).to_i  # Unix timestamp indicating when token expires, one hour from now

# Generate a signed JWT token for your user, signing it with the REELX_SECRET_KEY
jwt_token = JWT.encode({
  aud: REELDX_PUBLIC_KEY,
  iat: issued_at_timestamp,
  exp: expire_at_timestamp,
  sub: unique_user_id
}, REELDX_SECRET_KEY)

puts jwt_token
