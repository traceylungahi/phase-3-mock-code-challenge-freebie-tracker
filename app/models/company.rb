class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies 
end

def give_freebie(dev, item_name, value)
    Freebie.create(dev: dev, item_name: item_name, value: value, company: self )
end 

def self.oldest_company
    Company.all.order(:founding_year).first
end 