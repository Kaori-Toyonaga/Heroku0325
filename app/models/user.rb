class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true,
             format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }#保存する前にメールアドレスの値を小文字に変換する
  has_secure_password#password_digestというカラムが必要
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts
  has_many :favorites, dependent: :destroy
end
