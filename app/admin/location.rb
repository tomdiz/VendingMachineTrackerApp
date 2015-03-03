ActiveAdmin.register Location do
  #Allowed all params for mass update
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :locationName
  filter :notes
  filter :latitude
  filter :longitude

  index do
  column :locationName
  column :notes
  column :phone
  column :longitude
    actions
  end

  form do |f|
    f.inputs "Location Details" do
      f.input :locationName,            :label => "Location Name"
      f.input :notes,          			:label => "Location Notes"
      f.input :latitude,             	:label => "Location latitude"
      f.input :longitude,             	:label => "Location longitude"
    end
    f.actions
  end
end


