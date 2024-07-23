```
sctp-ce6-mod2.16-terraform on 🌱 main via 💠 default
λ tofu plan -out tf.tfplan

OpenTofu used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

OpenTofu will perform the following actions:

  # aws_s3_bucket.this will be created
  + resource "aws_s3_bucket" "this" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "tsanghan-ce6"
        }
      + tags_all                    = {
          + "Name" = "tsanghan-ce6"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  # random_id.server will be created
  + resource "random_id" "server" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 4
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: tf.tfplan

To perform exactly these actions, run the following command to apply:
    tofu apply "tf.tfplan"

λ tofu apply "tf.tfplan"
random_id.server: Creating...
random_id.server: Creation complete after 0s [id=sz9XDQ]
aws_s3_bucket.this: Creating...
aws_s3_bucket.this: Creation complete after 3s [id=tsanghan-ce6-b33f570d]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```