class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "<b>Lol<b>"
  end
end
