class AdminUser < ApplicationRecord
  #when changing a model's table name, you need to either:
  # 1. update the class method and file name to match. done in this file.
  # 2. define what table to use as:
  # self.table_name = "admin_users"
  has_and_belongs_to_many :pages
end
