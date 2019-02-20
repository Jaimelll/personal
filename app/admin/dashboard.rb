ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


    case current_admin_user.categoria

      when 2,3
        br
     #    li  link_to "Niveles de Personal CAS", reports_vhoja1_path(format:  "xlsx", :param1=> 1)
        br
        li  link_to "Relacion de Personal CAS-Militar ACTIVO", reports_vhoja1_path(format:  "xlsx", :param1=> 2)
        br
        li  link_to "Funciones", reports_vhoja1_path(format:  "xlsx", :param1=> 3)
      end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
