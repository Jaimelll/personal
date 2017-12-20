class AgreementsController < InheritedResources::Base

  private

    def agreement_params
      params.require(:agreement).permit(:employee_id, :puesto, :admin_user_id)
    end
end

