build:
    #!/usr/bin/env bash
    rm -f lambda_package.zip
    cd lambda
    zip -r ../lambda_package.zip .

tf-apply:
    #!/usr/bin/env bash
    cd tf
    terraform init
    terraform apply -auto-approve \
        -var lambda_zip_path={{justfile_directory()}}/lambda_package.zip \

deploy:
  just build
  just tf-apply


tf-destroy:
    #!/usr/bin/env bash
    cd tf
    terraform init
    terraform destroy -auto-approve \
        -var lambda_zip_path={{justfile_directory()}}/lambda_package.zip \

destroy:
  just tf-destroy