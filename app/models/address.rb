class Address < ActiveRecord::Base

  def self.search(term)
     where("number LIKE :term OR LOWER(name) LIKE :term", term: "%#{term.downcase}%")
  end
end
