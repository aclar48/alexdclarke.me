class ResumesController < ApplicationController

  def show

  end

  def index

  end

  def pdf
    respond_to do |format|
      format.pdf do
        render pdf: 'resume',
               layout: 'pdf',
               template: 'resumes/show_pdf.html.erb',
               :show_as_html => params[:debug].present?,
               margin: {
                   top: 8,
                   bottom: 1,
                   left: 1,
                   right: 1
               }

      end
    end
  end
end
