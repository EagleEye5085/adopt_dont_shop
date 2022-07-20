class Application < ApplicationRecord

  validates :name, presence: true
  validates :address_street, presence: true
  validates :address_city, presence: true
  validates :address_state, presence: true
  validates :address_zip_code, presence: true, numericality: true
  validates :description, presence: true
  validates :status, presence: true

  has_many :pet_applications
  has_many :pets, through: :pet_applications

  attribute :status, :string, default: "In Progress"

  def pet_approved
  end

  def pet_rejected
  end
end
