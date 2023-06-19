
**Task 1** 

Find Certificates 

-  CA
-  Api server cert
-  Etcd server cert
-  API -> Etcd
-  Api -> Kubelet
-  Scheduler -> Api
-  Controller-manager -> Api
-  Kubelet -> Api
-  Kubelet server cert

**Task 2**

Explore crictl, containerd, and docker (control node)

-  Find out all running containers using crictl
-  Find out which container runtime does crictl communicate with
-  Find out the installed package for the container runtime
-  Install the docker container management tool. Do not install the docker container runtime
-  Find out all running containers using docker

**Task 3**

Create two containers and check they cannot see each other and thn run them in the same namespace

-  Run a container named c1 using ubuntu image that sleeps for 1 day. Run the container in the background
-  Run another container named c2 using ubuntu image that sleeps for 999 days. Run the container in the background
-  Check the running processes within both containers
-  On the control node, grep for sleep processes
-  Remove the c2 container
-  Recreate the c2 container but in the same pid as container c1

**Task 4**

Create a Network Policy as follows

-  Policy name is example in namespace default
-  Pods in the default namespace with labels id=frontend should be able to reach pods in the namespace with label id=ns1 only on TCP port 80 
-  Pods in the default namespace should also be able to reach pods with label id=backend within the default namespace itself
-  Make sure that no other traffic is allowed
-  After testing everything works as expected, delete the example network policy

**Task 5**

Create a Default Deny Network Policy as follows

-  Policy name is default-deny
-  All pods within the namespace default should not be able to communicate with one another

**Task 6**

Create two Network Policies that allows frontend pods to talk to backend pods

-  Create two pods as follows
   - With nginx image with names frontend & backend respectively
   - Their labels should be run=frontend and run=backend respectively
   - Expose them on port 80 with service names frontend and backend respectively
-  First Policy
   - Policy name is frontend in namespace default
   - Pods in the default namespace with label run=frontend should be able to reach the pods with label run=backend in the same namespace using the service backend
-  Second Policy
   - Policy name is backend in namespace default
   - Pods in the default namespace with label run=backend should be reachable by the pods with label run=frontend in the same namespace using the service backend
-  Make it work but do not modify the default-deny network policy

**Task 7**

Update Default Deny Network Policy as follows

-  Make sure DNS Resolution works through the default-deny policy

**Task 8**

Update Backend Network Policy to allow backend pods to talk to database pods

-  Create database pods as follows
   - Create a new namespace cassandra
   - Label the namespace with ns=cassandra
   - Create the pod cassandra within cassandra namespace with image nginx
-  Update backend network policy as follows
   - Pods in the default namespace with label run=backend should be able to reach the pods in the cassandra namespace with label ns=cassandra

**Task 9**

Create a Default Deny Network Policy within namespace cassandra while allowing Backend pods to talk to database pods

-  Create a default deny network policy in namespace cassandra as follows
   - Policy name is cassandra-deny
   - Make such that no other traffic is allowed within cassandra namespace except for DNS resolution and what we just configured in Task8
-  Create an ingress network policy in namespace cassandra as follows
   - Policy name is cassandra
   - All pods from the default namespace should be able to reach pods with the label run=cassandra in the cassandra namespace

**Task 10**

-  After testing everything works as expected, delete the default-deny, frontend, and backend policies



