#import "../relai_poster_template.typ": poster
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-plot:0.1.2": chart, plot
#show: doc => poster(
  doc,
  text("Bayesian Sample Inference for Graph Generation", size: 60pt, weight: "bold"),
  flipped: false, // change for landscape
  n_columns: 2,
  authors: (
    ("name": "Ole Petersen", "affiliation": "TUM", "email": "ole.petersen@tum.de"),
    ("name": "Marcel Kollovieh", "affiliation": "TUM", "email": "m.kollovieh@tum.de"),
    ("name": "Marten Lienen", "affiliation": "TUM", "email": "m.lienen@tum.de"),
    ("name": "Stephan Günnemann", "affiliation": "TUM", "email": "s.guennemann@tum.de"),
  ),
  references: (
    ("url": "https://zuseschoolrelai.de", "label": "zuseschoolrelai.de"),
    //("url": "https://arxiv.org/abs/...", "label": "ArXiv"),
  ),
  font_size: 30pt,
)
= Graph generation is challenging

#image("resources/graph_generation_challenges.svg", width: 90%)

= Bayesian Sample Inference (BSI) is diffusion in parameter space

- Belief $p(bold(x)|bold(z))$ about sample $bold(x)$ parameterized by latent variable $bold(z)$:
$
  p(bold(x)|bold(z)) = cal(C)(bold(x)|"softmax"(bold(z)))
$
- New information is gradually incorporated in the belief $bold(z)$ through noisy observations $bold(y)$ of $bold(x)$ at precision $alpha$ and Bayesian updates.
#image("resources/bsi_iterative_sample_discovery.svg", width: 100%)

- Neural network $f_(theta)$ is trained to predict train samples $bold(x) approx f_(theta)(bold(z_t),t)$
- To generate new samples, the train sample $bold(x)$ is replaced with a $f_(theta)(bold(z_t),t)$ in every step:

#image("resources/bsi_sample_generation.svg", width: 100%)

= Training and sampling with BSI is remarkably simple
#image("resources/bsi_sampling.png")
#image("resources/bsi_training.png")

= We generate node features and adjacency matrices

- $n$-node graph with $c_V$ and $c_E$  node / edge categories is one-hot encoded: 
$
  X in {0,1}^(n times c_V)$ and $E in {0,1}^(n times n times c_E)
$
- Variable node count $n$ by first sampling $n$ from marginal, then generate $n$-node graph

= BSI works great for molecule generation!

#image("resources/bsi_results.png")