
# Global variables.
available.discrete.tests = c("mi", "mi-sh", "x2", "mc-mi", "smc-mi", "mc-x2", 
  "smc-x2", "sp-mi", "sp-x2")
available.ordinal.tests = c("jt", "mc-jt", "smc-jt")
available.continuous.tests = c("cor", "zf", "mi-g", "mi-g-sh", "mc-mi-g",
  "smc-mi-g", "mc-cor", "smc-cor", "mc-zf", "smc-zf")
available.tests = c(available.discrete.tests, available.ordinal.tests, 
  available.continuous.tests)

semiparametric.tests = c("sp-mi", "sp-x2")
resampling.tests = c("mc-mi", "smc-mi", "mc-x2", "smc-x2", "mc-mi-g", "smc-mi-g",
  "mc-cor", "smc-cor", "mc-zf", "smc-zf", "mc-jt", "smc-jt", semiparametric.tests)
asymptotic.tests = c("mi", "mi-g", "x2", "zf", "jt")

available.discrete.scores = c("loglik", "aic", "bic", "bde", "bdes", "k2", "mbde")
available.continuous.scores = c("bge", "loglik-g", "aic-g", "bic-g")
available.scores = c(available.discrete.scores, available.continuous.scores)

score.equivalent.scores = c("loglik", "aic", "bic", "bde", "bge", "loglik-g",
  "aic-g", "bic-g")

available.discrete.mi = c("mi")
available.continuous.mi = c("mi-g")
available.mi = c(available.discrete.mi, available.continuous.mi)

local.search.algorithms = c("mmpc", "si.hiton.pc", "hpc")
markov.blanket.algorithms = c("gs", "iamb", "fast.iamb", "inter.iamb", "fdr.iamb", "k.iamb")
constraint.based.algorithms = c(markov.blanket.algorithms, local.search.algorithms)
score.based.algorithms = c("hc", "tabu")
hybrid.algorithms = c("rsmax2", "mmhc", "h2pc")
mim.based.algorithms = c("chow.liu", "aracne")
classifiers = c("naive", "tan")
available.learning.algorithms = c(constraint.based.algorithms, score.based.algorithms,
  hybrid.algorithms, mim.based.algorithms, classifiers)

always.dag.result = c(score.based.algorithms, hybrid.algorithms)

available.mvber.vartests = c("tvar", "gvar", "nvar", "nvark")

method.labels = c(
  'gs' = "Grow-Shrink",
  'iamb' = "IAMB",
  'fast.iamb' = "Fast-IAMB",
  'inter.iamb' = "Inter-IAMB",
  "fdr.iamb" = "FDR-IAMB",
  'k.iamb' = "K-IAMB",
  'rnd' = "random/generated",
  'hc' = "Hill-Climbing",
  'tabu' = "Tabu Search",
  'mmpc' = "Max-Min Parent Children",
  'hpc' = "Hybrid Parents and Children",
  'si.hiton.pc' = "Semi-Interleaved HITON-PC",
  'rsmax2' = "Two-Phase Restricted Maximization",
  'mmhc' = "Max-Min Hill-Climbing",
  'h2pc' = "Hybrid Hybrid Parents and Children",
  'aracne' = "ARACNE",
  'chow.liu' = "Chow-Liu",
  "naive" = "Naive Bayes Classifier",
  "tan"   = "TAN Bayes Classifier"
)

method.extra.args = list(
  'hc' = c("max.iter", "restart", "perturb"),
  'tabu' = c("max.iter", "tabu", "max.tabu"),
  'hpc' = c("pc.method", "nbr.join"),
  'k.iamb' = c("k")
)

test.labels = c(
  'mi' = "Mutual Information (disc.)",
  'mi-sh' = "Mutual Information (disc., shrink.)",
  'mc-mi' = "Mutual Information (disc., MC)",
  'smc-mi' = "Mutual Information (disc., Seq. MC)",
  'sp-mi' = "Mutual Information (disc., semipar.)",
  'mi-g' = "Mutual Information (Gauss.)",
  'mi-g-sh' = "Mutual Information (Gauss., shrink.)",
  'mc-mi-g' = "Mutual Information (Gauss., MC)",
  'smc-mi-g' = "Mutual Information (Gauss., Seq. MC)",
  'x2'= "Pearson's X^2",
  'mc-x2'= "Pearson's X^2 (MC)",
  'smc-x2'= "Pearson's X^2 (Seq. MC)",
  'sp-x2'= "Pearson's X^2 (semipar.)",
  'jt' = "Jonckheere-Terpstra",
  'mc-jt' = "Jonckheere-Terpstra (MC)",
  'smc-jt' = "Jonckheere-Terpstra (Seq. MC)",
  'cor' = "Pearson's Correlation",
  'mc-cor' = "Pearson's Correlation (MC)",
  'smc-cor' = "Pearson's Correlation (Seq. MC)",
  'zf' = "Fisher's Z",
  'mc-zf' = "Fisher's Z (MC)",
  'smc-zf' = "Fisher's Z (Seq. MC)"
)

test.extra.args = list(
  'mi' = c("df.adjust"),
  'x2' = c("df.adjust")
)

score.labels = c(
  'k2' = "Cooper & Herskovits' K2",
  'bde' = "Bayesian Dirichlet (BDeu)",
  'bdes' = "Sparse Bayesian Dirichlet (BDes)",
  'mbde' = "Bayesian Dirichlet (interventional data)",
  'aic' = "AIC (disc.)",
  'bic' = "BIC (disc.)",
  'loglik' = "Log-Likelihood (disc.)",
  'bge' = "Bayesian Gaussian (BGe)",
  'loglik-g' = "Log-Likelihood (Gauss.)",
  'aic-g' = "AIC (Gauss.)",
  'bic-g' = "BIC (Gauss.)"
)

score.extra.args = list(
  "k2" = character(0),
  "bde" = "iss",
  "bdes" = "iss",
  "mbde" = c("iss", "exp"),
  "aic" = "k",
  "bic" = "k",
  "bge" = c("iss", "phi"),
  "loglik" = character(0),
  "loglik-g" = character(0),
  "aic" = "k",
  "bic" = "k",
  "aic-g" = "k",
  "bic-g" = "k"
)

mi.estimator.labels = c(
  'mi' = "Maximum Likelihood (disc.)",
  'mi-g' = "Maximum Likelihood (Gauss.)"
)

mi.estimator.tests = c(
  'mi' = "mi",
  'mi-g' = "mi-g"
)

graph.generation.algorithms = c("ordered", "ic-dag", "melancon", "empty", "averaged")

graph.generation.labels = c(
  "ordered" = "Full Ordering",
  "ic-dag" = "Ide & Cozman's Multiconnected DAGs",
  "melancon" = "Melancon's Uniform Probability DAGs",
  "empty" = "Empty",
  "averaged" = "Model Averaging"
)

graph.generation.extra.args = list(
  "ordered" = "prob",
  "ic-dag" = c("burn.in", "max.degree", "max.in.degree", "max.out.degree", "every"),
  "melancon" = c("burn.in", "max.degree", "max.in.degree", "max.out.degree", "every"),
  "averaged" = "threshold"
)

cpq.algorithms = c("ls", "lw", "exact")

cpq.labels = c(
  "ls" = "Logic/Forward Sampling",
  "lw" = "Likelihood Weighting",
  "exact" = "Exact Inference"
)

cpq.extra.args = list(
  "ls" = c("n", "batch", "query.nodes"),
  "lw" = c("n", "batch", "query.nodes")
)

discrete.loss.functions = c("logl", "pred")
continuous.loss.functions = c("logl-g", "cor", "mse")
loss.functions = c(discrete.loss.functions, continuous.loss.functions)

loss.labels = c(
  "logl" = "Log-Likelihood Loss (disc.)",
  "pred" = "Classification Error",
  "logl-g" = "Log-Likelihood Loss (Gauss.)",
  "cor" = "Predictive Correlation",
  "mse" = "Mean Squared Error"
)

loss.extra.args = list(
  "logl" = character(0),
  "pred" = "target",
  "logl-g" = character(0),
  "cor" = "target",
  "mse" = "target"
)

available.fitting.methods = c("mle", "bayes")

fitting.labels = c(
  "mle" = "Maximum Likelihood",
  "bayes" = "Bayesian Parameter Estimation"
)

fitting.extra.args = list(
  "mle" = character(0),
  "bayes" = "iss"
)

mvber.labels = list(
  "tvar" = "Total Variance",
  "gvar" = "Generalized Variance",
  "nvar" = "Squared Frobenius Norm (1/4)",
  "nvark" = "Squared Frobenius Norm (k/4)"
)

supported.clusters = c("MPIcluster", "PVMcluster","SOCKcluster")

available.discretization.methods = c("quantile", "interval", "hartemink")

discretization.labels = c(
  "quantile" = "Quantile Discretization",
  "interval" = "Interval Discretization",
  "hartemink" = "Hartemink's Pairwise Mutual Information"
)

discretization.extra.args = list(
  "quantile" = character(0),
  "interval" = character(0),
  "hartemink" = c("ibreaks", "idisc")
)

template.numeric = numeric(1)

# global test counter.
.test.counter = local({

   val = 0

   function(new)
     if(missing(new)) 
       val 
     else 
       val <<- val + new

})

reset.test.counter = function() {

  .test.counter(-.test.counter())

}#RESET.TEST.COUNTER

increment.test.counter = function(i = 1) {

  .test.counter(i)

}#INCREMENT.TEST.COUNTER

test.counter = function() {

  .test.counter()

}#TEST.COUNTER

# global test permutaion counter.
.test.permut.counter = local({

  val = 0

  function(new)
    if(missing(new)) 
      val 
  else 
    val <<- val + new

})

reset.test.permut.counter = function() {

  .test.permut.counter(-.test.permut.counter())

}#RESET.TEST.PERMUT.COUNTER

increment.test.permut.counter = function(i = 1) {

  .test.permut.counter(i)

}#INCREMENT.TEST.PERMUT.COUNTER

test.permut.counter = function() {

  .test.permut.counter()

}#TEST.PERMUT.COUNTER

# global score counter.
.score.counter = local({

  val = 0

  function(new)
    if(missing(new)) 
      val 
  else 
    val <<- val + new

})

reset.score.counter = function() {

  .score.counter(-.score.counter())

}#RESET.SCORE.COUNTER

increment.score.counter = function(i = 1) {

  .score.counter(i)

}#INCREMENT.SCORE.COUNTER

score.counter = function() {

  .score.counter()

}#SCORE.COUNTER
