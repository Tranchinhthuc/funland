module LessonsHelper
  def css_class_by_progress progress
    case
    when progress < 25
      "danger"
    when progress < 50
      "warning"
    when progress < 75
      "info"
    when progress <= 100
      "success"
    end
  end
end
