class Movie < ApplicationRecord
    has_many :bookmarks, dependent: :restrict_with_error
    has_many :lists, through: :bookmarks

    validates :title, presence: true, uniqueness: true
    validates :overview, presence: true

    before_destroy :check_for_bookmarks

    private

    def check_for_bookmarks
        if bookmarks.any?
        errors.add(:base, "Cannot delete movie with bookmarks")
        throw :abort
        end
    end
end