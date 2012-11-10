class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper #Para las sesiones en el proceso de signin
end
