class LibraryApp
    attr_reader :user 
    def run 
        welcome 
        login_or_signup
        home 
    end 

    def welcome 
        puts "Welcome to the library!"
    end 

    def login_or_signup
        puts "Login or sign up to access the library catalog"
        name = gets.chomp.strip.downcase 
        @user = User.all.find_or_create_by(name: name.to_s.titleize)
    end 

    def home 
        @user.reload
        prompt = TTY::Prompt.new
        choices = ["Browse Books", "My Books", "Basket", "Exit"]
        selection = prompt.select("Make a selection", choices)
        if selection == "Browse Books"
            browse_books
        elsif selection == "My Books"
            my_books 
        elsif selection == "Basket"
            basket 
        else 
            exit 
        end  
    end 

    def browse_books 
        prompt = TTY::Prompt.new
        choices = ["Search by Author", "Search by Category", "Home"]
        selection2 = prompt.select("Search for books in our catalog", choices)
        if selection2 == "Search by Author"
            browse_books_by_author
        elsif selection2 == "Search by Category"
            browse_books_by_category
        else 
          home
        end 
    end 

    def browse_books_by_author
        puts "Type the author's name here."
        author = Author.where(name: gets.chomp)
        author_id = author.ids
        books = Book.where(author_id: author_id)
        books.map{|books| puts books.title}
    end 

    def browse_books_by_category
        puts "Type the category here."
        category = Category.where(name: gets.chomp)
        category_id = category.ids
        books = Book.where(category_id: category_id)
        books.map{|books| puts books.title}
    end 

    def browse_books_prompt
        prompt = TTY::Prompt.new 
        selection = prompt.select("browse books by:" , (["Category", "Author"]))
        if selection == "Category"
            browse_books_by_category
        elsif selection == "Author"
            browse_books_by_author
        else 
            exit 
        end 
    end 

    def check_out
        due_date = Time.current + 3600
        binding.pry 
        Checkout.create(user_id: @user.id, book_id: book_id, returned?: false, due_date: due_date)
    end 

    def my_books 

    end 

end 

