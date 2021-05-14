class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
<<<<<<< Updated upstream
=======
    validates :residence
>>>>>>> Stashed changes
    validates :gender
    validates :birthday
  end

  enum gender: { man: 0, woman: 1 }

end
