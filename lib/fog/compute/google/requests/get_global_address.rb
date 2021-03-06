module Fog
  module Compute
    class Google
      class Mock
        def get_global_address(_address_name)
          Fog::Mock.not_implemented
        end
      end

      class Real
        def get_global_address(address_name)
          @compute.get_global_address(@project, address_name)
        end
      end
    end
  end
end
