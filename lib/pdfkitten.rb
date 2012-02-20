require "pdfkitten/version"
require "sinatra/base"
require "pdfkit"

class PDFKitten < Sinatra::Base
  post "/" do
    name = params.delete('name')
    html = params.delete('html')
    attachment name
    content_type 'application/pdf'
    PDFKit.new(html, params).to_pdf
  end
end
