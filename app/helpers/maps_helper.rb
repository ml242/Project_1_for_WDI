module MapsHelper

  # def crag_map
  #   @hash = Gmaps4rails.build_markers(@crags) do |crag, marker|
  #     crag_link = view_context.link_to crag.name, crag_path(crag)
  #     marker.lat crag.latitude
  #     marker.lng crag.longitude
  #     marker.infowindow "<h4><u>#{crag_link}</u></h4>"     
  #   end
  #   if @current_user
  #     user_hash = Gmaps4rails.build_markers(@current_user) do |user, marker|
  #       marker.lat user.latitude
  #       marker.lng user.longitude
  #       marker.infowindow user.name
  #     end
  #     @hash.push(@user_hash[0])
  #   end
  # end

end