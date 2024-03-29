class User < ApplicationRecord

  has_many :reactions
  has_many :chat_room_users
  has_many :chat_rooms, through: :index_chat_room_users
  has_many :chat_messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname

    validates :residence

    validates :birthday
  end

  validates :self_introduction, length: { maximum: 500 }

  enum gender: { man: 0, woman: 1 }

  mount_uploader :profile_image, ProfileImageUploader

  def update_without_current_password(params, *options)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

end
