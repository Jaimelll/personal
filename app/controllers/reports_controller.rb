class ReportsController < ApplicationController




  def vhoja1

    respond_to do |format|
      format.html

      format.xlsx{render template: 'reports/hoja1.xlsx.axlsx', xlsx:'Activos'}
    end
  end



end
