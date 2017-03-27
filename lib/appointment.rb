require 'pry'

class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    #binding.pry
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #a new song gets associated to a doctor
  end

end
