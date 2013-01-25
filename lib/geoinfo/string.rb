class String

  def to_region(options = {})
    Geoinfo::ZIP_CODES.each do |row|
      if row.second == self.to_s
        if options[:district]
          @region = row[5]
        elsif options[:state]
          @region = row[3]
        elsif options[:country]
          @region = row[0]
        elsif options[:lat]
          @region = row[9]
        elsif options[:log]
          @region = row[10]
        elsif options[:state_code]
          @region = row[4]
        else
          @region = row[2]
        end
      end
    end
    @region || nil
  end

  def to_zip
    @zip_codes = []
    Geoinfo::ZIP_CODES.each do |row|
      @zip_codes.push(row[1]) if row[2].chomp == self.chomp
    end
    @zip_codes.length == 1 ? @zip_codes.first : @zip_codes
  end

end
