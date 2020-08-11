## Data preparation for the workshop

You can see how we downloaded the data from the [Open Pediatric Brain Tumor Atlas project](https://github.com/AlexsLemonade/OpenPBTA-analysis#openpbta-analysis) and transformed it here: https://github.com/AlexsLemonade/training-modules/tree/ddc9c76e03aaf147fb2f011490ea6aec835de064/machine-learning/setup

Specifically, we use the gzipped output files of [this notebook](https://htmlpreview.github.io/?https://github.com/AlexsLemonade/training-modules/blob/ddc9c76e03aaf147fb2f011490ea6aec835de064/machine-learning/setup/01-transform-rnaseq.nb.html) in the `01-filter-and-collapse` notebook.
Note that these files are not tracked in this repository, due in part to file size.

The output of `01-filter-and-collapse` is tracked in this repository (paths relative to the root directory of the repo):

```
data/pbta-medullo-histologies.tsv.gz
data/pbta-medullo-vst-collapsed.tsv.gz
```

These are the files that are used during the workshop!
