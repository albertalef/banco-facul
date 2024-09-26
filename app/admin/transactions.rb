ActiveAdmin.register Transaction do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :supplier_id, :transaction_status_id, :fraud_id, :dispute_id, :bill_id, :value, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:supplier_id, :transaction_status_id, :fraud_id, :dispute_id, :bill_id, :value, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
