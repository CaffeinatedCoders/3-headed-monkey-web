class Device < ActiveRecord::Base
  before_create :generate_key


  belongs_to :user

private

  def generate_key
    begin
      self.key = SecureRandom.hex(32)
    end while self.class.exists?(key: key)
  end
end
