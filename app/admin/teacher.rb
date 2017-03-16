ActiveAdmin.register Teacher do
  permit_params :fullname, :description, :status, :avatar

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :status
      f.input :fullname
      f.input :avatar
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
