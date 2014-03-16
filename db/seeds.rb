author = Author.create(author_name: 'Ravindranath')
Book.create(book_name: 'test', author_id: author.id)
