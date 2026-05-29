<style>
/* Estils globals del document */
body {
  font-family: Helvetica, Arial, sans-serif;
  font-size: 11pt;
  text-align: justify;
  line-height: 1.5;
  margin: 0.8cm;
}

/* Paràgrafs justificats */
p {
  text-align: justify;
  font-size: 11pt;
  margin: 0.6rem 0;
}

/* Estils per a les llistes amb la mateixa mida que el text normal */
ul, ol {
  font-size: 10pt;
  line-height: 1.5;
  margin: 0.5rem 0;
}

li {
  font-size: 10pt;
  line-height: 1.5;
  margin: 0.3rem 0;
}

/* Títols més petits */
h1 {
  font-size: 13pt;
  text-align: left;
  margin: 1rem 0 0.6rem 0;
}

h2 {
  font-size: 12pt;
  text-align: left;
  font-weight: bold;
  margin: 0.9rem 0 0.5rem 0;
}

h3 {
  font-size: 11pt;
  text-align: left;
  font-weight: bold;
  margin: 0.8rem 0 0.4rem 0;
}

h4 {
  font-size: 9pt;
  text-align: left;
  font-weight: bold;
  margin: 0.6rem 0 0.3rem 0;
}

h5 {
  font-size: 9pt;
  text-align: left;
  text-decoration: underline;
  margin: 0.5rem 0 0.3rem 0;
}

/* CORRECCIONS PER A BLOCS DE CODI */
pre {
  max-width: 100%;
  overflow-x: auto;
  white-space: pre-wrap;
  word-wrap: break-word;
  overflow-wrap: break-word;
  background-color: #f5f5f5;
  padding: 0.18rem 0.28rem;
  border: 1px solid #ddd;
  border-radius: 3px;
  font-size: 7pt;
  line-height: 1.22;
  min-width: 0;
  margin: 0.22rem 0;
}

/* Codi inline dins del text */
p code, li code, td code, h1 code, h2 code, h3 code, h4 code, h5 code {
  font-family: Consolas, "Courier New", monospace;
  font-size: 0.88em;
  color: #1f2937;
  background-color: #eef2f7;
  border: none;
  border-radius: 3px;
  padding: 0.02rem 0.16rem;
  vertical-align: top;
}

/* Codi dins de blocs pre: manté el comportament de bloc */
pre code {
  font-family: "Courier New", Consolas, monospace;
  font-size: 7pt;
  line-height: 1.22;
  color: #222;
  background: transparent;
  border: none;
  padding: 0;
  white-space: pre-wrap;
  word-break: break-word;
  overflow-wrap: break-word;
}

/* Contenidor principal */
.image-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 0.6rem;
  margin-top: 0.6rem;
  margin-bottom: 0.6rem;
  align-items: flex-start;
  width: 100%;
}

/* MODIFICAT: Reduïm la base (flex-basis) a 180px perquè hi capiguin 3 en una fila */
.image-column {
  flex: 1 1 180px;
  max-width: 5000px;
  display: flex;
  flex-direction: column;
  align-items: center;
  box-sizing: border-box;
}

/* Regla específica: Si només hi ha UNA imatge, la deixem ser més gran */
.image-row:has(.image-column:only-child) .image-column {
  max-width: 480px;
  flex: 0 1 auto;
}

/* Imatges */
.image-column img {
  width: 100%;
  max-height: 280px;
  height: auto;
  display: block;
  object-fit: contain;
}

/* Peu de foto */
.image-column .caption {
  margin-top: 0.3rem;
  font-size: 8pt;
  text-align: center;
  color: #555;
  width: 100%;
}

/* ============================================
   CONTENIDOR GRID 2x2 PER A IMATGES
   ============================================ */
.image-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 0.5rem;
  margin-top: 0.6rem;
  margin-bottom: 0.6rem;
  width: 100%;
  max-width: 720px;
  margin-left: auto;
  margin-right: auto;
}

/* Cada cel·la del grid */
.image-grid .grid-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  box-sizing: border-box;
}

/* Imatges dins del grid 2x2 */
.image-grid .grid-item img {
  width: 100%;
  max-width: 360px;
  max-height: 320px;
  height: auto;
  display: block;
  object-fit: contain;
}

/* Peu de foto per a cada imatge del grid */
.image-grid .grid-item .caption {
  margin-top: 0.3rem;
  font-size: 8pt;
  text-align: center;
  color: #555;
  width: 100%;
}

/* Peu de figura general (opcional, per sota de tot el grid) */
.image-grid-caption {
  margin-top: 0.5rem;
  font-size: 8pt;
  text-align: center;
  color: #555;
  font-style: italic;
}

/* Estil per a la separació de pàgines en PDF */
.page-break {
  page-break-before: always;
  break-before: page;
}

/* Bloc imatge-esquerra / text-dreta */
.media-row {
  display: flex;
  gap: 1rem;
  align-items: flex-start;
  margin: 0.6rem 0;
  min-width: 0;
}

.media-image {
  flex: 0 0 38%;
  max-width: 240px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.media-image img {
  width: 100%;
  height: auto;
  display: block;
}

.media-image .caption {
  margin-top: 0.3rem;
  font-size: 8pt;
  text-align: center;
  color: #555;
}

.media-text {
  flex: 1 1 0;
  min-width: 240px;
}

/* ============================================
   CONTENIDOR DE TAULES AMB PEU DE TAULA
   ============================================ */
.table-container {
  width: 100%;
  margin: 0.8rem 0;
  overflow-x: auto;
  page-break-inside: avoid;
}

/* Estils per a les taules */
.table-container table {
  width: 100%;
  max-width: 100%;
  border-collapse: collapse;
  font-size: 7pt;
  margin: 0 auto;
  background-color: #fff;
}

/* Capçalera de taula */
.table-container thead {
  background-color: #e0e0e0;
  font-weight: bold;
}

.table-container th {
  padding: 6px 4px;
  text-align: center;
  border: 1px solid #888;
  font-size: 7pt;
}

/* Files de dades */
.table-container td {
  padding: 5px 4px;
  text-align: center;
  border: 1px solid #aaa;
  font-size: 7pt;
}

.table-container td code {
  font-size: 7pt;
}

/* Files alternades (zebra striping) */
.table-container tbody tr:nth-child(even) {
  background-color: #f5f5f5;
}

/* Peu de taula (caption) */
.table-container .table-caption {
  margin-top: 0.4rem;
  font-size: 8pt;
  text-align: center;
  color: #555;
  font-style: italic;
}

/* Estil alternatiu: caption sobre la taula */
.table-container .table-title {
  margin-bottom: 0.4rem;
  font-size: 9pt;
  text-align: center;
  font-weight: bold;
  color: #333;
}

/* Estil per a les citacions in-document (elevades i petites) */
a[href^="#bib"] {
    vertical-align: super;
    font-size: 7pt;        /* Més petita que el text de 9pt */
    text-decoration: none;
    font-weight: bold;
    margin-left: 1px;
}

/* Opcional: canviar el color perquè sembli una citació clàssica */
a[href^="#bib"]:hover {
    text-decoration: underline;
    color: #0056b3;
}
/* Millores per a impressió/PDF */
@media print {
  body {
    margin: 0.6cm 0.8cm;
  }

  .table-container {
    page-break-inside: avoid;
  }

  .table-container table {
    border: 1px solid #000;
  }

  .table-container th,
  .table-container td {
    border: 1px solid #666;
  }

  .image-column {
    page-break-inside: avoid;
  }

  /* Límits més restrictius per a PDF */
  .image-column img {
    max-height: 280px;
  }

  .image-row:has(.image-column:only-child) .image-column img {
    max-height: 360px;
  }

  /* Grid 2x2 en impressió */
  .image-grid {
    page-break-inside: avoid;
  }

  .image-grid .grid-item img {
    max-height: 280px;
  }

  pre {
    page-break-inside: avoid;
    overflow: visible;
    white-space: pre-wrap;
  }
}

:not(pre):not(.hljs) > code {
  color: #1f2328;
  background-color: #afb8c133;
  padding: .2em .2em;
  margin: 0;
  border-radius: 6px;
  font-size: 80%;
}
</style>

## 0. Índex

- [0. Índex](#0-índex)
- [1. Introducció](#1-introducció)
  - [1.1 Motivació](#11-motivació)
  - [1.2 Enunciat](#12-enunciat)
  - [1.3 Metodologia](#13-metodologia)
- [2. Model del pèndol](#2-model-del-pèndol)
  - [2.1 Equacions del moviment](#21-equacions-del-moviment)
  - [2.2 Model no lineal](#22-model-no-lineal)
  - [2.3 Linearització](#23-linearització)
  - [2.4 Model en espai d’estats, controlabilitat, observabilitat i estabilitat](#24-model-en-espai-destats-controlabilitat-observabilitat-i-estabilitat)
- [3. PID](#3-pid)
  - [3.1 Introducció al control clàssic](#31-introducció-al-control-clàssic)
  - [3.2 Ús del PID i efecte dels guanys](#32-ús-del-pid-i-efecte-dels-guanys)
  - [3.3 Implementació del controlador PID al pèndol invertit amb Simulink](#33-implementació-del-controlador-pid-al-pèndol-invertit-amb-simulink)
- [4. Controlador LQR](#4-controlador-lqr)
  - [4.1 Introducció al control òptim](#41-introducció-al-control-òptim)
  - [4.2 Simulació del sistema no linealitzat amb el controlador LQR en Simulink](#42-simulació-del-sistema-no-linealitzat-amb-el-controlador-lqr-en-simulink)
- [5. Filtre de Kalman](#5-filtre-de-kalman)
  - [5.1 Fonaments teòrics](#51-fonaments-teòrics)
  - [5.2 Aplicació al pèndol invertit](#52-aplicació-al-pèndol-invertit)
  - [5.3 Implementació a Simulink](#53-implementació-a-simulink)
  - [5.4 Resultats de la simulació](#54-resultats-de-la-simulació)
- [6. Controlador LQG](#6-controlador-lqg)
- [7. Extensions](#7-extensions)
  - [7.1 Primera extensió](#71-primera-extensió)
    - [7.1.1 Implementació del model](#711-implementació-del-model)
    - [7.1.2 Resultats](#712-resultats)
  - [7.1.3 Conclusions de la primera extensió](#713-conclusions-de-la-primera-extensió)
  - [7.2 Segona extensió](#72-segona-extensió)
- [8. Conclusions](#8-conclusions)
- [9. Referències](#9-referències)

<div class="page-break"></div>

## 1. Introducció

Aquest projecte té com a propòsit principal la representació, l'anàlisi i el disseny de sistemes dinàmics. L'objectiu és interioritzar conceptes clau d'aquesta disciplina, com ara l'estabilitat, l'observabilitat i la controlabilitat, i aplicar-los al disseny pràctic de controladors capaços de governar fenòmens físics que evolucionen en el temps dins d'un entorn real.

### 1.1 Motivació

La principal raó per desenvolupar aquest treball és que el pèndol invertit actua com un banc de proves ideal per aprendre i validar diverses metodologies de control. En concret, ens permet explorar des del control clàssic PID (Proporcional-Integral-Derivatiu) fins a tècniques d'estat modernes com el Regulador Quadràtic Lineal (LQR), el filtre de Kalman i el Regulador Quadràtic Lineal Gaussià (LQG). Dominar aquestes eines és un pas fonamental per poder dissenyar sistemes de control robustos en l'enginyeria.

### 1.2 Enunciat

Per a la realització de la pràctica, partim de dos documents principals. D'una banda, un treball de referència enfocat en la física i control del pèndol invertit[[1]](#bib1). I, de l'altra, un segon projecte implementat en Simulink que ens serveix de pauta metodològica: Design of a Linear Quadratic Gaussian Control System for a Thrust Vector Controlled Rocket[[2]](#bib2)
La tasca central consisteix a replicar l'estructura i el mètode d'aquest darrer treball, però aplicant-ho sobre el sistema del pèndol invertit. A més a més, s'hauran de desenvolupar dos casos propis d'estudi (modificacions lliures) on es treballi sobre dues referències diferents: la posició del carro i l'angle del pèndol.
Caldrà entregar una memòria que inclogui els objectius, el modelat, el treball realitzat i les conclusions, acompanyada d'un resum de 5 diapositives de presentació i la totalitat del codi (MATLAB/Simulink) generat. La qualificació es fonamentarà en la fidelitat amb què s'imiti l'enfocament del treball de referència, la solidesa de les dues extensions proposades i la qualitat del lliurament de les diapositives.

### 1.3 Metodologia

A partir de les equacions de moviment del sistema físic, el primer pas serà derivar un model continu i lineal en l'espai d'estats. Aprofitant el coneixement previ de la dinàmica del pèndol, es definiran les matrius $A, B, C, D$ que descriuen el seu comportament prop de l'equilibri.
Un cop establert aquest espai d'estats, es procedirà a implementar diverses estratègies de control per observar-ne els efectes sobre l'estabilitat i l'angle. Inicialment, dins del marc del control clàssic, es dissenyarà un controlador PID per corregir les pertorbacions angulars; atesa la inestabilitat inherent de la planta, caldrà sintonitzar de manera acurada els guanys proporcional, integral i derivatiu per forçar la posició vertical desitjada.
En la següent fase, s'emprarà MATLAB i Simulink per dissenyar un regulador LQR, definint les matrius de ponderació $Q$ i $R$ de la funció de cost per tal d'assolir uns guanys de realimentació òptims. Com que s'haurà comprovat que el sistema és completament controlable i observable, també s'implementarà un filtre de Kalman encarregat d'estimar l'estat intern del pèndol invertit basant-se únicament en els senyals de sortida. Finalment, gràcies al principi de separació, el filtre de Kalman i el LQR s'integraran per conformar un controlador LQG, aconseguint així una resposta dinàmica global òptima.

<div class="page-break"></div>

## 2. Model del pèndol

Primer de tot, definim la nomenclatura i les unitats que s’utilitzaran al llarg del model dinàmic del pèndol invertit sobre carro. Aquesta taula serveix com a referència per a totes les expressions que apareixeran més endavant i ajuda a mantenir una notació clara i coherent durant tota la secció.

<div class="table-container">
  <div class="table-title">Nomenclatura del model del pèndol invertit sobre carro</div>
  <table>
    <thead>
      <tr>
        <th>Símbol</th>
        <th>Descripció</th>
        <th>Unitats SI</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><math><mi>x</mi></math></td>
        <td>Posició horitzontal del carro</td>
        <td>m</td>
      </tr>
      <tr>
        <td><math><mi>θ</mi></math></td>
        <td>Angle del pèndol respecte de la vertical, positiu en sentit antihorari</td>
        <td>rad</td>
      </tr>
      <tr>
        <td><math><mover><mi>x</mi><mo>˙</mo></mover></math></td>
        <td>Velocitat horitzontal del carro</td>
        <td>m/s</td>
      </tr>
      <tr>
        <td><math><mover><mi>θ</mi><mo>˙</mo></mover></math></td>
        <td>Velocitat angular del pèndol</td>
        <td>rad/s</td>
      </tr>
      <tr>
        <td><math><mover><mi>x</mi><mo>¨</mo></mover></math></td>
        <td>Acceleració horitzontal del carro</td>
        <td>m/s<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><mover><mi>θ</mi><mo>¨</mo></mover></math></td>
        <td>Acceleració angular del pèndol</td>
        <td>rad/s<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><msub><mi>x</mi><mi>p</mi></msub></math></td>
        <td>Coordenada horitzontal del centre de gravetat del pèndol</td>
        <td>m</td>
      </tr>
      <tr>
        <td><math><msub><mi>y</mi><mi>p</mi></msub></math></td>
        <td>Coordenada vertical del centre de gravetat del pèndol</td>
        <td>m</td>
      </tr>
      <tr>
        <td><math><msub><mi>M</mi><mi>c</mi></msub></math></td>
        <td>Massa del carro</td>
        <td>kg</td>
      </tr>
      <tr>
        <td><math><mi>m</mi></math></td>
        <td>Massa del pèndol, concentrada al centre de gravetat</td>
        <td>kg</td>
      </tr>
      <tr>
        <td><math><mi>l</mi></math></td>
        <td>Distància des del pivot fins al centre de gravetat del pèndol</td>
        <td>m</td>
      </tr>
      <tr>
        <td><math><mi>I</mi></math></td>
        <td>Moment d’inèrcia del pèndol respecte del pivot</td>
        <td>kg·m<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><mi>c</mi></math></td>
        <td>Coeficient de fricció viscosa del carro</td>
        <td>N·s/m</td>
      </tr>
      <tr>
        <td><math><mi>b</mi></math></td>
        <td>Coeficient d’amortiment viscós al pivot</td>
        <td>N·m·s/rad</td>
      </tr>
      <tr>
        <td><math><mi>g</mi></math></td>
        <td>Acceleració de la gravetat</td>
        <td>m/s<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><mi>F</mi></math></td>
        <td>Força de control aplicada al carro</td>
        <td>N</td>
      </tr>
      <tr>
        <td><math><mi>u</mi></math></td>
        <td>Entrada de control, definida com <math><mi>u</mi><mo>=</mo><mi>F</mi></math></td>
        <td>N</td>
      </tr>
      <tr>
        <td><math><mi>T</mi></math></td>
        <td>Energia cinètica total del sistema</td>
        <td>J</td>
      </tr>
      <tr>
        <td><math><mi>U</mi></math></td>
        <td>Energia potencial del sistema</td>
        <td>J</td>
      </tr>
      <tr>
        <td><math><mi mathvariant="script">L</mi></math></td>
        <td>Lagrangià del sistema, definit com <math><mi mathvariant="script">L</mi><mo>=</mo><mi>T</mi><mo>-</mo><mi>U</mi></math></td>
        <td>J</td>
      </tr>
      <tr>
        <td><math><mi>Δ</mi></math></td>
        <td>Denominador comú de les expressions no lineals de les acceleracions</td>
        <td>kg<sup>2</sup>·m<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><mi>α</mi></math></td>
        <td>Valor de <math><mi>Δ</mi></math> al punt d’equilibri de linealització</td>
        <td>kg<sup>2</sup>·m<sup>2</sup></td>
      </tr>
      <tr>
        <td><math><mi mathvariant="bold">x</mi></math></td>
        <td>Vector d’estat del sistema</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi mathvariant="bold">y</mi></math></td>
        <td>Vector de sortida del sistema</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi>A</mi></math></td>
        <td>Matriu d’estat del model linealitzat</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi>B</mi></math></td>
        <td>Matriu d’entrada del model linealitzat</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi>C</mi></math></td>
        <td>Matriu de sortida</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi>D</mi></math></td>
        <td>Matriu de transmissió directa</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi mathvariant="script">C</mi></math></td>
        <td>Matriu de controlabilitat</td>
        <td>-</td>
      </tr>
      <tr>
        <td><math><mi mathvariant="script">O</mi></math></td>
        <td>Matriu d’observabilitat</td>
        <td>-</td>
      </tr>
    </tbody>
  </table>
  <div class="table-caption">Taula 1. Nomenclatura i unitats utilitzades en el model dinàmic del pèndol invertit sobre carro.</div>
</div>

### 2.1 Equacions del moviment

El sistema que es vol controlar és un pèndol invertit muntat sobre un carro que es desplaça lliurement en la direcció horitzontal. L’objectiu és aplicar una força $F$ sobre el carro per mantenir el pèndol en la posició vertical cap amunt, que constitueix un punt d’equilibri inestable. El sistema té dos graus de llibertat: la posició horitzontal del carro, $x$, i l’angle del pèndol respecte de la vertical, $\theta$:

<div class="image-row">
  <div class="image-column">
    <img src="./images/pendol.png" alt="Diagrama del pèndol invertit sobre carro">
    <div class="caption">Figura 1: Diagrama esquemàtic del pèndol invertit sobre carro </div>
  </div>
</div>

Els paràmetres físics del model són $M_c$, la massa del carro; $m$, la massa del pèndol; $l$, la distància des del pivot fins al centre de gravetat; $I$, el moment d’inèrcia del pèndol respecte del pivot; $c$, el coeficient de fricció viscosa del carro; $b$, el coeficient d’amortiment viscós al pivot; i $g$, l’acceleració de la gravetat.

Per començar, es descriu la cinemàtica del sistema. Si $x_p$ i $y_p$ representen les coordenades absolutes del centre de gravetat del pèndol, la geometria del mecanisme porta a:

$$
    \begin{bmatrix}
    x_p \\\\
    y_p
    \end{bmatrix}
    =
    \begin{bmatrix}
    x + l\sin\theta \\\\
    - l\cos\theta
    \end{bmatrix}
$$

Derivant respecte del temps, s’obtenen les velocitats del centre de gravetat:

$$
    \dot{x}_p = \dot{x} + l\dot{\theta}\cos\theta,
    \qquad
    \dot{y}_p = -l\dot{\theta}\sin\theta
$$

Un cop definida la cinemàtica, es pot plantejar el model dinàmic mitjançant el mètode d’Euler-Lagrange. Aquest enfocament és especialment útil perquè permet obtenir les equacions del moviment a partir de les energies del sistema. El Lagrangià es defineix com:

$$
    \mathcal{L} = T - U
$$

on $T$ és l’energia cinètica total i $U$ és l’energia potencial.

En aquest model, l’energia potencial només depèn del pèndol i queda escrita com:

$$
    U = - mgl\cos\theta
$$

L’energia cinètica total és la suma de la contribució del carro i la del pèndol. La del carro és:

$$
    T_{\text{carro}} = \frac{1}{2}M_c\dot{x}^2
$$

La del pèndol es divideix en una part translacional i una part rotacional. La part translacional s’obté a partir de les velocitats del centre de gravetat:

$$
    T_{\text{pèndol}}
    =
    \frac{1}{2}m\left[
    (\dot{x} + l\dot{\theta}\cos\theta)^2
    +
    (l\dot{\theta}\sin\theta)^2
    \right]
    +
    \frac{1}{2}I\dot{\theta}^2
$$

Desenvolupant els termes i utilitzant la identitat $\sin^2\theta + \cos^2\theta = 1$, l’energia cinètica total del sistema es pot simplificar a:

$$
    T
    =
    \frac{1}{2}(M_c + m)\dot{x}^2
    +
    \frac{1}{2}(I + ml^2)\dot{\theta}^2
    +
    ml\dot{x}\dot{\theta}\cos\theta
$$

Per tant, el Lagrangià complet queda:

$$ 
\mathcal{L} = \frac{1}{2} (M_c + m)\dot{x}^2 + \frac{1}{2} (I + ml^2)\dot{\theta}^2 + ml\dot{x}\dot{\theta} \cos\theta + mgl \cos\theta 
$$

Com que el sistema té dues coordenades generalitzades, $x$ i $\theta$, cal aplicar dues equacions d’Euler-Lagrange. La força generalitzada associada a $x$ és $F - c\dot{x}$, mentre que la força generalitzada associada a $\theta$ és $-b\dot{\theta}$. Així, les equacions corresponents són:

$$
    \frac{d}{dt}\left(\frac{\partial \mathcal{L}}{\partial \dot{x}}\right)
    -
    \frac{\partial \mathcal{L}}{\partial x}
    =
    F - c\dot{x}
$$

$$
    \frac{d}{dt}\left(\frac{\partial \mathcal{L}}{\partial \dot{\theta}}\right)
    -
    \frac{\partial \mathcal{L}}{\partial \theta}
    =
    -b\dot{\theta}
$$

Després de calcular les derivades parcials i simplificar, s’obtenen les equacions del moviment no lineals del sistema:

$$ 
  (M_c + m)\ddot{x} + ml\ddot{\theta} \cos\theta - ml\dot{\theta}^2 \sin\theta = F - c\dot{x} 
$$
$$ 
  (I + ml^2)\ddot{\theta} + ml\ddot{x} \cos\theta + mgl \sin\theta = -b\dot{\theta} 
$$

Aquestes són les equacions bàsiques que descriuen la dinàmica del pèndol invertit sobre carro. En aquesta forma encara no són adequades per al disseny del controlador, perquè les dues acceleracions apareixen acoblades i el model és no lineal.

### 2.2 Model no lineal

Per escriure el sistema en forma d’espai d’estats, primer cal aïllar $\ddot{x}$ i $\ddot{\theta}$. Per fer-ho, es defineix el denominador comú:

$$
    \Delta = (M_c + m)(I + ml^2) - m^2l^2\cos^2\theta
$$

Resolent el sistema format per les dues equacions del moviment respecte de les dues acceleracions, s’arriba a:

$$
    \ddot{x}
    =
    \frac{
    (I + ml^2)\bigl(F - c\dot{x} + ml\dot{\theta}^2\sin\theta\bigr)
    -
    ml\cos\theta\bigl(mgl\sin\theta - b\dot{\theta}\bigr)
    }{
    \Delta
    }
$$

$$
    \ddot{\theta}
    =
    \frac{
    (M_c + m)\bigl(mgl\sin\theta - b\dot{\theta}\bigr)
    -
    ml\cos\theta\bigl(F - c\dot{x} + ml\dot{\theta}^2\sin\theta\bigr)
    }{
    \Delta
    }
$$

A continuació es defineixen les variables d’estat habituals del problema:

$$
    x_1 = x,
    \qquad
    x_2 = \theta,
    \qquad
    x_3 = \dot{x},
    \qquad
    x_4 = \dot{\theta}
$$

Amb aquesta definició, el vector d’estat es pot escriure com:

$$
    \mathbf{x}
    =
    \begin{bmatrix}
    x \\\\
    \theta \\\\
    \dot{x} \\\\
    \dot{\theta}
    \end{bmatrix}
$$

Prenent com a entrada de control la força aplicada al carro, és a dir, $u = F$, el model no lineal en espai d’estats queda:

$$
    \dot{\mathbf{x}}
    =
    \begin{bmatrix}
    \dot{x} \\\\
    \dot{\theta} \\\\
    f_3(x,\theta,\dot{x},\dot{\theta},u) \\\\
    f_4(x,\theta,\dot{x},\dot{\theta},u)
    \end{bmatrix}
$$

on les funcions $f_3$ i $f_4$ són, respectivament, les expressions de $\ddot{x}$ i $\ddot{\theta}$ obtingudes abans. Si s’escriuen explícitament en funció dels estats $x_1$, $x_2$, $x_3$ i $x_4$, s’obté:

$$
    \dot{\mathbf{x}} =
    \begin{bmatrix}
    x_3 \\\\
    x_4 \\\\
    \frac{(I + ml^2)(u - cx_3 + mlx_4^2 \sin x_2) + ml \cos x_2 (mgl \sin x_2 + bx_4)}{I(M_c + m) + M_cml^2 + m^2l^2 \sin^2 x_2} \\\\
    \frac{-(M_c + m)(mgl \sin x_2 + bx_4) - ml \cos x_2 (u - cx_3 + mlx_4^2 \sin x_2)}{I(M_c + m) + M_cml^2 + m^2l^2 \sin^2 x_2}
    \end{bmatrix}
$$

Aquesta expressió és el model no lineal complet del sistema. És la forma adequada per simular la dinàmica real del pèndol, però no és la més pràctica per aplicar tècniques de control lineal com LQR o LQG. Per aquest motiu, el pas següent és linealitzar el sistema al voltant d’un punt d’equilibri.

### 2.3 Linearització

Les equacions del moviment no lineals obtingudes anteriorment descriuen correctament la dinàmica del pèndol invertit, però encara no són adequades per al disseny d’un controlador lineal. Per aquest motiu, el següent pas és reescriure el sistema en forma d’espai d’estats i, posteriorment, linealitzar-lo al voltant d’un punt d’operació d’interès.

Partim de les equacions del moviment:

$$ 
  (M_c + m)\ddot{x} + ml\ddot{\theta}\cos\theta - ml\dot{\theta}^2\sin\theta = F - c\dot{x} 
$$
$$ 
  (I + ml^2)\ddot{\theta} + ml\ddot{x}\cos\theta + mgl\sin\theta = -b\dot{\theta} 
$$

Per obtenir una representació en espai d’estats, primer cal aïllar les acceleracions $\ddot{x}$ i $\ddot{\theta}$. Si es pren $\ddot{x}$ de la segona equació, s’obté:

$$ 
  \ddot{x} = \frac{-b\dot{\theta} - mgl\sin\theta - (I + ml^2)\ddot{\theta}}{ml\cos\theta} 
$$

Substituint aquesta expressió a la primera equació, es pot obtenir $\ddot{\theta}$ en funció dels estats i de l’entrada. El resultat és:

$$ 
  \ddot{\theta} = \frac{-\left( (M_c + m)(b\dot{\theta} + mgl\sin\theta) + ml\cos\theta(F - c\dot{x} + ml\dot{\theta}^2\sin\theta) \right)}{m^2l^2\sin^2\theta + M_cml^2 + (M_c + m)I} 
$$

De manera similar, si aïllem ara $\ddot{\theta}$ de la primera equació, resulta:

$$ 
  \ddot{\theta} = \frac{F - c\dot{x} - (M_c + m)\ddot{x} + ml\dot{\theta}^2\sin\theta}{ml\cos\theta} 
$$

Substituint aquesta expressió a la segona equació, s’arriba a la forma explícita de $\ddot{x}$: 

$$ 
  \ddot{x} = \frac{bml\dot{\theta}\cos\theta + m^2l^2g\sin\theta\cos\theta + (I + ml^2)(F - c\dot{x} + ml\dot{\theta}^2\sin\theta)}{m^2l^2\sin^2\theta + M_cml^2 + (M_c + m)I} 
$$

Un cop aïllades les acceleracions, es defineixen les variables d’estat habituals del sistema:

$$
    x_1 = x,
    \qquad
    x_2 = \theta,
    \qquad
    x_3 = \dot{x},
    \qquad
    x_4 = \dot{\theta}
$$

Amb aquesta definició, les equacions d’estat associades a $\dot{x}_3$ i $\dot{x}_4$ queden:

$$
    \dot{x}_3
    =
    \frac{
    bmlx_4\cos x_2
    +
    m^2l^2g\sin x_2\cos x_2
    +
    (I + ml^2)\left(F - cx_3 + mlx_4^2\sin x_2\right)
    }{
    Mml^2 + (M + m)I + m^2l^2\sin^2 x_2
    }
$$

$$
    \dot{x}_4
    =
    \frac{
    -\left(
    Fml\cos x_2
    -
    cmlx_3\cos x_2
    +
    m^2l^2x_4^2\sin x_2\cos x_2
    +
    (M + m)(bx_4 + mgl\sin x_2)
    \right)
    }{
    Mml^2 + (M + m)I + m^2l^2\sin^2 x_2
    }
$$

Per tant, el model no lineal final en forma d’espai d’estats es pot escriure com:

$$
    \frac{d}{dt}
    \begin{bmatrix}
    x_1 \\\\
    x_2 \\\\
    x_3 \\\\
    x_4
    \end{bmatrix}
    =
    \begin{bmatrix}
    x_3 \\\\
    x_4 \\\\
    \frac{bmlx_4 \cos x_2 + m^2l^2g \sin x_2 \cos x_2 + (I + ml^2)(F - cx_3 + mlx_4^2 \sin x_2)}{Mml^2 + (M + m)I + m^2l^2 \sin^2 x_2} \\\\
    \frac{-(M + m)(mgl \sin x_2 + bx_4) - ml \cos x_2 (F - cx_3 + mlx_4^2 \sin x_2)}{Mml^2 + (M + m)I + m^2l^2 \sin^2 x_2}
    \end{bmatrix}
$$

Si es consideren com a sortides totes les variables d’estat, la sortida del sistema queda definida per:

$$
    Y
    =
    CX
    =
    \begin{bmatrix}
    1 & 0 & 0 & 0 \\\\
    0 & 1 & 0 & 0 \\\\
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1
    \end{bmatrix}
    \begin{bmatrix}
    x \\\\
    \theta \\\\
    \dot{x} \\\\
    \dot{\theta}
    \end{bmatrix}
$$

Si es vol obtenir un model lineal local al voltant del punt estacionari vertical, cal linealitzar aquest sistema no lineal. Definim el camp vectorial com:

$$
    f(X,U) =
    \begin{bmatrix}
    x_3 \\\\
    x_4 \\\\
    \frac{bmlx_4 \cos x_2 + m^2l^2g \sin x_2 \cos x_2 + (I + ml^2)(F - cx_3 + mlx_4^2 \sin x_2)}{Mml^2 + (M + m)I + m^2l^2 \sin^2 x_2} \\\\
    \frac{-(M + m)(mgl \sin x_2 + bx_4) - ml \cos x_2 (F - cx_3 + mlx_4^2 \sin x_2)}{Mml^2 + (M + m)I + m^2l^2 \sin^2 x_2}
    \end{bmatrix}
$$

La linealització es fa utilitzant una expansió de Taylor de primer ordre i la matriu jacobiana. El model no lineal és:

$$
    \dot{X} = f(X,U)
$$

i es vol obtenir un model lineal local al voltant d’un punt d’operació:

$$
    (X_0,U_0) \rightarrow (X = X_0 + \delta X,\; U = U_0 + \delta U)
$$

Així, la dinàmica al voltant del punt d’operació es pot escriure com:

$$
    \delta\dot{X} = f(X_0 + \delta X,\; U_0 + \delta U)
$$

Aplicant l’expansió de Taylor de primer ordre, s’obté:

$$
    \delta\dot{X}
    =
    f(X_0,U_0)
    +
    \frac{\partial f}{\partial X}(X_0,U_0)\delta X
    +
    \frac{\partial f}{\partial U}(X_0,U_0)\delta U
    +
    \text{H.O.T}
$$

Si es tria un punt d’operació que sigui realment un punt d’equilibri, es compleix que:

$$
    f(X_0,U_0) = 0
$$

En aquest cas, el punt de referència escollit és el punt estacionari vertical:

$$
    (X_0,U_0)
    =
    \left(
    \begin{bmatrix}
    0 \\\\
    \pi \\\\
    0 \\\\
    0
    \end{bmatrix},
    0
    \right)
$$

Despreciant els termes d’ordre superior, el sistema linealitzat queda:

$$
    \delta\dot{X} = A\delta X + B\delta U
$$

$$
    Y = C\delta X
$$

Re-definint $\delta X \approx X$ i $\delta U \approx U$, s’arriba a la forma lineal estàndard:
$$
    \dot{X} = AX + BU
$$

$$
    Y = CX
$$

on les matrius del sistema són:

$$
    A = \frac{\partial f}{\partial X}\bigg|_{(X_0,U_0)}
$$

$$
    B = \frac{\partial f}{\partial U}\bigg|_{(X_0,U_0)}
$$

Linealitzant l’equació no lineal anterior al voltant del punt de referència, s’obté la matriu d’estat:
$$
    A
    =
    \begin{bmatrix}
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1 \\\\
    0 & \dfrac{m^2l^2g}{\alpha} & -\dfrac{(I + ml^2)c}{\alpha} & -\dfrac{bml}{\alpha} \\\\
    0 & \dfrac{mgl(M + m)}{\alpha} & -\dfrac{mlc}{\alpha} & -\dfrac{b(M + m)}{\alpha}
    \end{bmatrix}
$$

Prenent la força $F$ com a entrada del sistema, és a dir, $U = F$, es defineix:

$$
    \alpha = I(M + m) + Mml^2
$$

i la matriu d’entrada queda:

$$
    B
    =
    \begin{bmatrix}
    0 \\\\
    0 \\\\
    \dfrac{I + ml^2}{\alpha} \\\\
    \dfrac{ml}{\alpha}
    \end{bmatrix}
$$

Per tant, el model linealitzat amb la força $F$ com a entrada és:

$$
    \dot{X}
    =
    \begin{bmatrix}
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1 \\\\
    0 & \dfrac{m^2l^2g}{\alpha} & -\dfrac{(I+ml^2)c}{\alpha} & -\dfrac{bml}{\alpha} \\\\
    0 & \dfrac{mgl(M + m)}{\alpha} & -\dfrac{mlc}{\alpha} & -\dfrac{b(M + m)}{\alpha}
    \end{bmatrix}
    X
    +
    \begin{bmatrix}
    0 \\\\
    0 \\\\
    \dfrac{I + ml^2}{\alpha} \\\\
    \dfrac{ml}{\alpha}
    \end{bmatrix}
    F
$$

En el muntatge experimental del document de referència, la força aplicada al carro és generada per un motor PMDC. En aquest cas, la relació entre la força $F$ i el voltatge aplicat $V_m$ és:

$$
    F
    =
    \frac{
    k_tV_mr - k_tk_b\dot{x}
    }{
    R_mr^2
    }
    =
    \frac{
    k_tV_mr - k_tk_bx_3
    }{
    R_mr^2
    }
$$

Substituint aquesta expressió dins del model linealitzat anterior, s’obté el model final amb el voltatge $V_m$ com a entrada:

$$
    \dot{X}
    =
    \begin{bmatrix}
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1 \\\\
    0 & \dfrac{m^2l^2g}{\alpha} & -\dfrac{(I + ml^2)\left(c + \dfrac{k_tk_b}{R_mr^2}\right)}{\alpha} & -\dfrac{bml}{\alpha} \\\\
    0 & \dfrac{mgl(M + m)}{\alpha} & -\dfrac{ml\left(c + \dfrac{k_tk_b}{R_mr^2}\right)}{\alpha} & -\dfrac{b(M + m)}{\alpha}
    \end{bmatrix}
    X
    +
    \begin{bmatrix}
    0 \\\\
    0 \\\\
    \dfrac{(I + ml^2)k_t}{\alpha R_mr} \\\\
    \dfrac{mlk_t}{\alpha R_mr}
    \end{bmatrix}
    V_m
$$

Per als valors numèrics del sistema experimental utilitzats al document de referència, aquest model pren la forma:

$$
    \dot{X}
    =
    \begin{bmatrix}
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1 \\\\
    0 & 5.51 & -18.29 & -0.002 \\\\
    0 & 64.9 & -77.53 & -0.026
    \end{bmatrix}
    \begin{bmatrix}
    x \\\\
    \theta \\\\
    \dot{x} \\\\
    \dot{\theta}
    \end{bmatrix}
    +
    \begin{bmatrix}
    0 \\\\
    0 \\\\
    2.73 \\\\
    11.59
    \end{bmatrix}
    V_m
$$

$$
    Y
    =
    \begin{bmatrix}
    1 & 0 & 0 & 0 \\\\
    0 & 1 & 0 & 0 \\\\
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1
    \end{bmatrix}
    \begin{bmatrix}
    x \\\\
    \theta \\\\
    \dot{x} \\\\
    \dot{\theta}
    \end{bmatrix}
$$

### 2.4 Model en espai d’estats, controlabilitat, observabilitat i estabilitat

Un cop obtingut el model linealitzat, ja es pot escriure el sistema en la forma estàndard d’espai d’estats, que és la base tant per a l’anàlisi dinàmica com per al disseny posterior del controlador LQR i de l’estimador de tipus Kalman. Aquesta manera de representar el sistema és també coherent amb l’estructura del treball de referència, on després de la linearització es dedica una secció específica a l’estudi del model d’estat i de les seves propietats estructurals. Considerem el vector d’estat:

$$
    X
    =
    \begin{bmatrix}
    x \\\\
    \theta \\\\
    \dot{x} \\\\
    \dot{\theta}
    \end{bmatrix}
$$

i, prenent com a entrada el voltatge del motor, el model linealitzat queda en la forma:

$$
    \dot{X} = AX + BU
$$

$$
    Y = CX + DU
$$

Pel que fa a la sortida del sistema, en aquesta etapa del treball es considera que totes les variables d’estat són disponibles per a la llei de control. Això implica que la sortida coincideix amb el vector d’estat complet, és a dir,

$$
    Y = X
$$

i, per tant, la matriu de sortida és la identitat de dimensió quatre, mentre que la matriu $D$ és nul·la:

$$
    C
    =
    \begin{bmatrix}
    1 & 0 & 0 & 0 \\\\
    0 & 1 & 0 & 0 \\\\
    0 & 0 & 1 & 0 \\\\
    0 & 0 & 0 & 1
    \end{bmatrix},
    \qquad
    D
    =
    \begin{bmatrix}
    0 \\\\
    0 \\\\
    0 \\\\
    0
    \end{bmatrix}
$$

Un cop preses aquestes decisions de disseny, la primera propietat estructural que cal verificar és la controlabilitat, és a dir, la capacitat de l’entrada per influir sobre tots els modes interns del sistema. En un sistema lineal invariant en el temps, aquesta propietat s’analitza a partir de la matriu de controlabilitat

$$
    \mathcal{C}
    =
    \begin{bmatrix}
    B & AB & A^2B & A^3B
    \end{bmatrix}
$$

i el sistema és completament controlable si aquesta matriu té rang complet. Com que el model té quatre estats, la condició de controlabilitat completa és que el rang sigui igual a 4. Executant la comanda `rank(ctrb(A,B))` a MATLAB, es comprova que:

$$
    \text{rang}(\mathcal{C}) = 4
$$

Per tant, el model és completament controlable, la qual cosa és una bona notícia perquè significa que es pot dissenyar un controlador que estabilitzi el sistema al voltant del punt d’equilibri vertical. 

La segona propietat important és la observabilitat, que indica si l’estat complet pot reconstruir-se a partir de la sortida definida. En aquest cas, com que s’ha pres directament $Y=X$, la matriu d’observabilitat associada al parell $(A,C)$ és

$$
    \mathcal{O}
    =
    \begin{bmatrix}
    C \\\\
    CA \\\\
    CA^2 \\\\
    CA^3
    \end{bmatrix}
$$

Per verificar l’observabilitat, cal comprovar que aquesta matriu té rang complet. Executant la comanda `rank(obsv(A,C))` a MATLAB, es comprova que:

$$
    \text{rang}(\mathcal{O}) = 4
$$

de manera que el sistema és completament observable sota aquesta formulació. 

Un cop verificades la controlabilitat i l’observabilitat, convé estudiar la estabilitat en llaç obert del model linealitzat. Aquesta s’avalua a partir dels valors propis de la matriu $A$, ja que un sistema lineal continu és asimptòticament estable només si tots els seus valors propis tenen part real estrictament negativa. Per al model considerat, executem la comanda `eig(A)` a MATLAB i obtenim els valors propis:

$$
    \lambda(A) = \{0, -19.634, 6.915, -5.597\}
$$

Aquests resultats mostren que el sistema no és estable en llaç obert: la presència d’un valor propi positiu, $\lambda = 6.915$, indica l’existència d’un mode divergent, mentre que el valor propi nul reflecteix que el sistema tampoc és asimptòticament estable en la direcció associada al desplaçament horitzontal del carro. 

Per analitzar el comportament del sistema sense control, s’ha implementat una simulació en llaç obert a Simulink. En aquesta configuració, el model rep una entrada externa i no existeix cap realimentació que utilitzi les sortides per corregir el moviment del carro o de la barra. En concret, s’ha aplicat un esglaó de tensió de 1V a l’entrada del motor durant 10s. Aquesta tensió no actua directament sobre el pèndol, sinó que es transforma en una força horitzontal sobre el carro mitjançant el model del motor, d’acord amb la relació entre tensió, velocitat del carro i força aplicada.

El model en Simulink és:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/openloop.png" alt="Model en llaç obert a Simulink" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Model en llaç obert a Simulink.</div>
  </div>
</div>

I la sorta obtinguda és:

<div class="image-row">
  <div class="image-column">
    <img src="./images/sortida_openloop.png" alt="Resposta del sistema en llaç obert a un esglaó de tensió de 1V">
    <div class="caption">Figura X: Resposta del sistema en llaç obert a un esglaó de tensió de 1V.</div>
  </div>
</div>

La resposta en llaç obert mostra que, davant d’una entrada constant, el sistema no és capaç de regular-se per si sol. Tot i que algunes variables presenten oscil·lacions amortides, el carro continua desplaçant-se i no s’assoleix un equilibri controlat al voltant de la posició desitjada. Això posa de manifest que la dinàmica pròpia del pèndol invertit no és suficient per garantir un comportament estable i útil des del punt de vista del control. Precisament per aquest motiu és necessari dissenyar un controlador que utilitzi la realimentació de les variables d’estat per estabilitzar el sistema i imposar la resposta desitjada.

## 3. PID

### 3.1 Introducció al control clàssic

El control clàssic s’utilitza des de principis del segle XX, amb diferents maneres de manipular i controlar la resposta desitjada d’un vehicle. Al llarg del temps s’han desenvolupat diversos mètodes per analitzar i dissenyar sistemes de control en bucle tancat, entre els quals destaquen la transformada de Laplace, els diagrames de Bode, el criteri d’estabilitat de Nyquist i el lloc de les arrels. Mitjançant la transformada de Laplace, les equacions diferencials ordinàries es poden transformar en una funció més senzilla que relaciona la sortida del sistema amb qualsevol entrada possible. D’altra banda, els diagrames de Bode permeten estudiar aspectes fonamentals com ara els marges de guany i de fase, de manera que els mètodes de control clàssic continuen sent molt útils en el disseny de sistemes estables i eficients. 

Un dels mètodes de control en bucle tancat més importants i encara avui plenament vigents és el controlador proporcional-integral-derivatiu, conegut com a controlador PID. Aquest controlador es va desenvolupar per primera vegada l’any 1939 i, gràcies a la seva simplicitat i a la seva facilitat d’interpretació, ha estat utilitzat en una gran part dels sistemes de control del món tecnològic. El PID actua com un compensador del sistema complet, ja que transforma el senyal d’error $e$ en un nou senyal d’entrada amb l’objectiu d’obtenir la resposta desitjada.

L’error es defineix com:

$$
   e(t)=r-y
$$

on $r$ és el senyal de referència i $y$ és el senyal de sortida. 

Aquest senyal d’error entra al controlador, on és processat mitjançant les accions proporcional, integral i derivativa, cadascuna amb el seu guany corresponent. Aquests guanys es poden ajustar de manera relativament intuïtiva i, un cop ben seleccionats, permeten obtenir la resposta desitjada del sistema. Aquesta figura mostra l’esquema bàsic d'un controlador PID:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/esquema_pid.png" alt="Esquema bàsic d’un sistema de control en bucle tancat amb un controlador PID" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Esquema bàsic d’un controlador PID.</div>
  </div>
</div>

### 3.2 Ús del PID i efecte dels guanys

La funció de transferència d’un controlador PID en el domini de Laplace es pot escriure com:

$$
    G(s)=K_P+\frac{K_I}{s}+K_D s
$$

En el domini temporal, l’expressió corresponent és:

$$
    u(t)=K_P e(t)+K_I \int e(t)\,dt+K_D \frac{de(t)}{dt}
$$

En essència, el senyal d’error es multiplica per una acció proporcional, s’integra i també es deriva per generar un nou senyal d’entrada capaç de produir la resposta desitjada.  Per aconseguir una resposta òptima davant d’una entrada o d’una pertorbació, és necessari ajustar adequadament els guanys de cadascun d’aquests tres termes. Hi ha diferents mètodes per fer aquest ajust, però abans és important entendre quin efecte té cada guany sobre la resposta del sistema. Podem veure la següent taula, que resumeix l’efecte de cada guany sobre la resposta del sistema:

<div class="table-container">
  <div class="table-title">Efectes dels guanys del controlador PID</div>
  <table>
    <thead>
      <tr>
        <th>Acció</th>
        <th>Temps de pujada</th>
        <th>Sobreimpuls</th>
        <th>Temps d’establiment</th>
        <th>Error en règim permanent</th>
        <th>Estabilitat</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Augment de <math><msub><mi>k</mi><mi>p</mi></msub></math></td>
        <td>Disminueix</td>
        <td>Augmenta</td>
        <td>Petit augment</td>
        <td>Disminueix</td>
        <td>Es degrada</td>
      </tr>
      <tr>
        <td>Augment de <math><msub><mi>k</mi><mi>i</mi></msub></math></td>
        <td>Petita disminució</td>
        <td>Augmenta</td>
        <td>Augmenta</td>
        <td>Gran disminució</td>
        <td>Es degrada</td>
      </tr>
      <tr>
        <td>Augment de <math><msub><mi>k</mi><mi>d</mi></msub></math></td>
        <td>Petita disminució</td>
        <td>Disminueix</td>
        <td>Disminueix</td>
        <td>Canvi menor</td>
        <td>Millora</td>
      </tr>
    </tbody>
  </table>
  <div class="table-caption">Taula X: Efectes de l’augment dels guanys del controlador PID sobre la resposta del sistema.</div>
</div>

### 3.3 Implementació del controlador PID al pèndol invertit amb Simulink

Afegim inicialment un controlador PID al model linealitzatamb l’objectiu de visualitzar l’estructura bàsica del llaç de control i disposar d’un primer esquema de treball abans de passar al tractament del model no linealitzat. Aquest model linealitzat amb el controlador PID associat a l’angle del pèndol es mostra a continuació:

<div class="image-row">
  <div class="image-column" style="width: 85%; max-width: 950px; margin: 0 auto;">
    <img src="./images/model_pid_lineal.png" alt="Model linealitzat en Simulink amb controlador PID" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Model linealitzat en Simulink amb controlador PID associat a l’angle del pèndol.</div>
  </div>
</div>

Després implementem el model en Simulink mitjançant una arquitectura en llaç tancat on el bloc del pèndol invertit representa la planta i proporciona com a sortides els estats $x$, $\theta$, $\dot{x}$ i $\dot{\theta}$, dels quals escollim la posició del carro i l’angle del pèndol per construir el senyal d’error respecte de l’estat desitjat; aquest error s’introdueix en dos controladors PID, un associat a la posició i l’altre a l’angle, i les seves sortides es combinen per generar la comanda de control. Els valors dels guanys $K_P$, $K_I$ i $K_D$ s’han ajustat mitjançant, l'ajustador automàtic de PID de Simulink i després retocat manualment per obtenir una resposta més ràpida i amb menys sobreimpuls.  La implementació del model no linealitzat amb els controladors PID associats a la posició i a l’angle del pèndol es mostra a continuació:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/model_pid.png" alt="Model en Simulink amb controlador PID" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Model en Simulink amb controladors PID.</div>
  </div>
</div>

Pel PID associat a l'angle del pèndol, s’han seleccionat els guanys:

<div class="table-container">
  <div class="table-title">Guanys PID obtinguts per al control de l’angle</div>
  <table style="width: 260px; table-layout: fixed;">
    <colgroup>
      <col style="width: 90px;">
      <col style="width: 170px;">
    </colgroup>
    <thead>
      <tr>
        <th>Paràmetre</th>
        <th>Valor</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><math><msub><mi>k</mi><mi>p</mi></msub></math></td>
        <td>62.5903</td>
      </tr>
      <tr>
        <td><math><msub><mi>k</mi><mi>i</mi></msub></math></td>
        <td>63.8958</td>
      </tr>
      <tr>
        <td><math><msub><mi>k</mi><mi>d</mi></msub></math></td>
        <td>0</td>
      </tr>
    </tbody>
  </table>
  <div class="table-caption">Taula X: Valors dels guanys del controlador PID ajustat per al control de l’angle del pèndol.</div>
</div>

Per al PID associat a la posició del carro, s’han seleccionat els guanys:

<div class="table-container">
  <div class="table-title">Guanys PID obtinguts per al control de la posició</div>
  <table style="width: 260px; table-layout: fixed;">
    <colgroup>
      <col style="width: 90px;">
      <col style="width: 170px;">
    </colgroup>
    <thead>
      <tr>
        <th>Paràmetre</th>
        <th>Valor</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><math><msub><mi>k</mi><mi>p</mi></msub></math></td>
        <td>-1.573</td>
      </tr>
      <tr>
        <td><math><msub><mi>k</mi><mi>i</mi></msub></math></td>
        <td>-0.022984</td>
      </tr>
      <tr>
        <td><math><msub><mi>k</mi><mi>d</mi></msub></math></td>
        <td>-2.1018</td>
      </tr>
    </tbody>
  </table>
  <div class="table-caption">Taula X: Valors dels guanys del controlador PID ajustat per al control de la posició horitzontal del carro.</div>
</div>

I, partint de $\theta = \pi - (\pi * 0.1)$ com a condició inicial per a l’angle del pèndol i $x = 0.2$ com a condició inicial per a la posició del carro, s’obté la següent resposta:

<div class="image-row">
  <div class="image-column">
    <img src="./images/resultats_pid.png" alt="Resposta del sistema amb controlador PID" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Resposta del sistema amb controlador PID.</div>
  </div>
</div>

En aquest cas, i a diferència de la resposta en llaç obert, el sistema és capaç d’estabilitzar-se al voltant del punt d’equilibri vertical. Tot i que es poden observar algunes oscil·lacions inicials, aquestes s’amortitzen ràpidament i el sistema aconsegueix una posició estable amb un error molt petit respecte de la posició desitjada.

## 4. Controlador LQR

### 4.1 Introducció al control òptim

Un controlador LQR és un regulador òptim per a sistemes lineals en espai d’estats que calcula automàticament el guany de realimentació $K$ per estabilitzar el sistema amb un compromís entre precisió i esforç de control. Funciona triant l’entrada de control $u=-Kx$, de manera que la dinàmica en bucle tancat passa de $A$ a $A-BK$, i el guany $K$ es calcula minimitzant una funció de cost quadràtica. Esquemàticament, el controlador LQR es pot representar de la següent manera:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/esquema_lqr.png" alt="Esquema bàsic d’un controlador LQR" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Esquema bàsic d’un controlador LQR.</div>
  </div>
</div>

LQR és una llei de control òptim que utilitza un índex de rendiment quadràtic, o funció de cost, per trobar els factors de ponderació òptims $Q$ i $R$ i obtenir la matriu de guany LQR $K$. Per a un sistema lineal invariant en el temps, una llei de control òptima busca una entrada que permeti al sistema seguir una trajectòria òptima predeterminada i, al mateix temps, minimitzar la funció de cost. La dinàmica del sistema s’expressa com: 

$$
    \dot{x}=g(x(t),u(t),t)
$$

Per al control òptim, el sistema requereix una funció de cost o criteri de rendiment:ç

$$
   J=\int_{t_0}^{t_1} h(x(t),u(t),t)\,dt
$$

L’equació de Hamilton-Jacobi es pot resoldre utilitzant un criteri de rendiment quadràtic per obtenir els paràmetres necessaris per calcular un guany òptim $K$.
Definint la funció següent:

$$
   f(x,t)=\min \int_{t_0}^{t_1} h(x,u)\,dt
$$

l’equació de Hamilton-Jacobi pren la forma:

$$
    \frac{\partial f}{\partial t}
    =
    -\min \left[
    h(x,u)+
    \left(\frac{\partial f}{\partial x}\right)^T g(x,u)
    \right]
$$

Si l’equació és quadràtica, l’índex de rendiment quadràtic es pot escriure com:

$$
    J=\int_{0}^{\infty}
    \left(
    x^TQx+u^TRu
    \right)dt
$$

Substituint les equacions, s’obté: 
$$
    \frac{\partial f}{\partial t}
    =
    -\min \left[
    x^TQx+u^TRu+
    \left(\frac{\partial f}{\partial x}\right)^T(Ax+Bu)
    \right]
$$

Un cop trobat el guany LQR, la nova entrada de control es defineix com:

$$
    u=-Kx
$$

on $K$ es defineix com:

$$
    K=R^{-1}B^TP
$$

i la matriu $P$ s’obté resolent l’equació algebraica de Riccati: 

$$
   PA+A^TP+Q-PBR^{-1}B^TP=0
$$

Com que totes les altres matrius són conegudes o han estat definides prèviament, la solució del guany LQR es pot calcular directament. 

Les matrius $Q$ i $R$ són matrius simètriques definides positives de dimensions $l \times l$ i $m \times m$, respectivament, i representen els pesos assignats als estats i a les entrades del sistema. Si observem la funció de cost:

$$
    J=\int_{0}^{\infty}
    \left(
    x^TQx+u^TRu
    \right)dt
$$

Les matrius $Q$ i $R$ es poden ajustar de manera independent per definir el compromís desitjat entre qualitat de la regulació i esforç de control.  En el cas del pèndol invertit, la matriu $Q$ pondera els estats del model linealitzat, és a dir, la posició del carro, l’angle del pèndol, la velocitat del carro i la velocitat angular del pèndol. Quan augmenta el pes associat a un estat dins de $Q$, la funció de cost penalitza més les desviacions d’aquella variable i el controlador tendeix a corregir-la amb més intensitat. 
De manera anàloga, la matriu $R$ pondera la variable de control.
Si el model s’ha formulat amb voltatge com a entrada, aleshores $R$ penalitza la tensió aplicada al motor, de manera que valors elevats de $R$ tendeixen a limitar l’amplitud del senyal de control i produeixen una resposta més suau.  En canvi, valors més petits de $R$ permeten una actuació més agressiva, a costa d’un ús més intens de l’actuador.

Tanmateix, les matrius $Q$ i $R$ no proporcionen directament el guany del controlador. Un cop fixades aquestes ponderacions, el problema LQR es resol mitjançant l’equació algebraica de Riccati, la qual permet calcular la matriu $P$. A partir d’aquesta solució, el guany òptim s’obté com $K=R^{-1}B^TP$, on les matrius $A$ i $B$ corresponen al model final del sistema, en aquest cas formulat amb voltatge com a entrada.

En el nostre cas, les matrius $Q$ i $R$ s’han determinat a partir d’un procés iteratiu de sintonització sobre el model linealitzat del pèndol invertit amb voltatge com a entrada. S’ha pres com a punt de partida una matriu $Q$ diagonal i un valor escalar de $R$, utilitzant com a referència l’exemple del material docent, i posteriorment s’han ajustat aquests pesos en funció de l’estabilització de l’angle, del desplaçament del carro i del nivell de voltatge requerit per l’actuador.

En MATLAB, la funció `lqr` permet calcular directament el guany $K$ a partir de les matrius $A$, $B$, $Q$ i $R$. Per al model del pèndol invertit, s’han seleccionat les següents matrius de ponderació:

```m
Q = diag([q1 q2 q3 q4]);   % pesos dels estats
R = r;                     % pes del voltatge d'entrada
K = lqr(A,B,Q,R);
```

En aquest codi, la funció `lqr(A,B,Q,R)` resol internament l’equació algebraica de Riccati associada al sistema i retorna el guany òptim $K$. En aquest cas, s’han seleccionat els pesos següents:

$$
    Q = \begin{bmatrix}
    1200 & 0 & 0 & 0 \\\\
    0 & 1500 & 0 & 0 \\\\
    0 & 0 & 0 & 0 \\\\
    0 & 0 & 0 & 0
    \end{bmatrix},
    \qquad
    R = 0.05
$$

### 4.2 Simulació del sistema no linealitzat amb el controlador LQR en Simulink

Un cop obtingut el guany $K$, s’ha implementat el controlador LQR al model no linealitzat del pèndol invertit a Simulink. En aquesta implementació, el bloc del pèndol invertit representa la planta i proporciona com a sortides els estats $x$, $\theta$, $\dot{x}$ i $\dot{\theta}$, dels quals escollim la posició del carro i l’angle del pèndol per construir el senyal d’error respecte de l’estat desitjat; aquest error s’introdueix en un bloc de producte on es multiplica pel guany $K$ per generar la comanda de control. El model en Simulink amb el controlador LQR es mostra a continuació:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/model_lqr.png" alt="Model en Simulink amb controlador LQR" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Model en Simulink amb controlador LQR.</div>
  </div>
</div>

Partint de les mateixes condicions inicials que en el cas del PID, és a dir, $\theta = \pi - (\pi * 0.1)$ com a condició inicial per a l’angle del pèndol i $x = 0.2$ com a condició inicial per a la posició del carro, s’obté la següent resposta:

<div class="image-row">
  <div class="image-column">
    <img src="./images/resultats_lqr.png" alt="Resposta del sistema amb controlador LQR" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Resposta del sistema amb controlador LQR.</div>
  </div>
</div>

El voltatge consumit per aquest model és, si limitem el motor a un voltatge màxim de 10V, el següent:

<div class="image-row">
  <div class="image-column">
    <img src="./images/voltatge_lqr.png" alt="Voltatge consumit pel controlador LQR" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Voltatge consumit pel controlador LQR.</div>
  </div>
</div>

És a dir, amb un guany LQR ben ajustat, el sistema és capaç d’estabilitzar-se al voltant del punt d’equilibri vertical, amb una resposta ràpida i amb un voltatge màxim de 10V. En comparació amb el controlador PID, el LQR mostra una resposta més suau i menys oscil·lacions inicials, a costa d’un ús més intensiu de l’actuador en els primers instants.

## 5. Filtre de Kalman

En les aplicacions reals de control, no sempre és possible mesurar directament tots els estats del sistema. A més, les mesures disponibles solen estar contaminades per soroll de sensor, i el model matemàtic del sistema conté incerteses degudes a pertorbacions externes o a simplificacions del model físic. En aquestes condicions, el controlador LQR dissenyat a l'apartat anterior no es pot aplicar directament, ja que requereix el coneixement de tots els estats. Per resoldre aquest problema s'introdueix el **Filtre de Kalman**, un estimador òptim que, a partir de l'entrada de control i les mesures disponibles —ambdues contaminades per soroll—, reconstrueix una estimació dels estats del sistema que minimitza l'error quadràtic mig de l'estimació.

### 5.1 Fonaments teòrics

Suposem que tenim un estat estimat $\hat{x}$ que pretén reproduir el vector d'estat real $x$. Si el sistema és:

$$
\dot{x} = Ax + Bu
$$

l'error d'estimació es defineix com:

$$
e = x - \hat{x}
$$

i la seva dinàmica és:

$$
\dot{e} = A\,e
$$

Si la matriu $A$ és asimptòticament estable, l'error convergeix a zero per a qualsevol condició inicial. En canvi, si $A$ és inestable —com és el cas del pèndol invertit—, l'estimació divergeix. Per corregir-ho, s'introdueix un guany d'observador $L$ que alimenta la diferència entre la sortida mesurada i la sortida estimada:

$$
\dot{\hat{x}} = A\hat{x} + Bu + L(y - \hat{y})
\qquad
\hat{y} = C\hat{x}
$$

Amb aquesta correcció, la dinàmica de l'error passa a ser:

$$
\dot{e} = (A - LC)\,e
$$

i es pot fer asimptòticament estable escollint $L$ adequadament. Aquesta estructura es denomina **observador d'ordre complet**.

Per al Filtre de Kalman, que és un estimador òptim respecte d'un observador genèric, el model del sistema inclou explícitament els termes de soroll:

$$
\dot{\hat{x}} = A\hat{x} + Bu + Gw(t)
\qquad
\hat{y} = C\hat{x} + v(t)
$$

on $w(t)$ és el soroll de procés i $v(t)$ és el soroll de mesura, ambdós de tipus gaussià de mitjana zero, amb matrius de covariança:

$$
S_w(\omega) = Q_N, \qquad S_v(\omega) = R_N
$$

El guany de Kalman $L$ s'obté resolent un problema dual al del LQR: en lloc de minimitzar l'esforç de control, es minimitza la covariança de l'error d'estimació. Analíticament, el guany òptim és:

$$
L = P_e C^T R_N^{-1}
$$

on $P_e$ és la solució de l'equació algebraica de Riccati associada al problema d'estimació:

$$
A P_e + P_e A^T + G Q_N G^T - P_e C^T R_N^{-1} C P_e = 0
$$

En la pràctica, aquest guany es pot calcular a MATLAB aprofitant la dualitat entre el problema de control LQR i el d'estimació. Si es defineix el sistema transposat $(A^T, C^T)$ com a planta, el problema d'estimació és equivalent a trobar el guany LQR òptim per a aquest sistema dual:

```matlab
L = lqr(A', C', Vd, Vn)';
```

on `Vd` és la covariança del soroll de procés ($Q_N$) i `Vn` és la covariança del soroll de mesura ($R_N$).

### 5.2 Aplicació al pèndol invertit

1. Observabilitat del sistema:

    Abans de dissenyar qualsevol observador, cal verificar que el sistema és **observable**, és a dir, que tots els estats poden ser reconstruïts a partir de les sortides. La condició necessària i suficient és que la matriu d'observabilitat tingui rang màxim:

    $$
        \mathcal{O} = \begin{bmatrix} C \\ CA \\ CA^2 \\ CA^3 \end{bmatrix}, \qquad \text{rang}(\mathcal{O}) = n = 4
    $$

    Donat que al model linealitzat la matriu de sortida és $C = I_4$ (es mesuren tots quatre estats), l'observabilitat és trivial i el rang resulta 4, tal com confirma MATLAB:

    ```m
    Rank observabilitat: 4 / 4
    ```

    Per tant, el sistema és completament observable i l'estimador es pot implementar correctament.

2. Configuració de les matrius de covariança:

    Les matrius de covariança $Q_N$ i $R_N$ regulen el compromís entre confiar en el model del sistema o en les mesures dels sensors. Valors grans de $Q_N$ indiquen un model incert i forcen l'estimador a seguir les mesures. Valors grans de $R_N$ indiquen sensors sorollosos i forcen l'estimador a confiar més en la predicció del model.

    En la implementació d'aquest treball, s'han adoptat valors iguals i moderats per a ambdues matrius, reflectint un nivell de confiança equivalent en el model i en els sensors:

    $$
        Q_N = 0.001 \cdot I_4, \qquad R_N = 0.001 \cdot I_4
    $$

    ```matlab
    Vd = 0.001 * eye(n);   % Covariança del soroll de procés
    Vn = 0.001 * eye(4);   % Covariança del soroll de mesura
    L  = lqr(A', C', Vd, Vn)';
    ```

3. Guany de Kalman obtingut:

    El guany $L$ obtingut numèricament és:

    $$
        L =
        \begin{bmatrix}
        1.0035 &  0.0143 &  0.0053 &  0.0579 \\
        0.0143 &  0.4472 &  0.0988 &  2.3379 \\
        0.0053 &  0.0988 &  0.0510 &  0.4500 \\
        0.0579 &  2.3379 &  0.4500 & 15.1112
        \end{bmatrix}
    $$

    Les columnes d'$L$ associades a $\theta$ i $\dot{\theta}$ (columnes 2 i 4) presenten valors notablement superiors als de les columnes de $x$ i $\dot{x}$. Això és consistent amb la dinàmica del sistema: l'angle del pèndol és l'estat més crític i inestable, i per tant requereix una correcció estimada més agressiva.

4. Valors propis de l'observador:

    La velocitat de convergència de l'estimador ve determinada pels valors propis de la matriu $A - LC$:

    ```matlab
    Valors propis A−LC:  −1.0036,  −18.988,  −7.526 ± 0.922i
    ```

    Tots quatre valors propis tenen part real estrictament negativa, cosa que garanteix que l'estimador és asimptòticament estable i que l'error d'estimació convergeix a zero. A més, el valor propi dominant és $-1.0036$, significativament més ràpid que la dinàmica inestable del sistema en llaç obert (que presentava un pol positiu a $+6.92$), de manera que l'observador pot seguir el sistema sense retard significatiu.

### 5.3 Implementació a Simulink

El diagrama implementat a Simulink per a l'etapa del Filtre de Kalman s'il·lustra a la figura següent. S'hi distingeixen tres parts principals: la planta no lineal del pèndol, el soroll afegit a les sortides, i el bloc estimador del Filtre de Kalman.

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/diagrama_kalman.jpg" alt="Diagrama Simulink del Filtre de Kalman" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Diagrama Simulink de l'estimació d'estat amb el Filtre de Kalman. La planta no lineal rep com a entrada la força generada pel subsistema <code>Voltage_to_Force</code>. Les sortides s'afegeix soroll de mesura i de procés i s'introdueix al bloc <code>Kalman Filter</code>, que reconstrueix els quatre estats estimats $\hat{x}$, $\hat{\theta}$, $\hat{\dot{x}}$ i $\hat{\dot{\theta}}$.</div>
  </div>
</div>

Concretament, el diagrama conté els elements següents:

- **`Voltage_to_Force`**: subsistema que converteix la tensió d'entrada en la força equivalent aplicada al carro, incorporant la dinàmica elèctrica del motor (resistència d'armadura, constant de parell i constant de força contraelectromotriu).
- **`Soroll de procés`**: pertorbació gaussiana afegida directament a la força que rep la planta, que modela les incerteses del model físic.
- **`Inverted Pendulum System`**: planta no lineal que integra les equacions del moviment i proporciona els quatre estats reals $x$, $\theta$, $\dot{x}$ i $\dot{\theta}$.
- **`Soroll de mesura`**: soroll gaussià afegit a les sortides de la planta, que modela el soroll dels sensors.
- **`Kalman Filter`**: observador que rep l'entrada de control $u$ i les mesures sorolloses $y$, i estima el vector d'estat $\hat{x}$.
- **Blocs de comparació**: permeten visualitzar simultàniament l'estat real i l'estat estimat per a cadascuna de les quatre variables.

Les condicions inicials del sistema per a la simulació han estat $x_0 = [0.2,\; \pi - 0.1\pi,\; 0,\; 0]^T$, coincidint amb les emprades a les seccions anteriors.

### 5.4 Resultats de la simulació

La resposta de la simulació es mostra a la figura següent, on per a cada estat s'ha representat en vermell el valor real i en blau el valor estimat pel Filtre de Kalman.

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/output_kalman.jpg" alt="Resultats del Filtre de Kalman" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Comparació entre l'estat real (vermell) i l'estimació del Filtre de Kalman (blau) per als quatre estats del sistema: posició del carro $x$, angle del pèndol $\theta$, velocitat del carro $\dot{x}$ i velocitat angular del pèndol $\dot{\theta}$. Simulació de 10 s amb condicions inicials $x_0 = [0.2,\; 0.9\pi,\; 0,\; 0]^T$ i soroll de procés i de mesura amb covariança $0.001\,I_4$.</div>
  </div>
</div>

S'observa que, en tots quatre estats, l'estimació del Filtre de Kalman segueix amb bona fidelitat la trajectòria real del sistema, tot i que el llaç no té controlador i, per tant, la resposta és en llaç obert —i divergent—. En detall:

- **Posició del carro $x$**: l'estimació (blava) superposa gairebé perfectament el valor real (vermell). El carro deriva de manera creixent en absència de control, cosa esperada en llaç obert.
- **Angle del pèndol $\theta$**: les dues corbes presenten una discrepància inicial clara durant els primers instants, deguda al transitori de convergència de l'estimador. A partir d'aproximadament $t = 4\,\text{s}$ la diferència es redueix considerablement i les corbes convergeixen. Les oscil·lacions de gran amplitud dels primers segons reflecteixen la inestabilitat natural del pèndol sense control actiu.
- **Velocitat del carro $\dot{x}$**: l'estimació segueix amb notable fidelitat la trajectòria real un cop superat el transitori inicial. El soroll de mesura és visible a la corba real.
- **Velocitat angular $\dot{\theta}$**: d'entre tots els estats, és el que presenta el transitori inicial de major amplitud. Malgrat això, a partir de $t \approx 4\,\text{s}$ l'estimació convergeix bé al valor real.

En conjunt, els resultats confirmen que el Filtre de Kalman dissenyat és capaç d'estimar satisfactòriament l'estat del pèndol invertit en presència de soroll tant de procés com de mesura. El transitori inicial s'explica per la diferència entre les condicions inicials reals del sistema ($x_0 \neq 0$) i les condicions inicials de l'estimador, que s'inicialitza a zero. Un cop transcorregut aquest transitori, l'estimador s'adap a la trajectòria real i la segueix amb un error reduït. Això és precisament la base que permetrà, a l'apartat següent, combinar l'estimador amb el controlador LQR per obtenir el controlador LQG complet.

<div class="page-break"></div>

## 6. Controlador LQG

implementaico de tot junt: controlador LQR + filtre de Kalman i executar i veure resultats

## 7. Extensions

### 7.1 Primera extensió

En aquesta extensió s’ha estudiat com afecta al comportament del pèndol invertit la presència de diferents nivells de fricció en el desplaçament horitzontal de la plataforma. El model dinàmic base ja incorpora un terme de fricció viscosa associat al moviment del carro, representat pel coeficient $c$, que en el sistema utilitzat té valor $c = 0.63$ i apareix a les equacions del moviment com una força oposada a la velocitat $\dot{x}$. L’objectiu d’aquesta extensió no és substituir el model original, sinó ampliar-lo amb una contribució addicional que permeti representar diferents condicions equivalents de contacte entre la plataforma i la superfície de desplaçament. Aquesta hipòtesi és coherent amb el model ja emprat, ja que es manté la idea de fricció viscosa lineal i no s’introdueixen no linealitats addicionals que compliquin innecessàriament l’anàlisi i la simulació.

Per modelar aquest efecte s’ha afegit una força externa de fregament proporcional a la velocitat del carro i en direcció contrària al moviment, definida com $F_f = -c_f \dot{x}$, on $c_f$ on $c_f$ és un nou coeficient de fricció addicional. D’aquesta manera, la força total resistiva associada al moviment de la plataforma es pot interpretar com la suma de la fricció base del model i la fricció afegida en aquesta extensió:

$$
    F_{\text{total}} = -c \dot{x} - c_f \dot{x} = -(c + c_f) \dot{x}
$$

A nivell físic, aquesta extensió es pot entendre com una representació simplificada de superfícies amb diferents graus de resistència al moviment. No es pretén descriure amb detall el contacte real entre rodes, guies o superfícies, sinó estudiar de manera controlada com una variació de la fricció afecta l’estabilització del sistema, la resposta i l’esforç de control necessari per mantenir el pèndol prop de la posició invertida.

#### 7.1.1 Implementació del model

La implementació s’ha realitzat en Simulink afegint un bloc extern que genera la força de fricció $F_f$ a partir de la velocitat de la plataforma. Per fer-ho, s’ha pres la variable $\dot{x}$ de la sortida del model, s’ha multiplicat pel guany $-c_f$ i el resultat s’ha incorporat al sumatori de forces d’entrada del sistema, de manera que la fricció afegida sempre actua oposant-se al sentit del moviment. Aquesta forma d’implementació permet mantenir intacte el model base i, al mateix temps, variar de manera senzilla el nou paràmetre $c_f$. Això facilita la comparació entre diferents escenaris, ja que l’únic element que canvia entre simulacions és la magnitud de la fricció afegida. El model en Simulink amb la fricció addicional es mostra a continuació:

<div class="image-row">
  <div class="image-column" style="width: 100%; max-width: 950px; margin: 0 auto;">
    <img src="./images/model_friccio.png" alt="Model en Simulink amb fricció addicional" style="width: 100%; height: auto; display: block;">
    <div class="caption">Figura X: Model en Simulink amb fricció addicional.</div>
  </div>
</div>

Els valors de $c_f$ seleccionats per a les simulacions han estat:

<div class="table-container">
  <div class="table-title">Valors escollits del coeficient de fricció addicional</div>
  <table style="width: 260px; table-layout: fixed;">
    <colgroup>
      <col style="width: 90px;">
      <col style="width: 170px;">
    </colgroup>
    <thead>
      <tr>
        <th><math><msub><mi>c</mi><mi>f</mi></msub></math></th>
        <th>Justificació</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>0</td>
        <td>cas base</td>
      </tr>
      <tr>
        <td>0.3</td>
        <td>fricció baixa</td>
      </tr>
      <tr>
        <td>0.63</td>
        <td>mateixa magnitud (doble)</td>
      </tr>
      <tr>
        <td>1.26</td>
        <td>doble magnitud (triple)</td>
      </tr>
      <tr>
        <td>5</td>
        <td>cas extrem</td>
      </tr>
    </tbody>
  </table>
  <div class="table-caption">Taula X. Valors del coeficient de fricció addicional <math><msub><mi>c</mi><mi>f</mi></msub></math> utilitzats a l’extensió del model.</div>
</div>

#### 7.1.2 Resultats 

Pel cas base, és a dir, sense fricció addicional ($c_f = 0$):

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_01.png" alt="Resposta del sistema sense fricció addicional">
    <div class="caption">Figura X: Resposta del sistema sense fricció addicional.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_02.png" alt="Resposta del sistema amb fricció addicional elevada">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional</div>
  </div>
</div>

Aquest és el cas base. Veiem que la posició del carro $x$ presenta un petit desplaçament inicial, però convergeix cap a $0$, mentre que l’angle $\theta$ tendeix cap als $180^\circ$, que és la posició invertida de referència. També es veu que tant la velocitat $\dot{x}$ com la velocitat angular $\dot{\theta}$ tenen un pic transitori al començament i després decauen fins a valors propers a zero, cosa que indica que el pèndol s'estabilitza. A la gràfica de voltatge també s’observa una acció inicial intensa, necessària per corregir ràpidament la desviació inicial, seguida d’una disminució progressiva fins a pràcticament zero. En conjunt, el cas base mostra una resposta ràpida, amb un sobreimpuls moderat, però amb bona estabilització final.

Pel cas amb fricció addicional baixa ($c_f = 0.3$):

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_03.png" alt="Resposta del sistema amb fricció addicional baixa">
    <div class="caption">Figura X: Resposta del sistema amb fricció addicional baixa.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_04.png" alt="Resposta del sistema amb fricció addicional baixa">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional baixa</div>
  </div>
</div>

En comparació amb el cas base, aquest cas mostra un comportament molt similar i no s’hi observen canvis qualitatius importants en l’estabilització del sistema. El controlador continua portant la posició del carro cap a $0$ i l’angle cap als $180^\circ$ en un temps semblant, mantenint un transitori inicial i una estabilització final correctes.

Pel cas amb fricció addicional mitjana, sent el doble del coeficient de fricció base ($c_f = 0.63$):

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_05.png" alt="Resposta del sistema amb fricció addicional elevada">
    <div class="caption">Figura X: Resposta del sistema amb fricció addicional elevada.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_06.png" alt="Resposta del sistema amb fricció addicional elevada">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional elevada</div>
  </div>
</div>

En comparació amb el cas base, aquest cas continua estabilitzant correctament el sistema i manté una resposta molt semblant en la posició, l’angle i les seves derivades, sense canvis qualitatius importants en la convergència final. La diferència més clara apareix en l’acció del motor, ja que el pic negatiu de voltatge es redueix respecte del cas base i passa a situar-se al voltant de $-8$ V, cosa que indica una menor demanda instantània de voltatge a l'inici. Això suggereix que, en aquest cas amb fricció addicional de doble magnitud, aquesta, ajuda a esmorteir parcialment la resposta inicial i fa que el controlador no necessiti una correcció tan agressiva com en el cas base. Tot i aquesta reducció en el pic de voltatge, el sistema conserva una bona estabilització final, amb $x \to 0$, $\theta \to 180^\circ$ i velocitats finals properes a zero.

Pel cas amb fricció addicional més elevada, sent el triple del coeficient de fricció base ($c_f = 1.26$):

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_07.png" alt="Resposta del sistema amb fricció addicional més elevada">
    <div class="caption">Figura X: Resposta del sistema amb fricció addicional més elevada.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_08.png" alt="Resposta del sistema amb fricció addicional més elevada">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional més elevada</div>
  </div>
</div>

En aquest cas, el sistema continua estabilitzant-se correctament i es torna a observar una reducció del voltatge màxim requerit en el transitori inicial. Aquest fet confirma que l’augment de la fricció ajuda a esmorteir la resposta i redueix l’esforç instantani que ha de fer el controlador per corregir la desviació inicial. Per tant, la fricció continua sent beneficiosa, ja que no empitjora apreciablement el temps d’estabilització, però sí que redueix la demanda instantània de voltatge i la velocitat necessària durant el transitori inicial si es compara amb el cas base.

Pel cas amb fricció addicional extrema ($c_f = 5$):

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_09.png" alt="Resposta del sistema amb fricció addicional extrema">
    <div class="caption">Figura X: Resposta del sistema amb fricció addicional extrema.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_10.png" alt="Resposta del sistema amb fricció addicional extrema">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional extrema</div>
  </div>
</div>

Aquí el comportament canvia radicalment, perquè el sistema ja no convergeix cap a l’equilibri desitjat sinó que manté una oscil·lació persistent i un desplaçament continu del carro. La posició $x$ creix gairebé de manera monòtona al llarg de tota la simulació, l’angle $\theta$ oscil·la amb una amplitud encara apreciable, i la velocitat $\dot{x}$ no decau cap a zero sinó que es manté al voltant d’un valor positiu. Això contrasta amb la resta de casos, on el controlador aconseguia portar el sistema cap a $x=0$, $\theta=180^\circ$ i velocitats finals pròximes a zero en pocs segons. La gràfica de voltatge ho reforça encara més, perquè el voltatge queda constant al valor màxim, al voltant de $10$ V, durant tota la simulació. Això indica que el controlador està treballant en saturació i que, fins i tot aplicant l’acció màxima, no és capaç de recuperar una estabilització comparable a la del cas base. Provem de donar-li un motor més potent, amb un voltatge màxim de 24V:

<div class="image-row">
  <div class="image-column">
    <img src="./images/ext1_11.png" alt="Resposta del sistema amb fricció addicional extrema i motor més potent">
    <div class="caption">Figura X: Resposta del sistema amb fricció addicional extrema i motor més potent.</div>
  </div>

  <div class="image-column">
    <img src="./images/ext1_12.png" alt="Voltatge del sistema amb fricció addicional extrema i motor més potent">
    <div class="caption">Figura X: Voltatge del sistema amb fricció addicional extrema i motor més potent</div>
  </div>
</div>

En augmentar la tensió màxima disponible del motor fins a $24$ V, el sistema aconsegueix tornar a estabilitzar-se. Això mostra que la pèrdua de rendiment observada en el cas anterior estava fortament relacionada amb la saturació de l’acció de control, ja que el límit de tensió disponible no era suficient per generar la força requerida. Amb un marge més gran d’actuació, el controlador recupera la capacitat de portar el carro i el pèndol cap a l’equilibri desitjat, amb un comportament similar al cas base.

### 7.1.3 Conclusions de la primera extensió

Aquesta extensió mostra que una fricció addicional moderada no perjudica l’estabilització del sistema i, fins i tot, pot ajudar a esmorteir la resposta inicial i reduir la demanda instantània de voltatge del motor. En canvi, quan la fricció és massa elevada, el controlador deixa de tenir prou autoritat de control i el sistema entra en saturació, perdent la capacitat d’estabilitzar-se amb el límit de tensió inicial.

Des d’un punt de vista industrial, aquest resultat és important perquè molts sistemes reals treballen sobre superfícies amb resistències al moviment diferents. Si el sistema ha de funcionar sobre terres més durs o amb més fregament, cal preveure un actuador amb més marge de tensió o parell, i possiblement reajustar el controlador; en canvi, amb superfícies més favorables, el sistema pot estabilitzar-se correctament amb menys esforç de control.

### 7.2 Segona extensió

## 8. Conclusions

<div class="page-break"></div>

## 9. Referències

<a name="bib1"></a> [1]: Singh, J. *A Short Notes on Inverted Pendulum: Model Based Control Design for Swing-up & Balance the Inverted Pendulum*. Sardar Vallabhbhai National Institute of Technology (SVNIT) i Indian Institute of Technology (IIT) Jodhpur. Disponible a: [Google Drive](https://drive.google.com/file/d/1W2v3wKXBVW4FohB33kTv8iBEiOFgoS8d/view)

<a name="bib2"></a> [2]: Ganbold, A. (2023). *Design of a Linear Quadratic Gaussian Control System for a Thrust Vector Controlled Rocket*. San Jose State University (SJSU). Disponible a: [SJSU AE Docs](https://www.sjsu.edu/ae/docs/project-thesis/Alex.Ganbold-Su23.pdf)
