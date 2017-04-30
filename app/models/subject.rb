class Subject < ApplicationRecord
  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("postition ASC") }
  scope :newest_first, lambda { order("created_at DESC")}
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}

  # other way to write scopes
  # scope :visible, -> { where(:visible => true) }

  # defining scopes are the same as:
  # def self.active
  #   where(:active => true)
  # end

  #lambdas are the correct way to achieve this
end
