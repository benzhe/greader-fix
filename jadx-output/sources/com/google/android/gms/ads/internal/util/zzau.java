package com.google.android.gms.ads.internal.util;

import defpackage.iw;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzau {
    public final String[] a;
    public final double[] b;
    public final double[] c;
    public final int[] d;
    public int e;

    public zzau(zzav zzavVar, iw iwVar) {
        int size = zzavVar.b.size();
        this.a = (String[]) zzavVar.a.toArray(new String[size]);
        this.b = a(zzavVar.b);
        this.c = a(zzavVar.c);
        this.d = new int[size];
        this.e = 0;
    }

    public static double[] a(List<Double> list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d) {
        this.e++;
        int i = 0;
        while (true) {
            double[] dArr = this.c;
            if (i >= dArr.length) {
                return;
            }
            if (dArr[i] <= d && d < this.b[i]) {
                int[] iArr = this.d;
                iArr[i] = iArr[i] + 1;
            }
            if (d < dArr[i]) {
                return;
            } else {
                i++;
            }
        }
    }

    public final List<zzaw> zzaag() {
        ArrayList arrayList = new ArrayList(this.a.length);
        int i = 0;
        while (true) {
            String[] strArr = this.a;
            if (i >= strArr.length) {
                return arrayList;
            }
            arrayList.add(new zzaw(strArr[i], this.c[i], this.b[i], r2[i] / this.e, this.d[i]));
            i++;
        }
    }
}
