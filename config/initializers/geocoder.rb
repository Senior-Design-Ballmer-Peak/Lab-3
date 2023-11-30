# config/initializers/geocoder.rb
Geocoder.configure(
  # Geocoding options
  timeout: 3,                 # Geocoding service timeout (secs)
  lookup: :nominatim,         # Name of geocoding service (symbol)
  ip_lookup: :ipinfo_io,      # IP address geocoding service (symbol)
  language: :en,              # ISO-639 language code

  # For geocoding service requests using HTTPS
  use_https: true,            # Use HTTPS for lookup requests? (if supported)

  # Since Nominatim does not require an API key for low-traffic requests,
  # you can remove the api_key option or set it to nil.
  # api_key: nil,            # Not used for Nominatim

  # Miscellaneous options
  #cache: Redis.new,           # Cache object (must respond to #[], #[]=, and #keys)
  #cache_prefix: 'geocoder:',  # Prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by Geocoder in addition to TimeoutError
  always_raise: [],

  # Calculation options
  units: :km,                 # :km for kilometers or :mi for miles
  distances: :linear          # :spherical or :linear
)