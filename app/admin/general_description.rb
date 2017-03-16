ActiveAdmin.register GeneralDescription do
  permit_params :description_for, :content, :status

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :status
      f.input :description_for
      f.input :content, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
    end
    f.actions
  end
end
