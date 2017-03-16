ActiveAdmin.register Slide do
  permit_params(:status, slide_pictures_attributes: [:id, :slide_id, :picture])


  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :status
      f.inputs "Pictures" do
        f.has_many :slide_pictures, heading: false, allow_destroy: true do |sl|
          sl.input :picture
        end
      end
    end
    f.actions
  end
end
