class Text < ActiveRecord::Base
  belongs_to :supplier, polymorphic: true
end
