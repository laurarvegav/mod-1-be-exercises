require 'rspec'
require './lib/file_io'
require './lib/photograph'

RSpec.describe FileIo do
    before do
        @file_path = './data/photographs.csv'
        @fileio = FileIo.new(@file_path)
    end
    describe "#initialize" do
        it 'initializes' do
            expect(@fileio).to be_a FileIo
        end

        it 'has a file_path attributre' do
            expect(@fileio.file_path).to eq(@file_path)
        end
    
        it 'starts with no photographs created' do
            expect(@fileio.photographs).to eq([])
        end
    end

    describe 'create_photographs' do
      it 'creates photograph objects from data stored in the file_path attribute' do
        expect(@fileio.create_photographs).to be_a(Array)
        expect(@fileio.create_photographs.all? {|photograph| photograph.class == Photograph}).to be true
        end
    end
end