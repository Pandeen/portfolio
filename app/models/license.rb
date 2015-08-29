class License < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :product
    
    before_save :generate_key
    
    private
    
    def random_4
        rand_string = ''
        4.times { rand_string += Random.rand(0..9).to_s }
        rand_string
    end

    def generate_key
      self.key ||= "#{random_4}-#{random_4}-#{random_4}-#{random_4}"
    end

end