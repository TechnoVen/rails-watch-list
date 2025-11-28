class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  def destroy
    check_bookmarks_before_destruction
    super
  end

  def delete
    check_bookmarks_before_destruction
    super
  end

  private

  def check_bookmarks_before_destruction
    if bookmarks.any?
      raise ActiveRecord::InvalidForeignKey, "Cannot delete movie with bookmarks"
    end
  end
end
