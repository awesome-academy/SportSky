class Menu < ApplicationRecord
  belongs_to :pitch

  validates :starttime, :endtime, presence: true
  validates :startday, :endday, presence:  true
  validates :price, presence: true

  scope :order_price, -> {order(:price)}

end
