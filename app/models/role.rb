class Role < ActiveRecord::Base
    has_many :audition 

end




#
#  id_aud_PK                id_role_PK      
#  id_role_FK ==============^
