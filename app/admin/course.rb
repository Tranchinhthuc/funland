ActiveAdmin.register Course do
  permit_params :name, :description, :status, :course_type

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :course_type
      f.input :status
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
