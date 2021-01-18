class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # enum flag: {Authorised: true, Banned: false}
  enum status: {
    Invalid: 0,
    Valid: 1,
  }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
