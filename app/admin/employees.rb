ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :employee_name, :company_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:employee_name, :company_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      input :company_id, :label => 'Company', :as => :select, :collection => Company.all.map{|obj| ["#{obj.company_name}", obj.id]},required: true
      input :employee_name ,required: true
    end
    actions
  end
  
end
