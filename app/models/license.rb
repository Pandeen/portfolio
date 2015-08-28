class License < ActiveRecord::Base
    before_save :generate_key
    belongs_to :product
    belongs_to :user
    
    private
    
    def rand
        rand_string = ''
        4.times { rand_string += Random.rand(0..9).to_s }
        rand_string
    end

    def generate_key
      self.key = "#{rand}-#{rand}-#{rand}-#{rand}"
    end

end