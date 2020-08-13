# Hands-on Machine Learning Workshop for R-Ladies Philly

These materials are adapted from Childhood Cancer Data Lab (CCDL), Alex's Lemonade Stand Foundation [training materials](https://github.com/AlexsLemonade/training-modules/tree/ddc9c76e03aaf147fb2f011490ea6aec835de064) that were developed by the CCDL Science Team (Chante Bethell, Candace Savonen, Josh Shapiro, and Jaclyn Taroni).

If you are a pediatric cancer researcher, you can sign up to be notified when new workshops get scheduled here: https://www.ccdatalab.org/training

### Workshop goals

We hope workshop participants come away with the following:

* An understanding why it's useful to study transcriptomic data from tumors and how we can use unsupervised machine learning to reach our analysis goals
* An intuition for some of the challenges for identifying groups of tumors that have similar molecular processes occuring at the time of collection
* The beginnings of an intuition for different dimensionality reduction approaches uses for visualization
* An idea of why we may want to use domain-specific approaches to learn low-dimensional representations of our data

In general, this is meant to be a crash course or jumping off point that is sparse on the details underlying more complex methodologies.
We link out to the original CCDL training materials that tend to have more context and provide links to various available tutorials and resources to support further learning.

### Workshop materials

We'll cover two notebooks during the workshop:

* [Consensus clustering](https://jaclyn-taroni.github.io/2020-rladies-phl-ml/01-consensus-clustering.nb.html)
* [Dimension reduction including PCA, UMAP, and PLIER](https://jaclyn-taroni.github.io/2020-rladies-phl-ml/02-dimension-reduction.nb.html)

To learn more about how we prepared data and results ahead of time, see [`setup/README.md`](setup/README.md).

### Docker image for post-workshop use

We will use RStudio Cloud for this workshop, but remove the shared workspace after the conclusion of the workshop.
Folks will continue to have access to the materials here on GitHub, but we also provide a Docker image with all required dependencies.

See [`docker/README.md`](docker/README.md) for more information.

