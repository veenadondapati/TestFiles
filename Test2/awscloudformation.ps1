#Here I written code into powershell script to deploy AWS CloudFormation to get the the output as JSON formate 

New-CFNStack -Region eu-west-2 -StackName vnatest -TemplateBody ($CFNTemplate | ConvertTo-Json -Depth 5)

$CFNTemplate = @{
    Resouraces = @{
	    MyS3Bucket = @{
	        Type = 'AWS::S3::Bucket'
	        Properties = @{
		        AccessControl = 'Private'
            }
	    }
	}
}

$CFNTemplate | ConvertTo-Json -Depth 5