ActiveAdmin.register Word do
  permit_params :origin, :meaning, :picture, :audio

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    selectable_column
    column :origin
    column :meaning
    column :picture do |word|
      image_tag(word.picture.url(:thumb))
    end
    column :audio do |word|
      audio_tag(word.audio, controls: true)
    end
    actions
  end
end
