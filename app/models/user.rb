class User < ApplicationRecord
    has_secure_password
    has_many:orders

    validates :name, presence: { message: "Nama harus diisi" }, length: { in: 3..25 }, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
