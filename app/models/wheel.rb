class Wheel < ActiveRecord::Base
  belongs_to :my
  has_many :texts, :as => :supplier, :dependent => :destroy
end
