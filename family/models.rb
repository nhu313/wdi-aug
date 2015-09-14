class Family < ActiveRecord::Base
  has_many :members
end

class Member < ActiveRecord::Base
  belongs_to :family
end
