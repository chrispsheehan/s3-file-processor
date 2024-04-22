locals {
    base_name = "chrispsheehan_s3_file_processer"
    base_s3_reference = replace(local.base_name, "_", "-")
    input_bucket = local.base_s3_reference
    lambda_name = "${local.base_name}_lambda"
    input_file_prefix = "input/"
}