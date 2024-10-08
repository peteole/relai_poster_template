#import "../relai_poster_template.typ": poster
#import "@preview/algo:0.3.3": algo, i, d, comment, code

#show: doc => poster(doc, "Deep Reinforcement Learning Agents learn Predatory Pricing")

= Motivation

- Complex economic models have been infesible to analyse until recently
- *Reinforcement Learning* (RL) can solve complex decision making problems

#sym.arrow.r.double What if RL controls economic agents?

= Dynamic Oligopoly Model
Agents are companies competing in an oligopoly over multiple rounds:
#image("resources/dynamic_oligopoly_algorithm.png", width: 90%)

= Equilibrium Learning
We search *Nash equilibria* as fixed points of the game where no player gains by deviating:

$
sup _(pi _(i ) in  Sigma _(i ) )U _(i )\(pi _(i )\,pi ^(\*)_(- i )\) -  U _(i )\(pi ^(\*)_(cal(N ))\) <=  epsilon  quad  forall  i  in  cal(N )
$

Each company is controlled by an RL agent aiming to maximize its profit:

#image("resources/equilibrium_learning.svg", width: 100%)

We use REINFORCE (or its variants) to update all agents' policies simultaneously:

$
theta _(i ) <-  theta _(i ) +  alpha  nabla _(theta _(i )) U _(i )\(pi _(theta _(i ))\,\{ pi _(theta _(j ))\} _(j in  cal(N )without  \{ i \} )\)
$

We hope this procedure converges to a Nash equilibrium, as measured by:

$
  cal(L )_("bf")= sum _(i  in  cal(N )) sup _(pi _(i ) in  Sigma _(i )^(K )) U _(i )\(pi _(i )\,pi _(- i )\) -  U _(i )\(pi _(i )\,pi _(- i )\)
$

// $
//    cal(L )_("bf,norm")         & =  frac(cal(L )_("bf"),sum _(i  in  cal(N )) max _(pi _(i ) in  Sigma _(i )^(K )) U _(i )\(pi _(i )\,pi _(- i )\))
// $
