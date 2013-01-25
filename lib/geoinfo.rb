if RUBY_VERSION.to_f >= 1.9 # ;_;
  require 'csv'
else
  require 'rubygems'
  require 'faster_csv'
end

require 'geoinfo/string'
require "geoinfo/version"

module Geoinfo
  zip_path = File.open(File.join(File.dirname(__FILE__), '..', 'data', 'india_zip_v.01.csv'))

  if RUBY_VERSION.to_f >= 1.9
    ZIP_CODES = CSV.read(zip_path)
  else
    ZIP_CODES = FasterCSV.parse(zip_path)
  end
end
