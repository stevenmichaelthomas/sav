ActiveAdmin.register Tool do
  permit_params :title, :summary, :url, :phone, :category_id, :address
end
