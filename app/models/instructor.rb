class Instructor < ApplicationRecord
    has_many :studentss
    validates :name, presence:true
end
