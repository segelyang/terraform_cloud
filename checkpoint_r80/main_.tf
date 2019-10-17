module "r80" {
  source  = "./modules/r80"
  version = "0.2.0"
  name = "cp_r80"
  port = {
    network_id = "d11225c3-6cad-440e-9a00-63f8f72256a2"
  }
  // image to create instance
  image = "R80_qcow2"
  // define flavor to be used on instance create
  flavor = "ebe1e61b-e5c8-44f8-b746-6f398dd07841"
}