class ApplicationController < ActionController::Base

  def index
    #@c_psicologos = Psicologo.count
    #@c_usuarios = Usuario.count
    #@c_profissionals = Profissional.count
    @atendimentos = Atendimento.where(data: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week)
  end


  def pdf_download
    pdf = Prawn::Document.new
    pdf.text "Hello World!"
    send_data(pdf.render,
              filename: "hello.pdf",
             type: "application/pdf")
  end


  def pdf_preview
    pdf = Prawn::Document.new
    pdf.text "This is a preview"

    pdf.start_new_page
    pdf.text "New Page"
    1000.times do |i|
      pdf.text "Line #{i}"
    end
    send_data(pdf.render,
              filename: "preview.pdf",
             type: "application/pdf",
             disposition: "inline")

  end


  def execute_statement(sql)
    results = ActiveRecord::Base.connection.execute(sql)

    if results.present?
      return results
    else
      return nil
    end
  end

end
