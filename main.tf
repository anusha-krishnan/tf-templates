variable "ibmcloud_api_key" {
  description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://cloud.ibm.com/iam#/apikeys"
}
variable "region" {
  description = "Region in which vpc resources are to be provisioned"
}
provider "ibm" {
  ibmcloud_api_key      = var.ibmcloud_api_key
  generation            = 2
  region                = var.region
}
resource "ibm_is_vpc" "testacc_vpc" {
  name = "testvpc"
}