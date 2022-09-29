d <- data.frame(x = c(1, NA, 3))
d$x[is.na(d$x)] <- 0
d

d <- data.frame(x = 1, y = 2)
d2 <- d
d$x <- 5

data <- data.frame(revenue = c(2, 1, 2),
                   sort_key = c("b", "c", "a"))
data
print(data)

. <- data
. <- .[order(.$sort_key), , drop = FALSE]
.$ordered_sum_revenue <- cumsum(.$revenue)
.$fraction_revenue_seen <- .$ordered_sum_revenue/sum(.$revenue)
.


library('dplyr')
result <- data %>% 
  arrange(., sort_key) %>% 
  mutate(., ordered_sum_revenue = cumsum(revenue)) %>% 
  mutate(., fraction_revenue_seen = ordered_sum_revenue/ sum(revenue))

result

d <- data.frame(col1 = c(1, 2, 3), col2 = c(-1, 0, 1))
d$col3 <- d$col1 + d$col2

d <- d %>% 
  mutate(d, col3 = col1 + col2)
d
