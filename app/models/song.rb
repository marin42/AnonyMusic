class Song < ActiveRecord::Base
  before_create :create_unique_identifier
  validates :key, uniqueness: true

  def create_unique_identifier
    begin
      self.key = SecureRandom.hex(5) # or whatever you chose like UUID tools
    end while self.class.exists?(:key => key)
  end
end
