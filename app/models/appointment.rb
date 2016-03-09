class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :provider

  	def self.search(search)
	  if search
	    @search_result = Appointment.joins('LEFT OUTER JOIN patients ON patients.id = appointments.patient_id').where('lower(last_name) LIKE ?', "%#{search}%".downcase)
	    @search_result += Appointment.joins('LEFT OUTER JOIN patients ON patients.id = appointments.patient_id').where('lower(first_name) LIKE ?', "%#{search}%".downcase)
	    @search_result += Appointment.joins('LEFT OUTER JOIN providers ON providers.id = appointments.provider_id').where('lower(last_name) LIKE ?', "%#{search}%".downcase)
	    @search_result += Appointment.joins('LEFT OUTER JOIN providers ON providers.id = appointments.provider_id').where('lower(first_name) LIKE ?', "%#{search}%".downcase)
	    @search_result += Appointment.where("lower(appointment_type) LIKE ?", "%#{search}%".downcase)
	    @search_result += Appointment.where("lower(appointment_reason) LIKE ?", "%#{search}%".downcase)
	    @search_result += Appointment.where("lower(comments) LIKE ?", "%#{search}%".downcase)
	    return @search_result
	  else
	    self.all
	  end
	end
end