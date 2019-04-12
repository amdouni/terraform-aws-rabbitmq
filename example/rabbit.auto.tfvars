## ssh key register on aws and use to connect ec2 instances
ssh_key_name = "Insert your ssh key name here"

## Disk
root_volume_size = 50 # /
rabbit_volume_size = 50 # /var/lib/rabbitmq
instance_ebs_optimized = false

## AMI
# Note : AMI are region related make sure the ami you choose is available in your region
# https://cloud-images.ubuntu.com/locator/ec2/
image_id = "insert ubuntu ami related to your region"

# Manager
# If you don't have a private VPN connection configure set this to true so you can access your cluster
associate_public_ip_address = false
instance_type = "t3.medium"
desired_capacity = 3

# To bind the manager together Rabbitmq use the Erlang cookie so he know they can join the cluster
erl_secret_cookie = "a random secret key"

# As we use the rabbit_peer_discovery_aws we need credentials than can inspect ec2 or asg groups
# https://www.rabbitmq.com/cluster-formation.html#peer-discovery-aw
aws_access_key    = ""
aws_secret_key    = ""
