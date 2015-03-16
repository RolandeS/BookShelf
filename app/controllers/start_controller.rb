class StartController < ApplicationController
  before_filter :ensure_logged_in

	# before_filter :load_shelf
	
	  def index
	  	@shelves = demo_shelves
	  end
end
