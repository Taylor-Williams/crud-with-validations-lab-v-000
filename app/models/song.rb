class Song < ActiveRecord::Base
  validates :title, presence: :true
  validates :released, inclusion: {in: [true, false]}
  validate :release_year_valid?
  validates :artist_name, presence: :true

  def release_year_valid?
    if released
      if !release_year || release_year == ""
        errors.add(:release_year, "release year cannot be blank if song was released")
      elsif release_year > Date.today.year
        errors.add(:release_year, "release year cannot be greater than current year")
      end
    end
  end
end
