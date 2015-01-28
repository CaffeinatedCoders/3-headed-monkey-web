class Pendingcommand < ActiveRecord::Base
  belongs_to :device

  scope :unfinished, -> { where(completed_at: nil) }

end
