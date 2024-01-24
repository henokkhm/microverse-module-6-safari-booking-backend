Rswag::Ui.configure do |c|
  # Use openapi_endpoint instead of swagger_endpoint
  c.openapi_endpoint '/api-docs/v1/swagger.yaml', 'API V1 Docs' do |config|
    # You can configure additional options here if needed
  end

  # Add Basic Auth in case your API is private
  # c.basic_auth_enabled = true
  # c.basic_auth_credentials 'username', 'password'
end
