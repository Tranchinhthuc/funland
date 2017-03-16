ActiveAdmin.register TrialRegistration do
  permit_params :kid_name, :email, :phone, :message, :course_id, :branch_id
end
