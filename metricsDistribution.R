#read the metrics

os_com_met<-read.csv("F:\\Stat202\\OpenStack_Comments_Metrics.csv")
os_ch_met<-read.csv("F:\\Stat202\\OpenStack_Changes_Metrics.csv")
ec_com_met<-read.csv("F:\\Stat202\\Eclipse_Comments_Metrics.csv")
ec_ch_met<-read.csv("F:\\Stat202\\Eclipse_Changes_Metrics.csv")

#histogram of the metrics of Openstack Comments Network

dev.off()
graphics.off()
#par("mar")
par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
hist(os_com_met$closeness)
hist(os_com_met$betweenness)
hist(os_com_met$pagerank)
hist(os_com_met$degree)
hist(os_com_met$eigen_c)
hist(os_com_met$clust_coeff)

#boxplots of the metrics of Openstack Comments Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
boxplot(os_com_met$closeness, main = "Closeness in OpenStack Comments Network",
        xlab = "Closeness value",
        ylab = "Closeness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_com_met$betweenness, main = "Betweenness in OpenStack Comments Network",
        xlab = "Betweenness value",
        ylab = "Betweenness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_com_met$degree, main = "Degree in OpenStack Comments Network",
        xlab = "Degree value",
        ylab = "Degree",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_com_met$pagerank, main = "Pagerank in OpenStack Comments Network",
        xlab = "Pagerank value",
        ylab = "Pagerank",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_com_met$eigen_c, main = "Eigen Centrality in OpenStack Comments Network",
        xlab = "Eigen Centrality value",
        ylab = "Eigen Centrality",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_com_met$clust_coeff, main = "Clustering Coefficient in OpenStack Comments Network",
        xlab = "Clustering Coefficient value",
        ylab = "Clustering Coefficient",
        horizontal = TRUE,
        notch = TRUE)

#histogram of the metrics of Openstack Changes Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
hist(os_ch_met$closeness)
hist(os_ch_met$betweenness)
hist(os_ch_met$pagerank)
hist(os_ch_met$degree)
hist(os_ch_met$eigen_c)
hist(os_ch_met$clust_coeff)

#boxplots of the metrics of Openstack Changes Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
boxplot(os_ch_met$closeness, main = "Closeness in OpenStack Changes Network",
        xlab = "Closeness value",
        ylab = "Closeness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_ch_met$betweenness, main = "Betweenness in OpenStack Changes Network",
        xlab = "Betweenness value",
        ylab = "Betweenness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_ch_met$degree, main = "Degree in OpenStack Changes Network",
        xlab = "Degree value",
        ylab = "Degree",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_ch_met$pagerank, main = "Pagerank in OpenStack Changes Network",
        xlab = "Pagerank value",
        ylab = "Pagerank",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_ch_met$eigen_c, main = "Eigen Centrality in OpenStack Changes Network",
        xlab = "Eigen Centrality value",
        ylab = "Eigen Centrality",
        horizontal = TRUE,
        notch = TRUE)
boxplot(os_ch_met$clust_coeff, main = "Clustering Coefficient in OpenStack Changes Network",
        xlab = "Clustering Coefficient value",
        ylab = "Clustering Coefficient",
        horizontal = TRUE,
        notch = TRUE)


#histograms of the metrics of Eclipse Comments Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
hist(ec_com_met$closeness)
hist(ec_com_met$betweenness)
hist(ec_com_met$pagerank)
hist(ec_com_met$degree)
hist(ec_com_met$eigen_c)
hist(ec_com_met$clust_coeff)

#boxplots of the metrics of Eclipse Comments Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
boxplot(ec_com_met$closeness, main = "Closeness in Eclipse Comments Network",
        xlab = "Closeness value",
        ylab = "Closeness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_com_met$betweenness, main = "Betweenness in Eclipse Comments Network",
        xlab = "Betweenness value",
        ylab = "Betweenness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_com_met$degree, main = "Degree in Eclipse Comments Network",
        xlab = "Degree value",
        ylab = "Degree",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_com_met$pagerank, main = "Pagerank in Eclipse Comments Network",
        xlab = "Pagerank value",
        ylab = "Pagerank",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_com_met$eigen_c, main = "Eigen Centrality in Eclipse Comments Network",
        xlab = "Eigen Centrality value",
        ylab = "Eigen Centrality",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_com_met$clust_coeff, main = "Clustering Coefficient in Eclipse Comments Network",
        xlab = "Clustering Coefficient value",
        ylab = "Clustering Coefficient",
        horizontal = TRUE,
        notch = TRUE)

#histograms of the metrics of Eclipse Changes Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
hist(ec_ch_met$closeness)
hist(ec_ch_met$betweenness)
hist(ec_ch_met$pagerank)
hist(ec_ch_met$degree)
hist(ec_ch_met$eigen_c)
hist(ec_ch_met$clust_coeff)


#boxplots of the metrics of Eclipse Changes Network

par(mfrow=c(3,2))
par(mar=c(4, 4, 2, 2))
boxplot(ec_ch_met$closeness, main = "Closeness in Eclipse Changes Network",
        xlab = "Closeness value",
        ylab = "Closeness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_ch_met$betweenness, main = "Betweenness in Eclipse Changes Network",
        xlab = "Betweenness value",
        ylab = "Betweenness",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_ch_met$degree, main = "Degree in Eclipse Changes Network",
        xlab = "Degree value",
        ylab = "Degree",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_ch_met$pagerank, main = "Pagerank in Eclipse Changes Network",
        xlab = "Pagerank value",
        ylab = "Pagerank",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_ch_met$eigen_c, main = "Eigen Centrality in Eclipse Changes Network",
        xlab = "Eigen Centrality value",
        ylab = "Eigen Centrality",
        horizontal = TRUE,
        notch = TRUE)
boxplot(ec_ch_met$clust_coeff, main = "Clustering Coefficient in Eclipse Changes Network",
        xlab = "Clustering Coefficient value",
        ylab = "Clustering Coefficient",
        horizontal = TRUE,
        notch = TRUE)
