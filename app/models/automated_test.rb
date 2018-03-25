class AutomatedTest < ActiveRecord::Base
  belongs_to :component
  has_many :components
end
