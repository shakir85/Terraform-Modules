variable "proxmox_node_name" {
  type        = string
  description = "Proxmox node name. In a single-node environment, it's typically: `pve`"
}

variable "hostname" {
  type        = string
  description = "VM hostname."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "VM resource description."
}

variable "tags" {
  default     = ["terraform"]
  type        = list(string)
  description = "List of strings for tags. For example: ['terraform', 'ubuntu']."
}

variable "username" {
  type        = string
  description = "Default user. This will be a sudo user and have SSH login access."
}

variable "user_password" {
  default     = "changeme"
  type        = string
  description = "User login password. This password is used only for logging in from the Proxmox UI console. Upon the first login, a prompt to change the password will be presented."
}

variable "enable_guest_agent" {
  default     = false
  type        = bool
  description = "Whether to enable the QEMU guest agent. You must install `qemu-guest-agent` - it could be installed via cloud-init. Read the 'Qemu guest agent' section in bpg/proxmox docs first."
}

variable "disk_name" {
  type        = string
  description = "Proxmox storage pool (disk name) where the VM's disk should be stored. The disk must support the Snippet storage type as it will be used for other resources."
}

variable "disk_interface" {
  default     = "scsi0"
  type        = string
  description = "Storage disk interface. Default value: `scsi0`."
}

variable "network_interface" {
  default     = "vmbr0"
  type        = string
  description = "Default node's network device bridge. Default value: `vmbr0`."
}

variable "cloud_image_name" {
  type        = string
  description = "Cloud image name. Must end with `.img` extension."
}

variable "cloud_image_storage" {
  type        = string
  description = "Storage pool (disk) name where the cloud image iso, img, qcow... etc is stored."
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to the public SSH key to allow the default user SSH into the VM."
}

variable "timezone" {
  type        = string
  description = "Timezone to be configured via `timedatectl` in cloud-init template."
}
