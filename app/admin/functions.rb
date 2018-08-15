ActiveAdmin.register Function do


    menu false
    
    permit_params :employee_id, :descripcion, :activo,
         :inicio, :fin, :sele1, :sele2, :admin_user_id
    
    
    filter :descripcion
    
    index :title => 'Lista de Funciones' do
      
            column("descripcion")
            
    
             actions
         
    end
    
         form :title => 'Edicion Funciones'  do |f|
    
    
             f.inputs  do
    
    
               f.input :descripcion  ###, :input_html => { :style =>  'width:30%'}
               f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden
    
    
               f.actions
    
             end
    
           end
    
    
           show :title => ' Ver Funcion'  do
    
                   attributes_table  do
    
    
    
    
                    row :descripcion
                    row "Modificado por" do |func|
                          AdminUser.where(id:func.admin_user_id).
                          select('email as dd').first.dd
                    end 
    
                   
                   end # de attributes
                 end # de show
    
    
                 sidebar "Foto" do
                   vempl1=Employee.where(correo_corp:current_admin_user.email.strip).select('id as dd').first.dd.to_s
                   vempl2=params[:employee_id]
                   if current_admin_user.categoria==3 or current_admin_user.categoria==2 or vempl1==vempl2 then
    
                      Employee.where(id:params[:employee_id]).each do |item|
                        @nomb=item.ape_nom.upcase
                        unless item.foto.blank?
                         li   image_tag item.foto.thumb.url, size: "250"
                        end
    
    
                      end # de each
                
    
                   li link_to "Nombre: "+"#{@nomb}", admin_employee_path(params[:employee_id])
    
                  end # de if
    
                  end # de sider
    
    
    end