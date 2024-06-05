trace_plot <- function(data, parametro, colores) {
  # Parametro: Tiene que ser un valor numerico (1, 2 o 3), donde 1 es beta, 2 es delta, 3 es sigma
  # Colores: tiene que ser un vector de tantos colores como cadenas
  
  data$iteracion <- rep(c(1:5000), times = 4)
  data$cadena <- rep(c(1:4), each = 5000) |> factor()
  
  # Lista de los nombres de los parámetros
  nombre <- list(
    beta = expression(beta[1]),
    delta = expression(delta),
    sigma = expression(sigma)
  )
  
  # Construcción del gráfico
  data |> 
    ggplot() +
    aes(x = iteracion, y = data[,parametro]) +
    geom_line(aes(group = cadena, color = cadena), linewidth = 0.1) +
    scale_color_manual(values = colores) +
    labs(color = "Cadena", x = "Iteración", y = nombre[[parametro]])
}

density_plot <- function(data, parametro, colores) {
  # Parametro: Tiene que ser un valor numerico (1, 2 o 3), donde 1 es beta, 2 es delta, 3 es sigma
  # Colores: tiene que ser un vector de tantos colores como cadenas

  data$cadena <- rep(c(1:4), each = 5000) |> factor()
  
  # Lista con los nombres de los parámetros
  nombre <- list(
    beta = expression(beta[1]),
    delta = expression(delta),
    sigma = expression(sigma)
  )
  
  # Construcción del gráfico
  data |> 
    ggplot() +
    aes(x = data[,parametro]) +
    geom_density(aes(group = cadena, color = cadena), linewidth = 1) +
    scale_color_manual(values = colores) +
    labs(color = "Cadena", y = "Densidad", x = nombre[[parametro]])
}