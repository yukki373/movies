p "create Users"
User.create!(
  email: 'user1@gmail.com',
  password: '11111111',
  nickname: 'エマ',
  residence: '東京都',
  movie_information: 'スパイダーマン',
  self_introduction: '音楽と猫と美味しいものが好き！',
  gender: 1,
  birthday: {1=>2000, 2=>2, 3=>2},
  profile_image: open("#{Rails.root}/db/dummy_images/1.jpg")
)
User.create!(
  email: 'user2@gmail.com',
  password: '11111111',
  nickname: 'オリビア',
  residence: '東京都',
  movie_information: '名探偵コナン',
  self_introduction: 'クリエイターさんと話してみたい。',
  gender: 1,
  birthday: {1=>2000, 2=>4, 3=>2},
  profile_image: open("#{Rails.root}/db/dummy_images/2.jpg")
)
User.create!(
  email: 'user3@gmail.com',
  password: '11111111',
  nickname: 'エヴァ',
  residence: '東京都',
  movie_information: '名探偵コナン',
  self_introduction: 'プロフィールをご覧いただきありがとうございます。東京でWebマーケティング関連の仕事をしています。',
  gender: 1,
  birthday: {1=>2000, 2=>2, 3=>9},
  profile_image: open("#{Rails.root}/db/dummy_images/3.jpg")
)
User.create!(
  email: 'user4@gmail.com',
  password: '11111111',
  nickname: 'ノア',
  residence: '東京都',
  movie_information: '名探偵コナン',
  self_introduction: '東京で美容師をしています。',
  gender: 0,
  birthday: {1=>2001, 2=>2, 3=>2},
  profile_image: open("#{Rails.root}/db/dummy_images/4.jpg")
)
User.create!(
  email: 'user5@gmail.com',
  password: '11111111',
  nickname: 'リアム',
  residence: '東京都',
  movie_information: '名探偵コナン',
  self_introduction: '普段は公認会計士として働いています',
  gender: 0,
  birthday: {1=>2000, 2=>3, 3=>2},
  profile_image: open("#{Rails.root}/db/dummy_images/5.jpg")
)
User.create!(
  email: 'user6@gmail.com',
  password: '11111111',
  nickname: 'オリバー',
  residence: '東京都',
  movie_information: 'スパイダーマン',
  self_introduction: '週3日くらい1人ラーメンします',
  gender: 0,
  birthday: {1=>2001, 2=>2, 3=>4},
  profile_image: open("#{Rails.root}/db/dummy_images/6.jpg")
)