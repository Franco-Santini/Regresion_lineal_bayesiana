data {
  int<lower=0> N;
  vector[N] t;
  vector[N] y;
}

parameters {
  real beta0;
  real beta1;
  real<lower=0> sigma;
}

model {
  beta0 ~ normal(1.8806, 0.6269);
  beta1 ~ normal(0, 0.17);
  sigma ~ normal(0, 0.8046);
  y ~ normal(beta0 + beta1 * t, sigma);
}





