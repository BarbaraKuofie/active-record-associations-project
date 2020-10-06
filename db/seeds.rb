User.create(name: 'Barbara')
User.create(name: 'Araba')
User.create(name: 'Ijeoma')

Author.create(name: 'J. K. Rowling')
Author.create(name: 'Mark Twain')
Author.create(name: 'Toni Morrison')

Category.create(name: 'fiction')
Category.create(name: 'science-fiction')

Book.create(title: 'Harry Potter', author_id: 1, category_id: 2)
Book.create(title: 'Roughing it', author_id: 2, category_id: 1)
Book.create(title: 'Song of Solomon', author_id: 3, category_id: 1)
