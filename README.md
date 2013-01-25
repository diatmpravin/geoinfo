# Geoinfo

GeoInfo gem offers comprehensive and reliable databases of localities and zip codes for numerous state of india.
Such data may be integrated to professional software, websites, may be used to generate statistics and to various
other ends. Gem will provide localities, administrative subdivisions, state and geographical coordinates.

### This gem allows you to perform the following conversions:

    A zipcode to a place
    A zipcode to a country
    A zipcode to a state
    A zipcode to a state code
    A zipcode to a district
    A zipcode to a Latitude
    A zipcode to a Longitude


## Installation

Add this line to your application's Gemfile:

    gem 'geoinfo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geoinfo

## Example

    <%= zip_code.to_region %>
    <%= zip_code.to_region(:state => true) %>
    <%= zip_code.to_region(:district => true) %>
    <%= zip_code.to_region(:country => true) %>
    <%= zip_code.to_region(:lat => true) %>
    <%= zip_code.to_region(:log => true) %>
    <%= zip_code.to_region(:state_code => true) %>

## Usage

### Convert a zip code to a place

    '713301'.to_region #=> Asansol Bazar
    '713301'.to_region(:state => true) #=> West Bengal 
    '713301'.to_region(:district => true) #=> Burdwan
    '713301'.to_region(:country => true) #=> India
    '713301'.to_region(:state_code => true) #=> WB
    
### Convert a zip code to a STATE    
    
    '713301'.to_region(:lat => true) #=> 23.6306
    '713301'.to_region(:log => true) #=> 87.1196
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
