data {
  int<lower=1> N; // Cantidad de observaciones
  vector[N] t; // Variable explicativa
  vector[N] y; // Variable respuesta
}

parameters {
  real beta0;
  real beta1;
  real<lower=0> sigma;
}

model {
  beta0 ~ normal(2.2513, 0.75);
  beta1 ~ normal(-0.275, 0.0917);
  sigma ~ normal(0, 0.8046);
  y ~ normal(beta0 + beta1 * t, sigma);
}