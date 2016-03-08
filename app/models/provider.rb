class Provider < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true

	def full_name
		return last_name + ", " + first_name
	end
end
