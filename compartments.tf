locals {
    compartment_names = toset( ["test_compartment_1", "test_compartment_2"] )
}

resource "oci_identity_compartment" "tf-compartments" {
    for_each = local.compartment_names
    compartment_id = "ocid1.compartment.oc1..aaaaaaaacuepah577vse7ozgunlfulaznf5rvqaujutjgwbnc2ccmk53uk3a"
    description = "Test compartment for Terraform pipelines."
    enable_delete = true
    name = each.key
}
