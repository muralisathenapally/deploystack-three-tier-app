module "three-tier-app" {
    source = "../terraform"
    for_each = var.project_config
    project_id = each.value.project_id
    project_number = each.value.project_number
    region = each.value.region
    zone = each.value.zone
    basename = each.value.basename

}