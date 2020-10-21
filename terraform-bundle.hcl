terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "0.13.0"
}

# Define which provider plugins are to be included
providers {
  # Include a custom plugin to the bundle. Will search for the plugin in the
  # plugins directory and package it with the bundle archive. Plugin must have
  # a name of the form: terraform-provider-*, and must be built with the operating
  # system and architecture that terraform enterprise is running, e.g. linux and amd64.
  artifactory   = {
    versions = ["2.1.0"]
    source = "github.com/atlassian/artifactory"
  }
  octopusdeploy = {
    versions = ["0.5.0"]
    source = "github.com/octopusdeploy/octopusdeploy"
  }
}
