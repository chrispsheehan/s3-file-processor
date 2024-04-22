locals {
    base_name = "chrispsheehan_s3_file_processer"
    base_s3_reference = replace(local.base_name, "_", "-")
    input_bucket = "${local.base_s3_reference}-input"
    lambda_name = "${local.base_name}_lambda"
}