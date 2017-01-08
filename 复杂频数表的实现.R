# tidyr实现
en_nv %>%
  group_by(sound, match, answer) %>% 
  tally() %>% 
  spread(key = answer, value = n)

# ftable实现
ftable(en_nv, row.vars = c(1,3), col.vars = 2)
