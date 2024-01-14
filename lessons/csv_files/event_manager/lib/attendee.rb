require 'csv'

class Attendee
    attr_reader :id, :name, :zipcode

    def initialize(id, first_name, last_name, zipcode = '0000')
        @id = id
        @name = first_name + ' ' + last_name
        @zipcode = format_zip(zipcode)
    end

    def format_zip(zip_code)
        zipcode = zip_code.to_s
        if zipcode.size < 5
            zipcode.rjust(5, '0')
        elsif zipcode.size > 5
             zipcode[0..4]
        elsif zipcode.size == 5
            zipcode
        end
    end
end