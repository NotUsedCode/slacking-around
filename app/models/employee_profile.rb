class EmployeeProfile < ApplicationRecord
  belongs_to :employee
  belongs_to :profession, optional: true

  has_one_attached :avatar

  def full_name
    first_name + ' ' + last_name
  end
end
