#correlation between the metrics of the network nodes.

#reading all the metrics

openstack_comments_metrics<-read.csv("F:\\Stat202\\OpenStack_Comments_Metrics.csv")
openstack_changes_metrics<-read.csv("F:\\Stat202\\OpenStack_Changes_Metrics.csv")
eclipse_comments_metrics<-read.csv("F:\\Stat202\\Eclipse_Comments_Metrics.csv")
eclipse_changes_metrics<-read.csv("F:\\Stat202\\Eclipse_Changes_Metrics.csv")

#removing the column of vertices' names 

openstack_comments_metrics = subset(openstack_comments_metrics, select = -c(X) )
openstack_comments_metrics = subset(openstack_comments_metrics, select = -c(vert_name_com) )

openstack_changes_metrics = subset(openstack_changes_metrics, select = -c(X) )
openstack_changes_metrics = subset(openstack_changes_metrics, select = -c(vert_name_chn) )

eclipse_comments_metrics = subset(eclipse_comments_metrics, select = -c(X) )
eclipse_comments_metrics = subset(eclipse_comments_metrics, select = -c(vert_name_com) )


eclipse_changes_metrics = subset(eclipse_changes_metrics, select = -c(X) )
eclipse_changes_metrics = subset(eclipse_changes_metrics, select = -c(vert_name_chn) )


install.packages("corrplot")
library(corrplot)

install.packages("Hmisc")
library("Hmisc")

#correlation coefficients

os_comm_cor2 <- rcorr(as.matrix(openstack_comments_metrics))
os_comm_cor2
os_comm_cor2$P

os_ch_cor2 <- rcorr(as.matrix(openstack_changes_metrics))
os_ch_cor2
os_ch_cor2$P

ec_comm_cor2 <- rcorr(as.matrix(eclipse_comments_metrics))
ec_comm_cor2
ec_comm_cor2$P

ec_ch_cor2 <- rcorr(as.matrix(eclipse_changes_metrics))
ec_ch_cor2
ec_ch_cor2$P

#correlation plots

corrplot(os_comm_cor2$r, type = "upper", order = "hclust", tl.col = "black", 
         p.mat = os_comm_cor2$P, sig.level = 0.05)

corrplot(os_ch_cor2$r, type = "upper", order = "hclust", tl.col = "black",
         p.mat = os_ch_cor2$P, sig.level = 0.05)

corrplot(ec_comm_cor2$r, type = "upper", order = "hclust", tl.col = "black",
         p.mat = ec_comm_cor2$P, sig.level = 0.05)

corrplot(ec_ch_cor2$r, type = "upper", order = "hclust", tl.col = "black",
         p.mat = ec_ch_cor2$P, sig.level = 0.05)

