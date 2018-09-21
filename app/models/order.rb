class Order < ApplicationRecord
  belongs_to :menu
  belongs_to :user
  
  validates :address, presence: { message: "Alamat harus diisi" }, length: { in:3..50 }
 
end
