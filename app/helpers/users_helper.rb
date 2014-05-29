module UsersHelper

  def climber_name
    if @current_user.climber_name
      climber_name = @current_user.climber_name.titleize
    else
      climber_name = @current_user.name.titleize 
    end
    return climber_name
  end

end