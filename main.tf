data "tfe_outputs" "project_list" {
  organization = "TF-Cloud-Demo-OE"
  workspace =  "tfc-project-mgmt"
}

resource "null_resource" "project-id" {
  triggers = {
    id = data.tfe_outputs.project_list
  }
}

output "project-ids" {
  value = null_resource.project-id
}