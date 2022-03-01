class Role < ActiveRecord::Base
    has_many :auditions 

    # def auditions
    #     return self.audition.all
    # end

    def actors 
        # binding.pry
        self.auditions.pluck(:actor)

    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        found = self.auditions.find_by(hired: true)
        return "no actor" unless found
        found
    end

    def understudy
        # .second
        found = self.auditions.where(hired: true)[1]
        return "no actor" unless found
        found
        
    end


end




#
#  id_aud_PK                id_role_PK      
#  id_role_FK ==============^
