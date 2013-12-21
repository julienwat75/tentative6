class Invitation < ActiveRecord::Base



attr_accessible :validation, :titre, :description, :avatar, :dateinvitation;

belongs_to :author



has_attached_file :avatar,
  :content_type => :image,
  :storage => :s3, 
  :bucket => 'julienwat75', 
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :url => "tunes/:style/:id/:filename",
  :path => "tunes/:style/:id/:filename"

  def self.aleatoire
  
    #1000 + rand(5000) 
    1000 
  end


   

end
