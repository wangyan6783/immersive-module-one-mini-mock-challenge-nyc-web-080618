class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(title, word_count, self)
  end

  def total_words
    self.books.reduce(0) do |sum, book|
      sum + book.word_count
    end
  end

  def self.most_words
    self.all.sort_by do |author|
      author.total_words
    end.last
  end

end
