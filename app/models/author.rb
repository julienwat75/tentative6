class Author < ActiveRecord::Base

  attr_accessible :username, :email, :avatar, :nom, :prenom, :password, :password_confirmation, :sexe, :nom_resa

  validates :email,  presence: true, length: { minimum: 5, maximum: 9 } 

  validates :password,  presence: true, length: { minimum: 5,maximum: 10 } 

  validates :nom,  presence: true

  validates :prenom,  presence: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: {case_sensitive: false}

  before_save { self.username = username.downcase }

  


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
