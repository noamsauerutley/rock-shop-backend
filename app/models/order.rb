class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  accepts_nested_attributes_for :purchases, allow_destroy: true

  def showPurchaseRocks
    self.purchases.map{ |purchase| purchase.rock }
  end 

  def showTotal
    total = 0
    self.purchases.each{ |purchase| total = total + purchase.cost }
    return total
  end 

end
