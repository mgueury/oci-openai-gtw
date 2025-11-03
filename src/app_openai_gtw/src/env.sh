# Get Compartment and region
curl -s -H "Authorization: Bearer Oracle" -L http://169.254.169.254/opc/v2/instance/ > /tmp/instance.json
export TF_VAR_compartment_ocid=`cat /tmp/instance.json | jq -r .compartmentId`
export TF_VAR_region=`cat /tmp/instance.json | jq -r .region`

# Used by setting.py
export OCI_COMPARTMENT=$TF_VAR_compartment_ocid
export OCI_REGION=$TF_VAR_region
export DEFAULT_API_KEYS="##TF_VAR_default_api_keys##"

# To replace in models.yaml
export TF_VAR_dac_endpoint_ocid="##TF_VAR_dac_endpoint_ocid##"
export TF_VAR_use_models_yaml="##TF_VAR_use_models_yaml##"
