# Cloud Native Serverless Samples

This repository contains showcase examples of cloud native serverless implemented elaboratively by open source technologies in the community. 


## About Virtual Kubelet

The kubelet is the captain of the worker node, a primary "node agent" that runs on each node. It registers the node with the apiserver, the kubelet takes a set of PodSpecs to provision the pod and ensures that the containers described in those PodSpecs are running and healthy. 

Virtual Kubelet is an implementation of the Kubernetes kubelet that masquerades as a kubelet for the purpose of connecting a Kubernetes cluster to other APIs. 

## Current Virtual Kubelet providers 
 
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


## About KEDA 

On August 2021, The CNCF Technical Oversight Committee (TOC) has voted to accept KEDA as a CNCF incubating project.

Kubernetes Event-Driven Autoscaling (KEDA) is a event-driven autoscaler for Kubernetes that can be easily added to Kubernetes clusters to scale applications.  With KEDA, you can drive the scaling of any container in Kubernetes based on the demanding events.

 KEDA works alongside standard Kubernetes components like the Horizontal Pod Autoscaler. With KEDA you can explicitly map the apps you want to use event-driven scale, with other apps continuing to function. This makes KEDA a flexible and safe option to run alongside any number of any other Kubernetes applications or frameworks.


## Serverless functions

- Azure functions usually works in Microsoft Azure and deploying on [custom location](https://docs.microsoft.com/en-us/azure/app-service/overview-arc-integration) on [Azure-Arc enabled Kubernetes](https://docs.microsoft.com/en-us/azure/azure-arc/kubernetes/overview) is currently [in preview](https://docs.microsoft.com/en-us/azure/app-service/manage-create-arc-environment?tabs=bash), check out a demo [here](https://github.com/cloudmelon/aks-severless/tree/master/AKSKEDADemo)

- Fission   check out a demo [here]()

- KNative   check out a demo [here]()

- OpenFaaS

Other serverless frameworks that run Kubernetes such as kubeless ( no longer actively maintained by VMware ) and [Apache OpenWhisk](https://openwhisk.apache.org/). 


## My other related contributions on the topic 

Another repo recaps Serverless demo around AKS and Microsoft Azure. AKS cluster combine Virtual Kubelet ( ACI ) and KEDA : https://github.com/cloudmelon/aks-severless

To deploy an entreprise compliant AKS cluster which can be attached to Azure ML, check it out : https://azure.microsoft.com/en-us/resources/templates/aks-azml-targetcompute/

For stateless workloads, to deploying Master-Slave architecture Linux-hosted clustering solution on Azure, check it out here: https://azure.microsoft.com/en-us/resources/templates/vmss-master-slave-customscript/

## More details on my blog : 

Please go to my blog cloud-melon.com to get more details about how to implement this solution and more about Microsoft Azure ( ref link : https://cloud-melon.com )

Feel free to reach out to my twitter **@MelonyQ** for more details ( https://twitter.com/MelonyQ ). 

Go subscribe  [CloudMelonVision channel on YouTube](https://www.youtube.com/channel/UC_0k4ajcxGesNoN9iBBvlig)  where I share the demos of my code samples if you're interested in learning more. 