class Document < ApplicationRecord
    belongs_to :repository, optional: true
    belongs_to :commit, optional: true
    has_many :versions

end