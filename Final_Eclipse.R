# Dropbox folder
library("network")
library("igraph")
install.packages("intergraph")
library(intergraph)

#-----------------Comments Network--------------------------------------------------------------------------------

#take the network as an input

my_net<-read.paj("F:\\Stat202\\Comments_common50_50.net")
class(my_net)

network.size(my_net)
network.edgecount(my_net) 
plot(my_net,displaylabels=F,boxed.labels=F)
summary(my_net)

#removing all the isolated nodes

g <- asIgraph(my_net)
class(g)
Isolated = which(degree(g)==0)
g2 = delete.vertices(g, Isolated)

my_net_r <- asNetwork(g2)
summary(my_net_r)
plot(my_net_r,displaylabels=F,boxed.labels=F)
network.edgecount(my_net_r) 

#finding the metrics of the changed network

degree<-degree(g2)
closeness<-closeness(g2)
betweenness<-betweenness(g2)
pagerank<-page.rank(g2)
eigen_c<-eigen_centrality(g2)
clust_coeff<-transitivity(g2, type="localundirected") 

eigen_c<-eigen_c$vector
pagerank<-pagerank$vector

class(clust_coeff)
clust_coeff[is.na(clust_coeff)] <- 0

#adding the metrics to the nodes

my_net_r %v% 'eigen_c' <- eigen_c
my_net_r %v% 'degree' <- degree
my_net_r %v% 'betweenness' <- betweenness
my_net_r %v% 'clustcoeff' <- clust_coeff
my_net_r %v% 'closeness' <- closeness
my_net_r %v% 'pagerank' <- pagerank
my_net_r

#exporting the changed graph

write_graph(g2, "F:\\Stat202\\Eclipse_Comments_Network.net", "pajek")

library(ergm)

#fitting the ERGM

all_on_edge_comments<-ergm(my_net_r~edges+nodecov("degree")+nodecov("betweenness")+nodecov("closeness")+nodecov("pagerank")+nodecov("eigen_c")+nodecov("clustcoeff"))
summary(all_on_edge_comments)

#Finding the goodness of fit

all_on_edge_comments_gof<-gof(all_on_edge_comments~distance)
all_on_edge_comments_gof
plot(all_on_edge_comments_gof)

#-------------Changes Network---------------------------------------------------------------------------------------

#take the network as an input

my_net2<-read.paj("F:\\Stat202\\Changes_common50_50.net")
class(my_net2)

network.size(my_net2)
network.edgecount(my_net2) 
plot(my_net2,displaylabels=F,boxed.labels=F)
summary(my_net2)

#removing all the isolated nodes

gx <- asIgraph(my_net2)
class(gx)
Isolated2 = which(degree(gx)==0)
gx2 = delete.vertices(gx, Isolated2)

my_net2_r <- asNetwork(gx2)
summary(my_net2_r)
plot(my_net2_r,displaylabels=F,boxed.labels=F)
network.edgecount(my_net2_r) 

#finding the metrics of the changed network

degree2<-degree(gx2)
closeness2<-closeness(gx2)
betweenness2<-betweenness(gx2)
pagerank2<-page.rank(gx2)
eigen_c2<-eigen_centrality(gx2)
clust_coeff2<-transitivity(gx2, type="localundirected") 

eigen_c2<-eigen_c2$vector
pagerank2<-pagerank2$vector

clust_coeff2[is.na(clust_coeff2)] <- 0

#adding the metrics to the nodes

my_net2_r %v% 'eigen_c2' <- eigen_c2
my_net2_r %v% 'degree2' <- degree2
my_net2_r %v% 'betweenness2' <- betweenness2
my_net2_r %v% 'clustcoeff2' <- clust_coeff2
my_net2_r %v% 'closeness2' <- closeness2
my_net2_r %v% 'pagerank2' <- pagerank2
my_net2_r

#exporting the changed graph

write_graph(gx2, "F:\\Stat202\\Eclipse_Changes_Network.net", "pajek")

#fitting the ERGM

all_on_edge_changes2<-ergm(my_net2_r~edges+nodecov("eigen_c2")+nodecov("degree2")+nodecov("betweenness2")+nodecov("closeness2")+nodecov("pagerank2")+nodecov("clustcoeff2"))
summary(all_on_edge_changes2)

#Finding the goodness of fit

all_on_edge_changes_gof2<-gof(all_on_edge_changes2~distance)
all_on_edge_changes_gof2
plot(all_on_edge_changes_gof2)

#---------------Export the metrics-----------------------------------------

vert_name_com<-V(g2)
vert_name_com<-as_ids(vert_name_com)
class(vert_name_com)
ecli_com_mets <- data.frame(vert_name_com, degree, betweenness, closeness, clust_coeff, pagerank, eigen_c)
write.csv(ecli_com_mets, "F:\\Stat202\\Eclipse_Comments_Metrics.csv")
write.csv(ecli_com_mets,"C:\\Users\\Ishita Bardhan\\Dropbox\\HIT-2020-4th-year\\02-research-journals\\ishita\\01-code\\Eclipse_Comments_Metrics.csv")


vert_name_chn<-V(gx2)
vert_name_chn<-as_ids(vert_name_chn)
class(vert_name_chn)
ecli_chn_mets <- data.frame(vert_name_chn, degree2, betweenness2, closeness2, clust_coeff2, pagerank2, eigen_c2)
write.csv(ecli_chn_mets, "F:\\Stat202\\Eclipse_Changes_Metrics.csv")
write.csv(ecli_chn_mets,"C:\\Users\\Ishita Bardhan\\Dropbox\\HIT-2020-4th-year\\02-research-journals\\ishita\\01-code\\Eclipse_Changes_Metrics.csv")
