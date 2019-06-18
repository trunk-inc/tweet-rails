class SessionsController < ApplicationController
  def new
    @form = SessionForm.new
  end
end
