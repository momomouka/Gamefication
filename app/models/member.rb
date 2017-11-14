class Member < ApplicationRecord
  
  # https://codezine.jp/article/detail/10014 ログイン関係
  has_secure_password
  validates :password, presence:true, length:{ minimum: 6 }, on:create
  # ここまで
  
  validates :passname, presence: true, uniqueness: true,
    format: { with: /\A[A-Za-z]\w*\z/, allow_blank: true,
              message: :invalid_member_name },
    length: { minimum: 2, maximum: 20, allow_blank: true }

  validates :name, presence: true, uniqueness: true,
    length: { maximum: 20 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true,
    length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  
  has_many :atmtresults , dependent: :destroy
  has_many :mathresults , dependent: :destroy
  has_many :clickresults , dependent: :destroy
  has_many :achievements , dependent: :destroy
  has_many :member_achieves, through:  :member_achieves
  has_one :taskresult , dependent: :destroy
	has_one :sumscore ,dependent: :destroy
end