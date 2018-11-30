class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string, default: "http://res.cloudinary.com/dp22wwxuy/image/upload/v1543573061/catjpsrnbyzyoajn0pqe.png"
  end
end
