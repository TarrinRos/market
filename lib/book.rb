class Book < Product
  attr_reader :title, :genre, :writer

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @writer = params[:writer]
  end

  def self.from_file(current_path)
    book = File.readlines(current_path, chomp: true)
    self.new(
      title: book[0],
      genre: book[1],
      writer: book[2],
      price: book[3],
      amount: book[4]
    )
  end

  def to_s
    "Книга: #{@title}, жанр: #{@genre}, автор #{@writer}, #{super}"
  end
end