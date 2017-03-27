class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments #need @ before appointments here, or rspec runs long loop... why?
  end

  def add_appointment(appointment)
    appointments << appointment #don't need the @ here
    appointment.patient = self #each patient instance belongs to that appointment's doctor.
  end

  def doctors
    #self.songs.collect do |song| <<<--- this works for the line below as well
    appointments.collect do |appointment| #don't need the @ here
      appointment.doctor
    end
  end

end
