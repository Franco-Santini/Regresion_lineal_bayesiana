data {
  int<lower=1> N; // Cantidad de observaciones
  vector[N] t; // Variable explicativa
  vector[N] y; // Variable respuesta
}

parameters {
  // real beta0;
  real<lower=0> beta1;
  real<lower=0> d;
  real<lower=0> sigma;
}

model {
  // beta0 ~ normal(2.3026, 0.3);
  beta1 ~ normal(0.16, 0.075);
  d ~ uniform(1.5,2.5);
  sigma ~ normal(0, 0.3); //El valor anterior era 0.8046. una baaanda
  y ~ normal(2.7081 - beta1 * (t+d), sigma);
}