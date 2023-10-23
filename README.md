# Evaluating the dynamics of the optokinetic nystagmus pattern in health and vertigo

This MATLAB project was conducted as part of the time series course offered by the School of Electrical & Computer Engineering (SECE AUTh) in 2018. Its aim was to find a robust procedure which gives a parameter that is related to the global dynamics of the vestibular system in both healthy subjects and vertigo patients using linear and nonlinear analysis methods and to evaluate its potential clinical sensitivity for diagnostic purposes. 

Our work confirmed the results of this [published work](https://doi.org/10.1006/cbmr.1997.1441) indicating that optokentic nystagmus may be controlled by a low-dimensional deterministic and possibly chaotic generator and that the correlation dimension $\nu$ can be regarded as a parameter of clinical relevance.

## What is the optokinetic nystagmus:

Optokinetic nystagmus refers to the involuntary eye movement generated by visual stimuli. It involves a combination of smooth pursuit eye movements and abrupt, jerking saccades, serving to stabilize retinal images during continuous motion and maintain visual system responsiveness.

The optokinetic test, also known as the optokinetic nystagmus test, is a diagnostic evaluation that assesses the health and functionality of the visual and vestibular systems. It involves presenting a subject with a moving pattern or series of stimuli, typically in the form of stripes or other visual cues, to elicit the optokinetic response. Observing the eye movements generated in response to the visual stimuli helps to evaluate the integrity of the ocular motor reflexes and the vestibulo-ocular reflex, aiding in the diagnosis of various neurological and ophthalmological conditions.

Further reading: 

1. Dix, M. R. (1980). The mechanism and clinical significance of optokinetic nystagmus. *Journal of Laryncology and Otology*, 94(8), 845-864. https://doi.org/10.1017/S0022215100089611
2. Magnusson, M., Schalén, L., Pyykkö, I., Enbom, H., & Henriksson, N. G. (1988). Clinical considerations concerning horizontal optokinetic nystagmus. *Acta Oto-laryngologica*. https://doi.org/10.3109/00016488809125057
3. Aasen, T., Kugiumtzis, D., & Nordahl, S. H. G. (1997). Procedure for estimating the correlation dimension of optokinetic nystagmus signals. *Computers and Biomedical Research*, *30*(2), 95–116. https://doi.org/10.1006/cbmr.1997.1441

## Data

Before executing/developing any script inside this project make sure you have donwloaded the data.

To get the data execute the script below:
```bash
curl -O http://users.auth.gr/dkugiu/Teach/TimeSeriesTHMMY/dat6v1.dat
curl -O http://users.auth.gr/dkugiu/Teach/TimeSeriesTHMMY/dat6v2.dat
```
OR email directly D. Kugiumtzis at dkugiu(at)auth(dot)gr.

## Code

`./assets/` contains all data analysis results.

`./src/` contains all source code.

`./kdtree/` contains all required libraries for the nonlinear analysis

The [tisean package](https://www.pks.mpg.de/~tisean/archive_3.0.0.html) is used to calculate the correlation dimension. 

Source code structure:

![structure](https://github.com/spirsanto/okn-dynamics/assets/81776518/44cc4b51-aad7-44fb-aea6-3855bedf1176)

Should you encounter any further issues, please report them directly using the issues tab.
