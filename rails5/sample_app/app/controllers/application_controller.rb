class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "LOL m8"
  end

end
