################################################################################
################################################################################
################################################################################
###                                                                          ###
### Name: terraform-vsphere-vcsa-sso-join                                    ###
### Description: [Terraform] Module to create and deploy VMware VCSA in SSO  ###
### Last Modified: cloudduo 29/03/2021                                       ###
### License: MIT (See LICENSE.txt in the root of this repository for more    ###
###   information.)                                                          ###
###                                                                          ###
################################################################################
################################################################################
################################################################################

output "vcenter_hostname" {
  value       = var.vcbuild_vchostname
  description = "The vCenter Hostname is:"
}
output "vcenter_ip_address" {
  value       = var.vcbuild_vcip
  description = "The vCenter Management IP Address is:"
}
output "vcenter_username" {
  value       = "administrator@${var.vcbuild_sso_domain_name}"
  description = "The vCenter SSO username is:"
}
output "vcenter_password" {
  value       = var.vcbuild_vcssopassword
  description = "The vCenter SSO password is:"
}
output "vcenter_rootpassword" {
  value       = var.vcbuild_vcrootpassword
  sensitive   = true
  description = "The vCenter root password is:"
}