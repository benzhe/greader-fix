package defpackage;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ll2 {
    public final wt3 a;
    public final zzaaz b;
    public final zzajy c;
    public final zzvq d;
    public final zzvt e;
    public final String f;
    public final ArrayList<String> g;
    public final ArrayList<String> h;
    public final zzaei i;
    public final zzwc j;
    public final int k;
    public final AdManagerAdViewOptions l;
    public final PublisherAdViewOptions m;
    public final pt3 n;
    public final xk2 o;
    public final boolean p;

    public ll2(nl2 nl2Var, kl2 kl2Var) {
        zzaei zzaeiVar;
        this.e = nl2Var.b;
        this.f = nl2Var.d;
        this.a = nl2Var.c;
        zzvq zzvqVar = nl2Var.a;
        this.d = new zzvq(zzvqVar.e, zzvqVar.f, zzvqVar.g, zzvqVar.h, zzvqVar.i, zzvqVar.j, zzvqVar.k, zzvqVar.l || nl2Var.f, zzvqVar.m, zzvqVar.n, zzvqVar.o, zzvqVar.p, zzvqVar.q, zzvqVar.r, zzvqVar.s, zzvqVar.t, zzvqVar.u, zzvqVar.v, zzvqVar.w, zzvqVar.x, zzvqVar.y, zzvqVar.z, zzj.zzdl(zzvqVar.A));
        zzaaz zzaazVar = nl2Var.e;
        if (zzaazVar == null) {
            zzaei zzaeiVar2 = nl2Var.i;
            zzaazVar = zzaeiVar2 != null ? zzaeiVar2.j : null;
        }
        this.b = zzaazVar;
        ArrayList<String> arrayList = nl2Var.g;
        this.g = arrayList;
        this.h = nl2Var.h;
        if (arrayList == null) {
            zzaeiVar = null;
        } else {
            zzaeiVar = nl2Var.i;
            if (zzaeiVar == null) {
                zzaeiVar = new zzaei(new NativeAdOptions.Builder().build());
            }
        }
        this.i = zzaeiVar;
        this.j = nl2Var.j;
        this.k = nl2Var.n;
        this.l = nl2Var.k;
        this.m = nl2Var.l;
        this.n = nl2Var.m;
        this.c = nl2Var.o;
        this.o = new xk2(nl2Var.p, null);
        this.p = nl2Var.q;
    }

    public final p90 a() {
        PublisherAdViewOptions publisherAdViewOptions = this.m;
        if (publisherAdViewOptions == null && this.l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzjv() : this.l.zzjv();
    }
}
