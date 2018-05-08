ActiveAdmin.register Student do

  menu false

  permit_params :employee_id, :centro, :especialidad,
       :desde, :hasta, :grado,
       :obs, :admin_user_id


  filter :centro

  index :title => 'Lista de Estudios' do

    vempl1=Employee.where(correo_corp:current_admin_user.email.strip).select('id as dd').first.dd.to_s
    vempl2=params[:employee_id]
    if current_admin_user.categoria==3 or current_admin_user.categoria==2 or vempl1==vempl2 then



          column("centro")
          column("especialidad")
          column("desde")
          column("hasta")
          column("grado")


           actions
       end
     end

       form :title => 'Edicion Estudios'  do |f|


           f.inputs  do


             f.input :centro, :input_html => { :style =>  'width:30%'}
             f.input :especialidad, :input_html => { :style =>  'width:30%'}
             f.input :desde,:as =>:string, :input_html => { :style =>  'width:30%'}
             f.input :hasta,:as =>:string, :input_html => { :style =>  'width:30%'}

             f.input :grado, :input_html => { :style =>  'width:30%'}
             f.input :obs, :input_html => { :style =>  'width:30%'}

             f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden


             f.actions

           end

         end


         show :title => ' Estudios'  do

                 attributes_table  do




                  row :centro
                  row :especialidad
                  row :desde
                  row :hasta
                  row :grado
                  row :obs




                 end
               end


               sidebar "Foto" do

                 vempl1=Employee.where(correo_corp:current_admin_user.email.strip).select('id as dd').first.dd.to_s
                 vempl2=params[:employee_id]
                 if current_admin_user.categoria==3 or current_admin_user.categoria==2 or vempl1==vempl2 then
                    Employee.where(id:params[:employee_id]).each do |item|
                      @nomb=item.ape_nom.upcase
                      unless item.foto.blank?
                       li   image_tag item.foto.thumb.url, size: "250"
                      end


                   end
                

                 li link_to "Nombre: "+"#{@nomb}", admin_employee_path(params[:employee_id])

                end

                 end # de sider











  end
