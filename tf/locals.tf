locals {
    base_name = "chrispsheehan_s3_file_processer"
    input_bucket = "${local.base_name}_input"
    lambda_name = "${local.base_name}_lambda"
}