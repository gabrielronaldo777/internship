class Menu < ApplicationRecord
    has_many:orders

    validates :name, presence: { message: "Nama menu harus diisi" }, length: { in:3..25 }
    validates :price, presence: { message: "price harus diisi" }, numericality: true
end
