ActiveAdmin.register Employee do

  

    menu  priority: 16, label: "Personal"

    permit_params :dni, :ape_pat, :ape_mat,
         :nombres, :direccion, :telefono,
         :correo, :fec_nacimiento, :estado,
         :tip_tra, :esta_civil, :afp,
         :admin_user_id, :foto, :ape_nom,
         :correo_corp, :fec_inicon, :fec_tercon,
         :cargo, :grado,:area, :sele,
         :remuneracion, :sele2, :distrito,
         :anexo, :celular_corp, :obs, :sele3



         scope :Activos, :default => true do |emples|
                   emples.where(estado:1)
              end

        scope :CAS, :default => true do |emples|
                        emples.where(tip_tra:1,estado:1)
             end
        scope :Orden_servicio, :default => true do |emples|
                       emples.where(tip_tra:2,estado:1)
            end
        scope :Militares, :default => true do |emples|
                    emples.where(tip_tra:3,estado:1)
               end
        scope :Otros, :default => true do |emples|
                     emples.where(tip_tra:4,estado:1)
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
  filter :area, :as => :select, :collection =>
       Formula.where(product_id:26).order('nombre ASC').map{|u| ["#{u.descripcion}", u.orden]}
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
          column("area") do |emple|
                      if emple.area and emple.area>0 then

                         Formula.where(product_id:26, orden:emple.area).
                                          select('nombre as dd').first.dd


                        end
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
         f.input :anexo,:label => 'Numero de anexo', :input_html => { :style =>  'width:30%'}
         f.input :celular_corp,:label => 'Celular Corporativo', :input_html => { :style =>  'width:30%'}
         f.input :correo, :input_html => { :style =>  'width:30%'}
         f.input :correo_corp, :input_html => { :style =>  'width:30%'}
         f.input :cargo,:label => 'Puesto', :input_html => { :style =>  'width:30%'}
         f.input :grado,:label => 'Perfil', :input_html => { :style =>  'width:30%'}

         f.input :area, :as => :select, :collection =>
            Formula.where(product_id:26).order('nombre').map{|u| [u.descripcion, u.orden]}
        f.input :estado, :as => :select, :collection =>
               Formula.where(product_id:22).order('nombre').map{|u| [u.nombre, u.orden]}
         f.input :tip_tra,:label => 'Tipo de vinculo', :as => :select, :collection =>
            Formula.where(product_id:23).order('nombre').map{|u| [u.nombre, u.orden]}
         f.input :fec_nacimiento, :label => 'Fecha de nacimiento' ,:as =>:string, :input_html => { :style =>  'width:30%'}
         f.input :esta_civil, :as => :select, :collection =>
            Formula.where(product_id:24).order('nombre').map{|u| [u.nombre, u.orden]}
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

              row 'Puesto' do |emple|
                emple.cargo
              end
              row :distrito
              row :telefono
              row 'Numero de anexo' do |emple|
                emple.anexo
              end
              row 'Celular Corporativo' do |emple|
                emple.celular_corp
              end
              row :correo
              row :correo_corp


             row :afp do |emple|
                       if emple.afp and emple.afp>0 then

                          Formula.where(product_id:30, orden:emple.afp).
                           select('nombre as dd').first.dd


                         end
                 end
              row :estado do |emple|
                        if emple.estado and emple.estado>0 then

                           Formula.where(product_id:22, orden:emple.estado).
                            select('nombre as dd').first.dd


                          end
                  end
              row  'Tipo de vinculo' do |emple|
                          if emple.tip_tra and emple.tip_tra>0 then
                           Formula.where(product_id:23, orden:emple.tip_tra).select('nombre as dd').first.dd
                          end
              end
              row 'Fecha de nacimiento' do |emple|
                emple.fec_nacimiento
              end
              row :esta_civil do |emple|
                        if emple.esta_civil and emple.esta_civil>0 then

                           Formula.where(product_id:24, orden:emple.esta_civil).
                                            select('nombre as dd').first.dd


                          end
            end
             row 'Fecha de ingreso' do |emple|
               emple.fec_inicon
             end

             row 'Término de contrato' do |emple|
               emple.fec_tercon
             end
             row :area do |emple|
                         if emple.area and emple.area>0 then

                            Formula.where(product_id:26, orden:emple.area).
                                             select('descripcion as dd').first.dd


                           end
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
