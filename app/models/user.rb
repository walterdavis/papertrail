class User < ApplicationRecord
  has_paper_trail :on => [:update, :destroy]
  has_attached_file :avatar, preserve_files: true, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
