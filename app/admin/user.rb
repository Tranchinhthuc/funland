ActiveAdmin.register User do
  permit_params :full_name

  index do
    selectable_column
    column :avatar do |user|
      image_tag(user.avatar.url(:thumb))
    end
    column :full_name
    column :email
    column :sign_in_count
    column :last_sign_in_at
    column :last_sign_in_ip
    actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :full_name, :input_html => { :class => 'summernote'}, label: "Full name"
      # f.input :email, as: :html_editor
      f.input :email
    end
    f.actions
  end


end
