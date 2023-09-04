class PdfController < ApplicationController
  def show
    send_file "#{Rails.root}/public/pdf/cv-clara-pecot.pdf", type: 'application/pdf', disposition: 'inline'
  end
end
