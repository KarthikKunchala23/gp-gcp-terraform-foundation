module "gcp_api_role" {
  source  = "../../modules/iam_roles"
  role_id = "apiGatewayWriter"
  title   = "apiGatewayWriter"

  permissions = [
    # APIs
    "apigateway.apis.create",
    "apigateway.apis.delete",
    "apigateway.apis.get",
    "apigateway.apis.getIamPolicy",
    "apigateway.apis.list",
    "apigateway.apis.setIamPolicy",
    "apigateway.apis.update",

    # API Configs
    "apigateway.apiconfigs.create",
    "apigateway.apiconfigs.delete",
    "apigateway.apiconfigs.get",
    "apigateway.apiconfigs.getIamPolicy",
    "apigateway.apiconfigs.list",
    "apigateway.apiconfigs.setIamPolicy",
    "apigateway.apiconfigs.update",

    # Gateways
    "apigateway.gateways.create",
    "apigateway.gateways.delete",
    "apigateway.gateways.get",
    "apigateway.gateways.getIamPolicy",
    "apigateway.gateways.list",
    "apigateway.gateways.setIamPolicy",
    "apigateway.gateways.update",

    # Locations
    "apigateway.locations.get",
    "apigateway.locations.list",

    # Long-running operations
    "apigateway.operations.get",
    "apigateway.operations.list",
    "apigateway.operations.cancel",
    "apigateway.operations.delete"
  ]
}