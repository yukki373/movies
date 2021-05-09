class Gender < ActiveHash::Base
  self.data = [
    {id: 0, gender: '男性'},
    {id: 1, gender: '女性'}
  ]

  include ActiveHash::Associations
  has_many :users

end