# App JWT Generator

Sample code for generating JWT tokens to access the ReelDx API on behalf of an app user.

A 3rd party app using the ReelDx API should generate tokens server side.

The ReelDx app secret should be kept secret and not shared with a client side app such as a browser or mobile device.

The server side app can either make calls to ReelDx directly, or supply the JWT to a client side application.

[View the code to see how it works](https://github.com/ReelDx/app-jwt-generator/blob/master/generator.rb)

The same idea can be implemented in any modern web language using a JWT library. See a list of libraries for your platform [here](http://jwt.io/#libraries).

## Usage

1. To run this you must have ruby and bundler installed. Then run `bundle install` to install the dependencies.
2. Update the values for `REELDX_PUBLIC_KEY` and `REELDX_SECRET_KEY` with the keys for your app.
3. Update the value for `unique_user_id` with a string identifying your user.
4. Run `bundle exec ruby generator.rb` to generate a new JWT token.
