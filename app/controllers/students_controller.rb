class StudentsController < InheritedResources::Base

  private

    def student_params
      params.require(:student).permit(:employee_id, :centro, :admin_user_id)
    end
end

