class Author < ActiveRecord::Base
  authenticates_with_sorcery!
   has_many :commentaires
   has_many :invitations
   validates_confirmation_of :password, message: "should match confirmation", if: :password

end
