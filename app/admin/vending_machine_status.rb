ActiveAdmin.register VendingMachineStatus do
  #Allowed all params for mass update
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :serialNumber
  filter :type
  filter :row
  filter :total

  index do
  column :serialNumber
  column :type
  column :row
  column :total
    actions
  end

  form do |f|
    f.inputs "Vending Machine Status" do
      f.input :serialNumber,            :label => "Serial Number of Machine"
      f.input :type,          			:label => "Success or Error"
      f.input :row,             		:label => "0 - 37 (A01-A18,B1-B14,C1-C5)"
      f.input :total,             		:label => "Total Count for Type"
    end
    f.actions
  end
end
