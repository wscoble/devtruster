class Contributor < ActiveRecord::Base
  has_many :respositories
  has_many :identities
end
