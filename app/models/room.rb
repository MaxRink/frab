class Room < ApplicationRecord
  belongs_to :conference
  has_many :events

  has_paper_trail meta: { associated_id: :conference_id, associated_type: 'Conference' }

  default_scope -> { order(:rank) }

  validates :name, presence: true

  def to_s
    "#{model_name.human}: #{name}"
  end
end
