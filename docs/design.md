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

3. Second stage current

For 60° PM, 

$$\omega_2 \approx \frac{g_{m6}}{C_L}$$

$g_{m6}$ must push non dominant pole beyond 2.2 times $\omega_{gbw}$

$$g_{m6}\ge 2.2\times \frac{g_{m1}}{C_C} C_L= 2.2\times \frac{62.83\mu}{2p}10p\approx 691\mu S$$

Select $(\frac{g_m}{I_D})_6=12$ for strong or moderate inversion for speed/area trade-off.

$$I_{D6}=\frac{g_{m6}}{12}=\frac{691\mu}{12}=57.6\mu A$$

Check $I_Q=I_{tail}+I_{D6}=10\mu +57.6\mu\le100\mu A$.

4. Map output swing to $\frac{g_m}{I_D}$

Select L and $\frac{g_m}{I_D}$ based on operating regions.

For output swing between 0.2V to 1.6V, $M_6$ needs $V_{dsat}\le 0.2V$.

Choice of $(\frac{g_m}{I_D})_6\approx 10-12$ yields $\approx \frac{2}{10-12}\approx 160-200mV$

 $M_7$ needs $V_{dsat}\le V_{DD}-1.6=0.2V$. So, select  $(\frac{g_m}{I_D})_7=10-12$

 5. Map ICMR to  $\frac{g_m}{I_D}$

$$ICMR_{max}=1.4V$$

$$V_{in,max}=V_{DD}-V_{sdsat,tail}-|V_{tp}|+V_{dssat2}$$

Select  $(\frac{g_m}{I_D})_{tail}\approx 10$.

$$ICMR_{min}=0.4V$$

$$V_{in,min}=V_{ds3}+|V_{gs1}|=V_{dssat3}+|V_{tp1}|+V_{dssat1}$$

Keep $M_1$, $M_2$ in moderate inversion, Select  $(\frac{g_m}{I_D})_{1,2}\approx 12-15$.

6. DC gain check

$$A_V=A_{V1}\times A_{V2}=\left[\left(\frac{g_{m1}}{I_{D1}}\right) \left(\frac{g_{ds1}}{I_{D1}}+\frac{g_{ds3}}{I_{D1}}\right)^{-1}\right] \left[\left(\frac{g_{m6}}{I_{D6}}\right) \left(\frac{g_{ds6}}{I_{D6}}+\frac{g_{ds7}}{I_{D6}}\right)^{-1}\right]$$

Since $\frac{g_m}{I_D} \propto \frac{1}{\lambda V_{DS}} \propto \frac{1}{L}$

* Select L > $L_{min}$
* Check lookup table, select $\frac{g_m}{g_{ds}}\ge 35-40$ per stage

### Transistor size Matrix
Once $\frac{g_m}{I_D}$, $I_D$, L are fixed extract $\frac{I_D}{W} from table

$$ W=\frac{I_D}{J_D\left(\frac{g_m}{I_D},L\right)}$$

where $J_D=\frac{I_D}{W}$

|Transistor   |  MOS type   |Target $\frac{g_m}{I_D}$ ($V^{-1}$)  |   $I_D$ ($\mu A$)  |   L ($\mu m$)   |
|:-----------:|:-----------:|------------------------------------:|:------------------:|:---------------:|
|$M_1,M_2$    |   PMOS      |  12-15                              |    5               |       0.6       |
|$M_3,M_4$    |   NMOS      |  08-10                              |    5               |       1.0       |
|$M_5$        |   PMOS      |  10-12                              |    10              |       1.0       |
|$M_6$        |   NMOS      |  10-12                              |    60              |       0.6       |
|$M_5$        |   PMOS      |  10-12                              |    60              |       1.0       |

### Transistor sizing
1. $M_1,M_2$
                                                                                  
From $\frac{I_D}{W}$ vs  $\frac{g_m}{I_D}$ plot, for the selected  $\frac{g_m}{I_D}$,

$$\frac{I_D}{W}=2\times 10^5$$

$$\frac{5}{W}=2\times10^5$$

\boxed{$$W_{1,2}=25\mu m$$}

2. $M_3,M_4$
                                                                                  
From $\frac{I_D}{W}$ vs  $\frac{g_m}{I_D}$ plot, for the selected  $\frac{g_m}{I_D}$,

$$\frac{I_D}{W}=7\times 10^6$$

$$\frac{5}{W}=7\times10^6$$

$$W_{3,4}=0.7\mu m$$
