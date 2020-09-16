
provider "ibm" {
  ibmcloud_api_key      = var.ibmcloud_api_key
  generation            = 2
  region                = var.region
}
resource "ibm_is_vpc" "testacc_vpc" {
  name = "testvpc"
}