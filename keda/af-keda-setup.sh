# Step 1 : Create .NET AF functions 

# In-proc
func init --worker-runtime dotnet --docker

# Or isolated language worker 
func init --worker-runtime dotnet-isolated --docker 


# Build the queue trigger - functions locally
func new --name QueueFunction --template "Queue trigger" 

# Build a HTTP trigger function locally using the following 
func new --name HttpExample --template "HTTP trigger" --authlevel anonymous

#local test
func start  

# Step 2 : Build Docker image and push it to Docker registry 

docker build --tag <DOCKER_ID>/azurefunctionsimage:v1.0.0 .

docker login

docker push <docker_id>/azurefunctionsimage:v1.0.0


# Step 3 - KEDA

func kubernetes deploy --name af-keda-deploy --registry <container-registry-username>



#Setup function core tools 


# Install KEDA
func kubernetes install --keda-version v2 --namespace keda

# Remove KEDA
func kubernetes remove --namespace keda