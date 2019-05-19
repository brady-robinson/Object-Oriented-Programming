class Book
  attr_accessor :title, :pages
end

b1 = Book.new
p b1
b1.title = "Hidden motives"
b1.pages = 255
p b1

p "The book #{b1.title} has #{b1.pages} pages"