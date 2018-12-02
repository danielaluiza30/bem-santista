class Instituicao < ApplicationRecord
    
    VALID_EMAIL = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum: 5 },
        format: { with: VALID_EMAIL }, uniqueness: true
    
    has_secure_password
end
