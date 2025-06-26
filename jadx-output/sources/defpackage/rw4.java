package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzas;

/* loaded from: classes.dex */
public final class rw4 {
    public final String a;
    public final String b;
    public final long c;
    public final Bundle d;

    public rw4(String str, String str2, Bundle bundle, long j) {
        this.a = str;
        this.b = str2;
        this.d = bundle;
        this.c = j;
    }

    public static rw4 a(zzas zzasVar) {
        return new rw4(zzasVar.e, zzasVar.g, zzasVar.f.M0(), zzasVar.h);
    }

    public final zzas b() {
        return new zzas(this.a, new zzaq(new Bundle(this.d)), this.b, this.c);
    }

    public final String toString() {
        String str = this.b;
        String str2 = this.a;
        String strValueOf = String.valueOf(this.d);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + strValueOf.length());
        jo.J(sb, "origin=", str, ",name=", str2);
        return jo.s(sb, ",params=", strValueOf);
    }
}
