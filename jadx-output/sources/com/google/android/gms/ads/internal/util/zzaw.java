package com.google.android.gms.ads.internal.util;

import defpackage.bi;
import defpackage.w00;
import java.util.Arrays;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class zzaw {
    public final double a;
    public final double b;
    public final int count;
    public final String name;
    public final double zzeid;

    public zzaw(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.b = d;
        this.a = d2;
        this.zzeid = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        zzaw zzawVar = (zzaw) obj;
        return bi.B(this.name, zzawVar.name) && this.a == zzawVar.a && this.b == zzawVar.b && this.count == zzawVar.count && Double.compare(this.zzeid, zzawVar.zzeid) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Double.valueOf(this.a), Double.valueOf(this.b), Double.valueOf(this.zzeid), Integer.valueOf(this.count)});
    }

    public final String toString() {
        w00 w00Var = new w00(this, null);
        w00Var.a(InetAddressKeys.KEY_NAME, this.name);
        w00Var.a("minBound", Double.valueOf(this.b));
        w00Var.a("maxBound", Double.valueOf(this.a));
        w00Var.a("percent", Double.valueOf(this.zzeid));
        w00Var.a("count", Integer.valueOf(this.count));
        return w00Var.toString();
    }
}
