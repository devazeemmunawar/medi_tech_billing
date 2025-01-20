class ConsultationMailer < ApplicationMailer
  default from: 'meditechbilling.us@gmail.com'

  def schedule_consultation(form_data)
    @form_data = form_data
    mail(to: 'meditechbilling.us@gmail.com', subject: 'New Consultation Request') do |format|
      format.html { render 'schedule_consultation' }
    end
  end
end
