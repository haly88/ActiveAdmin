ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

  columns do

    column do
      panel "Patients without address" do
        table_for Patient.where(:address_id => nil).limit(3) do
          column :name do |patient|
            link_to patient.name, [:admin, patient]
          end
          column :address
          column :created_at
        end
      end
    end
  end

  columns do

    column do
      panel "Last Practices" do
        table_for Practice.order('created_at desc').limit(3) do
          column :name do |practice|
            link_to practice.name, [:admin, practice]
          end
          column :address
          column :price
          column :created_at
        end
      end
    end

    column do
      panel "Last Physician" do
        table_for Physician.order('created_at desc').limit(3) do
          column :name do |physician|
            link_to physician.name, [:admin, physician]
          end
          column :address
          column :created_at
        end
      end
    end
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
