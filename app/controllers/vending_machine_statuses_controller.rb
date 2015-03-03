class VendingMachineStatusesController < InheritedResources::Base

  private

    def vending_machine_status_params
      params.require(:vending_machine_status).permit(:serialNumber, :type, :row, :total)
    end
end

