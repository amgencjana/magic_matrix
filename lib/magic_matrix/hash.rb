module Magic
  class HashWrapper
     # Magic::Hash class 
     # receives Hash object 
     # is being used for wrapping it with HashWithIndifferentAccess
     # to make sure that both ways :key and 'key' allow to return an value
     #
     # allows to work with hash object by referring to the keys as a methods
     #
     # i.e. hash = { key_1: { key_1_1: 11, key_1_2: [1, 2] } , key_2: { key_2_1: 21, key_2_2: 22 } }
     #
     # hash.key_1.key_1_2 
     # returns value [1, 2]
    attr_accessor :hash
      
    def initialize( h )
      @hash = HashWithIndifferentAccess.new h
    end

    def method_missing( method )
      return nil unless @hash.keys.include?( method.to_s ) 
      res = @hash.fetch( method.to_s )

      if res.kind_of?( HashWithIndifferentAccess )
        return HashWrapper.new( res ) 
      else 
        return res 
      end
    end
  end
end