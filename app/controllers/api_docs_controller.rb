module Api::V1
    class ApiDocsController < BaseApiController
      include Swagger::Blocks
      skip_before_action :authorzation_user
    
      swagger_root do
        key :swagger, '2.0'
        info do
          key :version, '1.0'
          key :title, 'Title'
          key :description, "Description demonstrate features in the swagger-2.0 specification"
        end
      end
    
      SWAGGERED_CLASSES = [
        Api::V1::UsersController,
        self,
      ].freeze
    
      def index
        render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
      end
    end
    end
    