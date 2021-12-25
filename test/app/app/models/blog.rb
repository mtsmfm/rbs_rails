class Blog < ApplicationRecord
  include Deletable

  has_and_belongs_to_many :users
end
