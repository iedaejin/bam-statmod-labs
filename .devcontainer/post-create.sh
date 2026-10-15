#!/usr/bin/env bash
# Install the R packages the labs use (Codespaces).
set -euo pipefail
Rscript --vanilla -e '
options(repos = "https://cloud.r-project.org")
pkgs <- c("rmarkdown", "knitr", "learnr", "tidyverse", "MASS", "faraway", "car",
          "glmnet", "nlme", "lme4", "mgcv", "gamm4", "survival")
lib <- .libPaths()[[1]]
if (file.access(lib, 2) != 0) {
  lib <- path.expand("~/R/library"); dir.create(lib, recursive = TRUE, showWarnings = FALSE)
  cat("R_LIBS_USER=", lib, "\n", sep = "", file = path.expand("~/.Renviron"), append = TRUE)
}
miss <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
if (length(miss)) install.packages(miss, lib = lib)
cat("Ready:", paste(pkgs, collapse = ", "), "\n")
'
quarto check || true
