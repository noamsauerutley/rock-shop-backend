class User < ApplicationRecord
    has_secure_password
    has_many :orders, dependent: :destroy

    accepts_nested_attributes_for :orders, allow_destroy: true

    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
  
end
