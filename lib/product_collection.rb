class ProductCollection

  def self.from_dir(current_path)
    files_list = Dir.glob("#{current_path}/data/*/*.txt")

    self.new(files_list)
  end

  def initialize(files_list)
    @collection = []

    files_list.each do |path|
      if path.include?("books")
        @collection << Book.from_file(path)
      elsif path.include?("films")
        @collection << Movie.from_file(path)
      elsif path.include?("disks")
        @collection << Disk.from_file(path)
      end
    end
  end

  def sort
    @collection.sort_by { |item| item.title }
  end

  def to_a
    @collection
  end
end
