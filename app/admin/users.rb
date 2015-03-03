ActiveAdmin.register User do
  #Allowed all params for mass update
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :merchantID
  filter :companyName
  filter :phone

  index do
  column :merchantID
  column :companyName
  column :phone
    actions
  end

  form do |f|
    f.inputs "User_Details" do
      f.input :merchantID,             	:label => "MerchantID"
      f.input :companyName,          	:label => "Company Name"
      f.input :phone,             		:label => "Company Phone"
    end
    f.actions
  end
end
