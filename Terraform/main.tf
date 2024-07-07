provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "${var.environment}-rg"
  location = var.location
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.environment}-asp"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    tier = "Free"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "${var.environment}-2020ht66049-webapp"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
  }

  app_settings = {
    "environment" = var.environment
  }
}
