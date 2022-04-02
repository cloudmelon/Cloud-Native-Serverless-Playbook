# cloud-native-serverless

This repository contains showcase examples of cloud native serverless implemented elaboratively by open source technologies in the community. 


## About Virtual Kubelet

The kubelet is the captain of the worker node, a primary "node agent" that runs on each node. It registers the node with the apiserver, the kubelet takes a set of PodSpecs to provision the pod and ensures that the containers described in those PodSpecs are running and healthy. 

Virtual Kubelet is an implementation of the Kubernetes kubelet that masquerades as a kubelet for the purpose of connecting a Kubernetes cluster to other APIs. 

## Current providers 
 
- Azure Batch		
- Azure Container Instances (ACI)
- AWS Fargate	

- Elotl Kip	(providing AWS, GCP, Azure support, though public doc only available for AWS and GCP )
- Kubernetes Container Runtime Interface (CRI)	

Other providers : 
- HashiCorp Nomad
- Huawei Cloud Container Instance (CCI)	
- Admiralty Multi-Cluster Scheduler	
- Alibaba Cloud Elastic Container Instance (ECI)
- Liqo	
- OpenStack Zun	
- Tencent Games Tensile Kube

A complete list of virtual Kubelet provider list [here](https://virtual-kubelet.io/docs/providers/#current-providers)


## My other related contributions on the topic 

To deploy an entreprise compliant AKS cluster which can be attached to Azure ML, check it out [here](https://azure.microsoft.com/en-us/resources/templates/aks-azml-targetcompute/).

For stateless workloads, to deploying Master-Slave architecture Linux-hosted clustering solution on Azure, check it out [here](https://azure.microsoft.com/en-us/resources/templates/vmss-master-slave-customscript/
). 

## More details on my blog : 

Please go to my blog cloud-melon.com to get more details about how to implement this solution and more about Microsoft Azure ( ref link : https://cloud-melon.com )

Feel free to reach out to my twitter **@MelonyQ** for more details ( https://twitter.com/MelonyQ ). 

Go subscribe  [CloudMelonVision channel on YouTube](https://www.youtube.com/channel/UC_0k4ajcxGesNoN9iBBvlig)  where I share the demos of my code samples if you're interested in learning more. 