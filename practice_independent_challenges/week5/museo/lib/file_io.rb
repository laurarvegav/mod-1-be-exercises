require 'csv'

class FileIo
    attr_reader :file_path,
                :photographs
    
    def initialize(file_path)
        @file_path = file_path
        @photographs = []
    end

    def create_photographs
        CSV.foreach(@file_path, headers: true, header_converters: :symbol) do |row|
            photograph_info = {}
            photograph_info[:id] = row[:id].to_s
            photograph_info[:name] = row[:name]
            photograph_info[:artist_id] = row[:artist_id]
            photograph_info[:year] = row[:year]

            @photographs << Photograph.new(photograph_info)
        end
        @photographs
    end
end