# Introduction
Image segmentation is the classification of an image into different groups (clusters). The goal of segmentation is to simplify and/or change the representation of an image into something that is more meaningful and easier to analyze. Image segmentation is typically used to locate objects and boundaries in images. Many researches have been done in the area of image segmentation using clustering. There are different methods and one of the most popular methods is “k-means clustering algorithm”.
***
# Methodology

K-means clustering algorithm is an unsupervised algorithm and it is used to segment the interest area from the background. But before applying K-means algorithm, first partial stretching enhancement is applied to the image to improve the quality of the image. Subtractive clustering method is data clustering method where it generates the centroid based on the potential value of the data points. So subtractive cluster is used to generate the initial centers and these centers are used in k-means algorithm for the segmentation of image. Then finally medial filter is applied to the segmented image to remove any unwanted region from the image.
The K-means clustering technique is simple, and we begin with a description of the basic algorithm. We first choose K initial centroids, where K is a user-specified parameter, namely, the number of clusters desired. Each point is then assigned to the closest centroid, and each collection of points assigned to a centroid is a cluster. The centroid of each cluster is then updated based on the points assigned to the cluster. We repeat the assignment and update steps until no point changes clusters, or equivalently, until the centroids remain the same. The operation of K-means is illustrated in Figure (1), which shows how, starting from three centroids, the final clusters are found in four assignment-update steps. In these and other figures displaying K-means clustering, each subfigure shows (1) the centroids at the start of the iteration and (2) the assignment of the points to those centroids. The centroids are indicated by the "+" symbol; all points belonging to the same cluster have the same marker shape.

![alt text][logo]

[logo]: https://drive.google.com/open?id=1sqOTtdU1W7viN_ItB4RZFFkwTSx2XbIb "Figure 1"

***
