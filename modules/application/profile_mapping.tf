# data "okta_user_profile_mapping_source" "user" {}

# resource "okta_profile_mapping" "example" {
#   source_id          = data.okta_user_profile_mapping_source.user.id
#   target_id          = okta_app_oauth.test_app.id
#   delete_when_absent = false
#   always_apply = true

#    mappings {
#     id         = "name"
#     expression = "user.displayName"
#     push_status = "PUSH"
#   }

#    mappings {
#     id         = "nickname"
#     expression = "user.nickName"
#     push_status = "PUSH"
#   }

#    mappings {
#     id         = "given_name"
#     expression = "user.firstName"
#     push_status = "PUSH"
#   }

#    mappings {
#     id         = "middle_name"
#     expression = "user.middleName"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "email"
#     expression = "user.email"
#     push_status = "PUSH"
#   }

#   # mappings {
#   #   id         = "profile"
#   #   expression = "user.profileURL"
#   # }

#   mappings {
#     id         = "zoneinfo"
#     expression = "user.timezone == null ? 'America/Los_Angeles' : user.timezone"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "locale"
#     expression = "user.countryCode == null ? 'en_US' : user.countryCode"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "phone_number"
#     expression = "user.primaryPhone"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "street_address"
#     expression = "user.streetAddress"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "locality"
#     expression = "user.city"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "region"
#     expression = "user.state"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "postal_code"
#     expression = "user.zipCode"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "country"
#     expression = "user.countryCode"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = "postal_code"
#     expression = "user.zipCode"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = okta_app_user_schema_property.attribute_1.index
#     expression = "user.custom_attribute_1"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = okta_app_user_schema_property.attribute_2.index
#     expression = "user.custom_attribute_2"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = okta_app_user_schema_property.attribute_3.index
#     expression = "user.custom_attribute_3"
#     push_status = "PUSH"
#   }

#   mappings {
#     id         = okta_app_user_schema_property.attribute_4.index
#     expression = "user.custom_attribute_4"
#     push_status = "PUSH"
#   }
# }