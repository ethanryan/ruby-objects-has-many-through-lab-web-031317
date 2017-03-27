require 'pry'

class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments #need @ before songs here, or rspec runs long loop... why?
  end

  def add_appointment(appointment)
    #binding.pry
    appointments << appointment #each appointment instance gets saved to @appointment... (#don't need @ before songs here)
    appointment.doctor = self #and each appointment instance belongs to that appointment's doctor.
  end


  def patients
    #self.songs.collect do |song|
    ###above is how the lesson had it, the self before songs is being made explicit in the line above, but the line below works too:
    appointments.collect do |appointment| #don't need @ before songs here
      appointment.patient
    end
  end

end
