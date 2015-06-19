class My < ActiveRecord::Base
	after_create :publish
has_many :wheels
belongs_to :supplier,:polymorphic=>true
  def publish
    redis = Redis.new
    redis.publish "crier:transitions", self.to_json
  end

end
