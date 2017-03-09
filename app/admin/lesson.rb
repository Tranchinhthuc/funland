include ApplicationHelper
ActiveAdmin.register Lesson do
  permit_params :name, :level, :age, :description, word_ids: []

  show do
    attributes_table do
      row :name
      row :level
      row :age
      row :words do |lesson|
        print_words lesson.words
      end
      row :description
    end
    active_admin_comments
  end


  controller do
    # def new_add_words
    #   @page_title = "Update words for #{resource.name}"
    #   @lesson = Lesson.find(params[:id])
    # end
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :name
      f.input :level
      f.input :age
      f.input :word_ids, as: :check_boxes, collection: Word.all, member_label: Proc.new { |w| "#{w.origin} (#{w.meaning})" }, label: "Words"
      f.input :description, as: :html_editor
    end
    f.actions
  end
end
