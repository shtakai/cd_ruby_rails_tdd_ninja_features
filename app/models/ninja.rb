class Ninja < ActiveRecord::Base
  validates :ninja_name, :ninja_description, presence: true
end
