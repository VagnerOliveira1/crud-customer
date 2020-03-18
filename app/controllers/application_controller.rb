class ApplicationController < ActionController::Base
  before_action :authenticate_user! 
  before_action :set_paper_trail_whodunnit
  before_action :set_last_seen_at, if: proc { user_signed_in? }

  
  


  def user_for_paper_trail
    # Save the user responsible for the action
    user_signed_in? ? current_user.id : 'Guest'
  end



private
  def set_last_seen_at
    current_user.update_attribute(:last_seen_at, Time.current)
  end
end
