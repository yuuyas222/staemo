class User < ApplicationRecord
  acts_as_paranoid
  acts_as_taggable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :emotions, dependent: :destroy
  has_many :gourmets, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  attachment :profile_image
  attachment :header_image
  has_many :active_relationships, class_name: "Frendship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower
  has_many :passive_relationships, class_name: "Frendship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  validates :name, presence: true, length: { maximum: 20 }
  validates :introduction, presence: true, on: :update, length: { maximum: 50 }

  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end

  enum favorite_team: {
    未選択: 0, 東京ヤクルトスワローズ: 1, 読売ジャイアンツ: 2, 阪神タイガース: 3, 広島東洋カープ: 4, 横浜DeNAベーイスターズ: 5, 中日ドラゴンズ: 6,
    福岡ソフトバンク: 7, 埼玉西武ライオンズ: 8, 千葉ロッテマリンズ: 9, 東北楽天ゴールデンイーグルス: 10, オリックスバッファローズ: 11, 北海道日本ハムファイターズ: 12,
  }
end
