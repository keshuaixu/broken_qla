v_in = 48;
i_lim = 15;
r_esr = 0.05;
c_out = 1200e-6;
r_leak = 100;

odefun = @(t, y) lt4356cap(t, y, v_in, i_lim, r_esr, c_out, r_leak);

[t, V_OUT] = ode45(odefun, [0 0.01], 0);
[V_DOT, I] = odefun(t, V_OUT);

plot(t, [V_OUT I])