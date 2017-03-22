class HomeController < ApplicationController
  before_action :authenticate_member!

  layout 'system'

  def index; end
end
