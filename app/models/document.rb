class Document < ApplicationRecord
  DOC_TYPES = ['Marksheet','Photo','Address','Other'].freeze
  belongs_to :employee
  has_one_attached :image
  validates :name,:doc_type, presence: true
end
