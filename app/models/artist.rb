# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  name         :string
#  union_member :boolean          default("true")
#  dob          :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Artist < ActiveRecord::Base
  validates :name, presence: true

  has_many :song_contributions
  has_many :songs, through: :song_contributions
end