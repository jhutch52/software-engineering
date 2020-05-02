class Event < ApplicationRecord
    
    belongs_to :user
    
    validates :name,
        presence: true,
        length: { maximum: 32 }
    
    validates :description,
        length: { maximum: 255 }
        
    validates :length,
        presence: true,
        numericality: { greater_than: 0, less_than: 1440,  only_integer: true }
    
end
