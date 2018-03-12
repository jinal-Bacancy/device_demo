class Article < ApplicationRecord
	belongs_to :admin		
	acts_as_votable
end
