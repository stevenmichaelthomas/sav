ActiveAdmin.register Tool do
  permit_params :title, :summary, :url, :phone, :category_id, :address,
                :featured

  index do
    column :title
    column :url
    column "Category" do |tool|
      tool.category.name
    end
    actions
  end
end
