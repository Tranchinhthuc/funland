ActiveAdmin.register GeneralDescription do
  permit_params :description_for, :content, :status

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :status
      f.input :description_for
      f.input :content, as: :html_editor
    end
    f.actions
  end
end
