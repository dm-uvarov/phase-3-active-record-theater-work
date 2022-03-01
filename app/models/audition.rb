class Audition < ActiveRecord::Base
    belongs_to :role

    def self.role
        return self.role
    end

end