class Version < ApplicationRecord
  belongs_to :document
  validates :stage, :uniqueness => { :scope => :document_id }

  def have_stage?(stage)
    return self.document.versions.filter { |version|
             version.stage == stage
           }.count == 1
  end

  def other_version
    return self.document.versions.filter { |version|
             version.stage == (self.stage == 1 ? 2 : 1)
           }
  end
end
