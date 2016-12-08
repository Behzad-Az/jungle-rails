class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, exclusion: { in: [nil] }
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end


# <section class="users-login">

#   <header class="page-header">
#     <h1>Login here...</h1>
#   </header>

#   <div class="row">
#     <div class="col-sm-6 col-sm-offset-1">
#       <%= form_for @user do |form| %>

#         <% if form.object.errors.any? %>
#           <div class="alert alert-danger">
#             <strong>The following errors prevented saving:</strong>
#             <ul>
#               <% form.object.errors.full_messages.each do |error| %>
#                 <li><%= error %></li>
#               <% end %>
#             </ul>
#           </div>
#         <% end %>

#           <div class="form-group">
#             <%= form.label :login %>
#             <%= form.text_field :email, placeholder: "enter valid email here", class: 'form-control' %>
#             <%= form.text_field :password, placeholder: "enter password here", class: 'form-control' %>
#           </div>

#         <%= form.submit 'login', class: 'btn btn-primary' %>
#       <% end %>
#     </div>
#   </div>

# </section>
