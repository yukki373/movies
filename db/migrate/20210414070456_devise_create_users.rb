# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
<<<<<<< Updated upstream
      t.string :nickname,           null: false
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :gender,             null: false
      t.string :birthday,           null: false
      t.string :movie_information
      t.string :self_introduction
      t.string :profile_image
=======
      t.string  :nickname,           null: false
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""
      t.integer :gender
      t.date    :birthday,           null: false
      t.string  :residence,          nill: false
      t.string  :movie_information
      t.text    :self_introduction
      t.string  :profile_image
>>>>>>> Stashed changes

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
