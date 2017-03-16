ActiveAdmin.register Article do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :author_id, :title, :content, :author_type
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  # before_create do |article|
  #   article.author = current_admin_user
  # end

  controller do
    def create
      params[:article].merge!({ author_id: current_admin_user.id, author_type: "AdminUser" })
      super
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :author_id, as: :select, collection: AdminUser.all.map{|u| [u.email, u.id]}, :input_html => { :value => current_admin_user.id}, include_blank: false
      f.input :title
      f.input :content, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
    end
    f.actions
  end

end
