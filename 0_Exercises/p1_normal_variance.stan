data {
  int<lower=0> N;
  vector[N] x;
  real<lower=0> A;
}
parameters {
  real<lower=0, upper=A> sigma;
}
model {
  // Prior
  sigma ~ uniform(0, A);
  
  // Likelihood
  x ~ normal(0, sigma);
}
