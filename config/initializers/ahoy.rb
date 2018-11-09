class Ahoy::Store < Ahoy::DatabaseStore
end

# set to true for JavaScript tracking
Ahoy.api = false

# better user agent parsing
Ahoy.user_agent_parser = :device_detector

# Damn right I want to geocode.
Ahoy.geocode = true

# track visits across multiple subdomains
Ahoy.cookie_domain = :all

# Uses druuid for the token. Gives it a date-time stamp.
Ahoy.token_generator = -> { Druuid.gen }
