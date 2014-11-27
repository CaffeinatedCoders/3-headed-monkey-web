ActiveAdmin.register Device do
  index do
    column :id do |device|
      link_to device.id, [:admin, device]
    end
    column :name
    column :user
    column :key do |device|
      device.key.truncate(20)
    end
    column :created_at
    column :updated_at
  end
end