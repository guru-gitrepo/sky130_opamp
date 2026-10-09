## Design of two stage Op-amp using gm/ID technique
### Specifications
|Parameter  |  Value        | Unit  |
|-----------|:------------: |:-----:|
|$V_{DD}$   |   1.8         | V     |
|$C_L$      |   10          |pF     |
|GBW        |   $\ge5$      |MHz    |
|PM         |   $\ge60$     |°      |
|SR         |   $\ge2$      |V/µs   |
|Output     |   0.2 to 1.6  |V      |
|ICMR       |   0.4 to 1.4  |V      |
|$I_Q$      |   $\le100$    | µA    |

### Design steps
1. Miller capacitance
For 60° Phase margin, $C_C\ge0.2\times C_L$

$C_C=2pF$

2. Tail current source
   
$$I_{tail}=SR\times C_C$$

$$ \frac{2\times 2p}{\mu }=4\mu A$$

$$\omega_{gbw}=\frac{g_{m1}}{C_C}$$

$$g_{m1}=2\times 5M \times 2\pi=62.83\mu S$$

For moderate inversion,

$$\frac{g_m}{I_{D1}}=14$$

$$I_{D1}=\frac{62.83\mu}{14}\approx 4.5\mu A$$

Tail current source $=2\times I_{D1}=10\mu A$

GBW dominates SR requirement.

3. Second stage
