class Organisation < ActiveRecord::Base
  before_create :create_ref

  has_many :users

  private

  def create_ref
    self.ref = 100_000 + id
  end
end
