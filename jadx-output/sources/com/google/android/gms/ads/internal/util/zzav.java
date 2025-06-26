package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzav {
    public final List<String> a = new ArrayList();
    public final List<Double> b = new ArrayList();
    public final List<Double> c = new ArrayList();

    public final zzav zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.a.size()) {
            double dDoubleValue = this.c.get(i).doubleValue();
            double dDoubleValue2 = this.b.get(i).doubleValue();
            if (d < dDoubleValue || (dDoubleValue == d && d2 < dDoubleValue2)) {
                break;
            }
            i++;
        }
        this.a.add(i, str);
        this.c.add(i, Double.valueOf(d));
        this.b.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzau zzaah() {
        return new zzau(this, null);
    }
}
