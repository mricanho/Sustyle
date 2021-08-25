<% if current_user.otp_required_for_login? %>
  <div><%= link_to "Disable", two_factor_path, method: :delete, remote: true, class: "button is-danger is-light"
<% else %>
  <div><%= link_to "Enable", two_factor_path, method: :post, remote: true, class: "button is-success is-light"
<% end %>