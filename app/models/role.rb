class Role < ActiveRecord::Base
    has_many :Audition 

end




#
#  id_aud_PK                id_role_PK      
#  id_role_FK ==============^
