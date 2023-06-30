class Document < ApplicationRecord
  DOC_TYPES = ['Marksheet','Photo','Address','Other'].freeze
  belongs_to :employee
  validates :name,:doc_type, presence: true
end
