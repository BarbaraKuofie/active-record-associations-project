class Book < ActiveRecord::Base 

    belongs_to :chategory
    belongs_to :author
    has_many :users, through: :checkouts 

end 