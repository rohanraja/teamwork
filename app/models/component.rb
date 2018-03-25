class Component < ActiveRecord::Base
  belongs_to :automated_test
  has_many :automated_tests
end
