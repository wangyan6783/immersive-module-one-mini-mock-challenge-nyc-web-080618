require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("author1")
author2 = Author.new("author2")
author3 = Author.new("author3")

book1 = Book.new("book1", 1000, author1)
book2 = Book.new("book2", 2000, author2)
book3 = Book.new("book3", 3000, author3)

binding.pry
0
