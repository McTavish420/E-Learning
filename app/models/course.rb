class Course < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: { :minimum => 5 }

    belongs_to :user
    has_many :lessons, dependent: :destroy

    def to_s
        title
    end
    extend FriendlyId
    friendly_id :generated_slug, use: :slugged

    def generated_slug
        require 'securerandom'
        @random_slug ||= persisted? ? friendly_id: SecureRandom.hex(10)
    end
    def to_s
        slug
    end
end
