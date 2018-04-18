function [v_out_dot, i_ds] = lt4356cap(t, v_out, v_in, i_lim, r_esr, c_out)
i_ds = (v_in - v_out) ./ r_esr;
i_ds = min(i_lim, i_ds);

v_out_dot = i_ds ./ c_out;
end

