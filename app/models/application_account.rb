class ApplicationAccount < ActiveRecord::Base
  validates :name, :presence => true
end
