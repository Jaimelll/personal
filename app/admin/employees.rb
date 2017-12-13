ActiveAdmin.register Employee do




    menu  priority: 16, label: "Personal"

    permit_params :dni, :ape_pat, :ape_mat,
         :nombres, :direccion, :telefono,
         :correo, :fec_nacimiento, :estado,
         :tip_tra, :esta_civil, :afp,
         :admin_user_id, :foto, :ape_nom,
         :correo_corp, :fec_inicon, :fec_tercon,
         :cargo, :grado,:area, :sele,
         :remuneracion, :sele2, :distrito



         scope :Activos, :default => true do |emples|
                   emples.where(estado:1,correo_corp:current_admin_user.email)
              end

        scope :CAS, :default => true do |emples|
                        emples.where(tip_tra:1)
             end
        scope :Orden_servicio, :default => true do |emples|
                       emples.where(tip_tra:2)
            end
        scope :Militares, :default => true do |emples|
                    emples.where(tip_tra:3)
               end


         scope :Inactivos, :default => true do |emples|
                        emples.where(estado:2)
                   end

         scope :Todos, :default => true do |emples|
                          emples.order('ape_nom')
               end


  filter :ape_nom, label:'Apellido Nombre'
  filter :cargo, label:'Puesto'
  filter :grado, label:'Perfil'

  filter :sele, label:'Nivel'


  index :title => 'Lista de Personal' do



          column("Apellido Nombre", :sortable => :ape_nom) do |emple|
            if  emple.ape_nom then
             emple.ape_nom.upcase
            end
           end

          column("Puesto") do |emple|
            emple.cargo
          end

          column("Perfil") do |emple|
            emple.grado
          end

          column("Foto") do   |emple|
                  unless emple.foto.blank?
                   li   image_tag emple.foto.thumb.url, size: "100"
                  end
                end



           actions

       end


   form :title => 'Edicion Personal'  do |f|


       f.inputs  do

         f.input :dni, :input_html => { :style =>  'width:30%'}
         f.input :ape_pat,:label => 'Apellido paterno', :input_html => { :style =>  'width:30%'}
         f.input :ape_mat,:label => 'Apellido materno', :input_html => { :style =>  'width:30%'}
         f.input :nombres, :input_html => { :style =>  'width:30%'}
         f.input :direccion, :input_html => { :style =>  'width:30%'}
         f.input :distrito, :input_html => { :style =>  'width:30%'}
         f.input :telefono, :input_html => { :style =>  'width:30%'}
         f.input :correo, :input_html => { :style =>  'width:30%'}
         f.input :correo_corp, :input_html => { :style =>  'width:30%'}
         f.input :cargo,:label => 'Puesto', :input_html => { :style =>  'width:30%'}
         f.input :grado,:label => 'Perfil', :input_html => { :style =>  'width:30%'}


         f.input :fec_nacimiento, :label => 'Fecha de nacimiento' ,:as =>:string, :input_html => { :style =>  'width:30%'}

         f.input :sele,:label => 'Nivel', :input_html => { :style =>  'width:30%'}
         f.input :remuneracion,:as =>:string, :input_html => { :style =>  'width:30%'}
         f.input :foto, :as => :file, :hint => f.object.foto.present? \
                      ? image_tag(f.object.foto.url(:thumb))
                       : content_tag(:span, "no hay foto aun")

         f.input :admin_user_id, :input_html => { :value => current_admin_user.id }, :as => :hidden



         f.actions

       end

     end

     show :title => ' Personal'  do

             attributes_table  do

              row :dni
              row :ape_pat
              row :ape_mat
              row :nombres do |emple|
               @nombre=emple.ape_pat+' '+emple.ape_mat+', '+emple.nombres
               Employee.where(id:emple.id).update_all( ape_nom: @nombre)
               emple.nombres
             end

              row 'Puesto' do |emple|
                emple.cargo
              end
              row 'Perfil' do |emple|
                emple.grado
              end

              row :direccion
              row :distrito
              row :telefono
              row :correo
              row :correo_corp



              row 'Fecha de nacimiento' do |emple|
                emple.fec_nacimiento
              end
              row :esta_civil
             row 'Fecha de ingreso' do |emple|
               emple.fec_inicon
             end

             row 'Término de contrato' do |emple|
               emple.fec_tercon
             end

             row 'Nivel' do |emple|
               emple.sele
             end

             row :remuneracion do |emple|

              number_with_delimiter(emple.remuneracion, delimiter: ",")

            end
            row :foto


             end
                end

              end
