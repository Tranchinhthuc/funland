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

  # select_tag :level, options_for_select(Lesson.levels.collect{ |k,v| [Lesson.level_to_string(k.to_sym), v] }, params[:level]), {:prompt => "--Select level--", class: "form-control"}

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
      f.input :level, as: :select, collection: Lesson.levels.collect{|k, v| [Lesson.level_to_string(k.to_sym), k]}, :prompt => "--Select level--", include_blank: true
      f.input :age, as: :select, collection: Lesson.ages.collect{|k, v| [Lesson.age_to_string(k.to_sym), k]}, :prompt => "--Select age--", include_blank: true
      f.input :word_ids, as: :check_boxes, collection: Word.all, member_label: Proc.new { |w| "#{w.origin} (#{w.meaning})" }, label: "Words"
      f.input :description, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
    end
    f.actions
  end
end
