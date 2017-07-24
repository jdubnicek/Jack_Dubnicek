class Category < ApplicationRecord
  has_many :dishes

  def display_name
    if self.name.include?("_")
      self.name.split("_").join(" ").titleize
    else
      self.name.titleize
    end
  end
end
