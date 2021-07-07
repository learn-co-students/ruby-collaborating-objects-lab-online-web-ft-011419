require "pry"

class MP3Importer 

  attr_accessor :path, :song

  def initialize(path)
  @path = path 
  
  end 
  def files

    filenames = Dir.chdir(@path) do | path |
            Dir.glob("*.mp3")
        end
        puts "names=#{filenames}"
        filenames
    # binding.pry 
   end 


   def import
    # binding.pry
    files.each{ |filename| Song.new_by_filename(filename) }
    
   end

 
end 