class Invitation < ActiveRecord::Base



attr_accessible :validation, :titre, :description, :avatar, :dateinvitation, :place;

belongs_to :author
has_many :reservations


has_attached_file :avatar,
  :content_type => :image, 
  :storage => :s3, 
  :bucket => 'julienwat75', 
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :url => "tunes/:style/:id/:filename",
  :path => "tunes/:style/:id/:filename"
  

  def self.aleatoire
  
    1000 + rand(5000) 
    
  end

  def self.late(dates)
    DateTime.now < dates
  end


   

end
