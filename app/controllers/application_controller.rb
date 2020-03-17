class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def user_for_paper_trail
    # Save the user responsible for the action
    user_signed_in? ? current_user.email : 'Guest'
  end
  
end
