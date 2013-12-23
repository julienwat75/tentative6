class Author < ActiveRecord::Base

  attr_accessible :username, :email, :avatar, :nom, :prenom, :password, :password_confirmation, :sexe, :nom_resa;

  


  authenticates_with_sorcery!
   has_many :commentaires
   has_many :invitations
   has_many :reservations
   validates_confirmation_of :password, message: "should match confirmation", if: :password
   
has_attached_file :avatar,
  :content_type => :image,
  :storage => :s3, 
  :bucket => 'julienwat75', 
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :url => "tunes/:style/:id/:filename",
  :path => "tunes/:style/:id/:filename"
   


end
