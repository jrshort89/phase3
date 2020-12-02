class Version < ApplicationRecord
    belongs_to :document
    # validates :stage, :uniqueness => {:scope => :document_id}
end
