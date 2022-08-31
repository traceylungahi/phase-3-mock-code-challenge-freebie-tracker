class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies 
end

def received_one?(item_name)
    self.freebies.any? do |freebie|
        if freebie.item_name == item_name
            return true
        else 
            return false    
        end   
    end       
end 

def give_away(dev, freebie)
    freebie.update(dev: dev) unless freebie.dev != self
end 