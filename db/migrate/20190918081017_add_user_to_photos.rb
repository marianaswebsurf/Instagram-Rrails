class AddUserToPhotos < ActiveRecord::Migration[6.0]
  def change
  	add_reference :photos, :user, index: true
  end
end
