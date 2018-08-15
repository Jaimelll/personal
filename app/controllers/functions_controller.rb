class FunctionsController < InheritedResources::Base

  private

    def function_params
      params.require(:function).permit(:descripcion)
    end
end

