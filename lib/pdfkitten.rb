require "pdfkitten/version"
require "sinatra/base"
require "pdfkit"

class PDFKitten < Sinatra::Base
  post "/" do
    attachment params[:name]
    content_type 'application/pdf'
    PDFKit.new(params[:html]).to_pdf
  end
end
