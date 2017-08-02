module Fog
  module Compute
    class Google
      class Mock
        def get_global_operation(operation)
          Fog::Mock.not_implemented
        end
      end

      class Real
        # Get the updated status of a global operation
        # https://developers.google.com/compute/docs/reference/latest/globalOperations
        #
        # @param operation [Google::Apis::ComputeV1::Operation] Return value from asynchronous act
        def get_global_operation(operation)
          @compute.get_global_operation(@project, operation)
        end
      end
    end
  end
end
