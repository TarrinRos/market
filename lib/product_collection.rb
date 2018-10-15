class ProductCollection
  def self.from_dir(current_path)
    files_list = Dir.glob("#{current_path}/data/films/*.txt")
    files_list
  end
end