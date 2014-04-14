<% temp = client.lookup_by_location('11101').condition['temp']%>
<% temp = ((temp * 9/5)+32) %>
<%= temp %> degrees, F. <% if temp > 35 && Time.now.hour > 5 && Time.now.hour < 21 %> 
	<% else %> 
<%= "Tomorrow is going to be a great day to climb!" %> 
	</p>
<% end %>