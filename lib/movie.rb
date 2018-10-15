class Movie < Product
  attr_reader :title, :director
  attr_accessor :year

  def self.from_file(current_path)
    movie = File.readlines(current_path, chomp: true)

    self.new(
      title: movie[0],
      director: movie[1],
      year: movie[2],
      price: movie[3],
      amount: movie[4]
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм #{@title}, #{@year}, реж. #{@director}, #{super}"
  end
end