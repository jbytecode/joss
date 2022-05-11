class Track < ApplicationRecord
  has_many :papers
  has_and_belongs_to_many :editors
  has_many :track_aeics, dependent: :destroy
  has_many :aeics, through: :track_aeics, source: :editor

  def full_name
    [code.to_s, name].join(" ")
  end
end