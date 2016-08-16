module MagicMatrix
  class Matrix
    # Magic::Matrix class
    # recives as an attribute path the the yaml file
    #
    # = response to only one public method magic_hash

    attr_accessor :matrix
      # returns hash read from the the given yaml file
      # each inner hash will be wrapped with the Magic::Hash class
      # which allows to infinitely read keys from the yaml just by using .key.nested_key.nested_nested_key

    def initialize(path)
      matrix_file = YAML.load_file(path)
      @matrix = matrix_file
      # @matrix = HashWrapper.new(matrix_file)
    end
  end
end
