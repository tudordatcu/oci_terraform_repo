variable "compartment_ocid" {}

locals {
    compartment_names = toset( ["test_compartment_1", "test_compartment_2"] )
}

resource "oci_identity_compartment" "tf-compartments" {
    for_each = local.compartment_names
    compartment_id = "${var.compartment_ocid}"
    description = "Test compartment for Terraform pipelines."
    enable_delete = true
    name = each.key
}
