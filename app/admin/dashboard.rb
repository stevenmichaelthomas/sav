ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Applications" do
          ul do
            Support.first(5).map do |support|
              li link_to(support.name, admin_supports_path(support))
            end
          end
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
