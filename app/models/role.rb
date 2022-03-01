class Role < ActiveRecord::Base
    has_many :audition 

    def auditions
        return self.audition.all
    end

    def actors 
        
    end

end




#
#  id_aud_PK                id_role_PK      
#  id_role_FK ==============^
