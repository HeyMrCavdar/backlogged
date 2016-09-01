# backlogged
<!-- This is the start of a project, with no resolution.
This will be my playground to learn how to code.

Things I hope to implement in this project:
	-Incorporate an API to feed data about games
	-Deploy this to a live website using Heroku
	-Take it into the mobile space eventually

 -->

 Progress to date: Made it to section 5.12 of Rails tutorial: http://guides.rubyonrails.org/getting_started.html


Things to review for better understanding: Active Record Validations: http://guides.rubyonrails.org/active_record_validations.html




Notes:
Notice that inside the create action we use render instead of redirect_to when save returns false. The render method is used so that the @article object is passed back to the new template when it is rendered. This rendering is done within the same request as the form submission, whereas the redirect_to will tell the browser to issue another request.

Error Handling section: super useful, no need for alert in controller if fail to save.

<% if @game.errors.any? %>
		<div id="error_explanation">
			<h2>
				<%= pluralize(@game.errors.count, "error") %>
				prohibited this article from being saved:
			</h2>
			<ul>
				<% @game.errors.full_messages.each do |msg| %>
					<li><%= msg %></li>
				<%end%>
			</ul>
		</div>
	<%end%>


Form_for documentation: http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_for