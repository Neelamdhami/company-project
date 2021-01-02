ActiveAdmin.register EmployeesProject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :employee_id, :project_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_id, :project_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      input :project_id, :label => 'Project', :as => :select, :collection => Project.all.map{|obj| ["#{obj.project_name}", obj.id]},required: true
      input :employee_id, :label => 'Employee', :as => :select, :collection => Employee.all.map{|obj| ["#{obj.employee_name}", obj.id]},required: true
    end
    actions
  end
end
