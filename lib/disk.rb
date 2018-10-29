class Disk < Product
  attr_reader :title, :singer, :year

  def self.from_file(current_path)
    disk = File.readlines(current_path, chomp: true)

    self.new(
      title: disk[0],
      singer: disk[1],
      genre: disk[2],
      year: disk[3],
      price: disk[4].to_i,
      amount: disk[5].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом: #{@title}, исполнитель: #{@singer}, жанр: #{@genre} #{@year}, #{super}"
  end
end