ActiveAdmin.register Experience do

  menu false

  permit_params :employee_id, :empresa, :desde,
       :hasta, :cargo, :obs,
       :admin_user_id


  filter :empresa

  index :title => 'Lista de Experiencia Laboral' do
    vempl1=Employee.where(correo_corp:current_admin_user.email).select('id as dd').first.dd.to_s
    vempl2=params[:employee_id]
    if current_admin_user.categoria==3 or current_admin_user.categoria==2 or vempl1==vempl2 then

    column("empresa")

    column("desde")
    column("hasta")
    column("cargo")



           actions
       end
  end

       form :title => 'Edicion Carga Familiar'  do |f|


           f.inputs  do


             f.input :empresa, :input_html => { :style =>  'width:30%'}

             f.input :desde, :as =>:string, :input_html => { :style =>  'width:30%'}
             f.input :hasta, :as =>:string, :input_html => { :style =>  'width:30%'}

             f.input :cargo, :input_html => { :style =>  'width:30%'}
             f.input :obs, :input_html => { :style =>  'width:30%'}

             f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden


             f.actions

           end

         end


         show :title => 'Experiencia Laboral'  do

                 attributes_table  do




                   row :empresa

                   row :desde
                   row :hasta
                   row :cargo
                   row :obs

                 end
               end
              

               sidebar "Foto" do
                 vempl1=Employee.where(correo_corp:current_admin_user.email).select('id as dd').first.dd.to_s
                 vempl2=params[:employee_id]
                 if current_admin_user.categoria==3 or current_admin_user.categoria==2 or vempl1==vempl2 then

                    Employee.where(id:params[:employee_id]).each do |item|
                      @nomb=item.ape_nom.upcase
                      unless item.foto.blank?
                       li   image_tag item.foto.thumb.url, size: "250"
                      end


                   end


                 li link_to "Nombre: "+"#{@nomb}", admin_employee_path(params[:employee_id])



                 end # de sider

             end









  end
