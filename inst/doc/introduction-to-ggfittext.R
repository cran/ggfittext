## ---- fig.width = 4, fig.height = 4--------------------------------------
library(ggfittext)
library(ggplot2)
ggplot(animals, aes(x = type, y = flies, label = animal)) +
  geom_tile(fill = "white", colour = "black") +
  geom_fit_text()

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(animals, aes(x = type, y = flies, label = animal)) +
  geom_tile(fill = "white", colour = "black") +
  geom_fit_text(reflow = TRUE)

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(animals, aes(x = type, y = flies, fill = mass, label = animal)) +
  geom_tile(fill = "white", colour = "black") +
  geom_fit_text(reflow = TRUE, grow = TRUE)

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(animals, aes(x = type, y = flies, label = animal)) +
  geom_tile(fill = "white", colour = "black") +
  geom_fit_text(place = "topleft", reflow = TRUE)

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(altitudes, aes(x = craft, y = altitude, label = altitude)) +
  geom_col() +
  geom_bar_text()

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(coffees, aes(x = coffee, y = proportion, label = ingredient,
                    fill = ingredient)) +
  geom_col(position = "stack") +
  geom_bar_text(position = "stack", grow = TRUE, reflow = TRUE)

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(coffees, aes(x = coffee, y = proportion, label = ingredient,
                    fill = ingredient)) +
  geom_col(position = "dodge") +
  geom_bar_text(position = "dodge", grow = TRUE, reflow = TRUE, 
                place = "left") +
  coord_flip()

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(presidential, aes(ymin = start, ymax = end, x = party, label = name)) +
  geom_fit_text(grow = TRUE) +
  geom_errorbar(alpha = 0.5)

## ---- fig.width = 4, fig.height = 4--------------------------------------
ggplot(animals, aes(x = type, y = flies, fill = mass, label = animal)) +
  geom_tile() +
  geom_fit_text(reflow = TRUE, grow = TRUE, contrast = TRUE)

