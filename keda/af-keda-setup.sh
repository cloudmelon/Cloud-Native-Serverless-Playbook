# Step 1 : Create .NET AF functions with targetting trigger and bindings

# In-proc
func init --worker-runtime dotnet --docker

# Or isolated language worker 
func init --worker-runtime dotnet-isolated --docker 


# Build the queue trigger - functions locally 
func new --name QueueFunction --template "Queue trigger" 

# Build a HTTP trigger function locally using the following 
func new --name HttpExample --template "HTTP trigger" --authlevel anonymous

# Build kafka trigger and SQL output binding


#local test
func start  

# Step 2 : Build Docker image and push it to Docker registry 

docker build --tag <DOCKER_ID>/azurefunctionsimage:v1.0.0 .

docker login

docker push <docker_id>/azurefunctionsimage:v1.0.0


# Step 3 - Set up kubernetest with KEDA

# Install KEDA
kubectl create ns keda

func kubernetes install --keda-version v2 --namespace keda

# Deploy function
func kubernetes deploy --name af-keda-deploy --registry <container-registry-username>


# Remove KEDA (optional)
func kubernetes remove --namespace keda