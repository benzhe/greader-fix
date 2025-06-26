package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class v6 {
    public static int c;
    public x6 a;
    public ArrayList<x6> b = new ArrayList<>();

    public v6(x6 x6Var, int i) {
        this.a = null;
        c++;
        this.a = x6Var;
    }

    public final long a(q6 q6Var, long j) {
        x6 x6Var = q6Var.d;
        if (x6Var instanceof t6) {
            return j;
        }
        int size = q6Var.k.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            o6 o6Var = q6Var.k.get(i);
            if (o6Var instanceof q6) {
                q6 q6Var2 = (q6) o6Var;
                if (q6Var2.d != x6Var) {
                    jMin = Math.min(jMin, a(q6Var2, q6Var2.f + j));
                }
            }
        }
        if (q6Var != x6Var.i) {
            return jMin;
        }
        long j2 = j - x6Var.j();
        return Math.min(Math.min(jMin, a(x6Var.h, j2)), j2 - x6Var.h.f);
    }

    public final long b(q6 q6Var, long j) {
        x6 x6Var = q6Var.d;
        if (x6Var instanceof t6) {
            return j;
        }
        int size = q6Var.k.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            o6 o6Var = q6Var.k.get(i);
            if (o6Var instanceof q6) {
                q6 q6Var2 = (q6) o6Var;
                if (q6Var2.d != x6Var) {
                    jMax = Math.max(jMax, b(q6Var2, q6Var2.f + j));
                }
            }
        }
        if (q6Var != x6Var.h) {
            return jMax;
        }
        long j2 = j + x6Var.j();
        return Math.max(Math.max(jMax, b(x6Var.i, j2)), j2 - x6Var.i.f);
    }
}
