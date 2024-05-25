data {
  int<lower=1> N;
  vector[N] t;
  vector[N] y;
  real mu_beta0;
  real mu_beta1;
  real<lower=0> sigma_beta0;
  real<lower=0> sigma_beta1;
}

parameters {
  real beta0;
  real beta1;
  real<lower=0> sigma;
}

model {
  beta0 ~ normal(mu_beta0, sigma_beta0);
  beta1 ~ normal(mu_beta1, sigma_beta1);
  sigma ~ normal(0, 0.8046);
  y ~ normal(beta0 + beta1 * t, sigma);
}




