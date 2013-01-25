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

end
