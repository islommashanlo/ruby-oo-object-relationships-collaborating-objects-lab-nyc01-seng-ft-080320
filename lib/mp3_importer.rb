#class MP3Importer
  
  
#end

class MP3Importer
  
  attr_accessor :file_path
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def files
    @file_path
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
  
  
end

