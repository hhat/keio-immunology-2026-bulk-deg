# 講師用: Google Colabで学生配布用R_lib.zipを作る

R_LIB_DIR <- "/content/R_lib"
dir.create(R_LIB_DIR, showWarnings = FALSE, recursive = TRUE)
.libPaths(c(R_LIB_DIR, .libPaths()))

cat("R version:", R.version.string, "\n")
cat("R library path:", .libPaths()[1], "\n")

options(repos = c(CRAN = "https://cloud.r-project.org"))

cran_packages <- c("ggplot2", "ggrepel", "pheatmap")
install.packages(cran_packages, lib = R_LIB_DIR, dependencies = c("Depends", "Imports", "LinkingTo"))

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", lib = R_LIB_DIR)
}
library(BiocManager)
BiocManager::install(c("edgeR"), lib = R_LIB_DIR, ask = FALSE, update = FALSE)

.libPaths(c("/content/R_lib", .libPaths()))
packages <- c("edgeR", "ggplot2", "ggrepel", "pheatmap")
ok <- sapply(packages, requireNamespace, quietly = TRUE)
print(ok)
if (!all(ok)) stop("読み込めないパッケージがあります。installログを確認してください。")

old_wd <- getwd()
setwd("/content")
if (file.exists("R_lib.zip")) file.remove("R_lib.zip")
system("zip -qr R_lib.zip R_lib")
setwd(old_wd)

cat("R_lib.zip size:", round(file.size("/content/R_lib.zip") / 1e6, 1), "MB\n")
cat("SHA256:\n")
print(tools::sha256sum("/content/R_lib.zip"))
