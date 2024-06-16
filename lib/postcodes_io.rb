require 'postcodes_io/version'
require 'postcodes_io/lookup'
require 'postcodes_io/autocomplete'
require 'postcodes_io/postcode'
require 'postcodes_io/reverse_geocode'
require 'postcodes_io/lookup_terminated'

module Postcodes
  class IO
    def base_url
      ENV['POSTCODES_IO_BASE_URL'] || "https://api.postcodes.io"
    end

    include Lookup
    include Autocomplete
    include ReverseGeocode
    include LookupTerminated
  end
end
