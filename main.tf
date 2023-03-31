provider "aws" {
  version = "~>2.7"
  region  = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  version = "~>2.7"
  region  = "us-east-2"
}