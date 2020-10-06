require 'pry'
class User < ActiveRecord::Base 
    has_many :books, through: :checkouts  
    enum availability: [:available, :unavailable]
end 