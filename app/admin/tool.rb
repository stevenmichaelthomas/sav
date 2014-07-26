ActiveAdmin.register Tool do
  permit_params :title, :summary, :url, :phone, :category_id, :address

  index do
    column :title
    column :url
    column "Category" do |tool|
      tool.category.name
    end
  end
end
