# Statistical Modelling — Labs

Computer labs for **Statistical Modelling**, Bachelor in Applied Mathematics (BAM), IE University, Spring 2027. Prof. Dae-Jin Lee (daelee@faculty.ie.edu).

## How a lab works

Each `Lab_*` folder is one lab. Work in pairs during the lab session, then complete the tutorial on your own.

| File | Use |
|---|---|
| `Lab_NN_….Rproj` | Double-click it (or *File → Open Project*) first: RStudio then works inside the lab folder, so `data/...` paths work. |
| `lab.qmd` | The guided analysis. Open it, run the chunks, answer the *Your turn* tasks, and render it to HTML. |
| `tutorial.Rmd` | The graded part. Click **Run Document**, answer the questions, type your name and download the `.txt`. Upload that `.txt` to Blackboard before the next session. |
| `lab_submission.R` | Leave it in the folder. The tutorial loads it. Do not run it yourself. |
| `data/` | The dataset for the lab, with `SOURCE.txt`. |

Install the packages once (from the repository folder):

```r
source("install_course_packages.R")
```

Then, inside a lab project:

```r
rmarkdown::run("tutorial.Rmd")
```

Rendering `lab.qmd` needs Quarto, which ships with recent RStudio; on Posit Cloud it is preinstalled.

Always work from inside the lab folder (open its `.Rproj`): data paths are relative (`data/...`). Never use `setwd()`.

## Where to run R

- **Your own computer**: R ≥ 4.3 and RStudio (or Positron / VS Code with the Quarto extension).
- **Posit Cloud**: upload one lab folder to a new RStudio project.
- **GitHub Codespaces**: *Code → Codespaces → Create*. The `.devcontainer` installs R, Quarto and the packages above.

## Labs

| Folder | Sessions | Topic | Data |
|---|---|---|---|
| `Lab_00_Reproducible_R` | 1–2 | A reproducible analysis: import, plot, two simple models, simulation | `nhtemp` |
| `Lab_01_Maximum_Likelihood` | 3–4 | Log-likelihoods, `optim()`, standard errors, Wald and LR intervals, LR test, convergence | `discoveries`, `geyser` |
| `Lab_02_Linear_Models` | 5–8 | `lm()`, inference, residual and influence diagnostics, VIF, AIC/BIC, lasso | `savings`, `prostate` |
| `Lab_03_GLMs` | 9–12 | Logistic and Poisson regression, offsets, deviance, overdispersion | `birthwt`, `ships` |
| `Lab_04_Mixed_Models` | 15–19 | `lme()`, `lmer()`, `glmer()`, REML and ML, BLUPs, diagnostics | `sleepstudy`, `cbpp` |
| `Lab_05_Smoothing_Splines` | 20–22 | Polynomials, kernels, LOESS, regression and smoothing splines, P-splines | `mcycle` |
| `Lab_06_GAMs` | 23–26 | `mgcv::gam()`, `gam.check()`, concurvity, tensor products | `airquality` |
| `Lab_07_GAMMs` | 27 | Smooths as mixed models, `gamm()`, random effects in GAMs | `Oxboys`, `mcycle` |
| `Lab_08_Survival` | 28 | Kaplan–Meier, log-rank, Cox regression, proportional hazards | `veteran` |

Sessions 13–14 and 31–32 are reviews and exams; sessions 29–30 are the group project.

## Data and licence

The datasets are copied from R packages (`datasets`, `MASS`, `faraway`, `lme4`, `nlme`, `survival`). Copyright in the data remains with the original authors; each `data/SOURCE.txt` gives the package, the original reference and the licence. `shared_data/` and `R/` are copies for the repository; a lab folder does not need them. The lab text is course material. See `LICENSE`.

## Use of generative AI

You may use GenAI tools for ideation, proofreading and coding help with an acknowledgement, as the syllabus explains. Submissions (tutorial answers, assignments, group work and exams) must be your own work.
