class Book < Product
  attr_reader :title, :genre, :writer

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @writer = params[:writer]
  end

  def to_s
    "Книга: #{@title}, жанр: #{@genre}, автор #{@writer}, #{super}"
  end
end