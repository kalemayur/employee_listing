class Employee < ActiveRecord::Base
  validates :phone, :numericality => {:only_integer => true}
  validates_uniqueness_of :email_address
  validates_presence_of :email_address
  mount_uploader :image, ImageUploader
  validates_date :date_of_birth,  on_or_before: :today


  def self.search(search)
    if search
      employee = Employee.find_by(employee_name: search)
      if employee
        self.where(id: employee)
      else
        Employee.all
      end
    else
      Employee.all
    end
  end
end