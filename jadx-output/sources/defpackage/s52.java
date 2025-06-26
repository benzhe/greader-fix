package defpackage;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzvt;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class s52 extends et3 {
    public final Context e;
    public final sy0 f;
    public final nl2 g;
    public final gk1 h;
    public us3 i;

    public s52(sy0 sy0Var, Context context, String str) {
        nl2 nl2Var = new nl2();
        this.g = nl2Var;
        this.h = new gk1();
        this.f = sy0Var;
        nl2Var.d = str;
        this.e = context;
    }

    @Override // defpackage.bt3
    public final void G3(o90 o90Var) {
        this.h.c = o90Var;
    }

    @Override // defpackage.bt3
    public final void H2(j90 j90Var, zzvt zzvtVar) {
        this.h.d = j90Var;
        this.g.b = zzvtVar;
    }

    @Override // defpackage.bt3
    public final void I1(PublisherAdViewOptions publisherAdViewOptions) {
        nl2 nl2Var = this.g;
        nl2Var.l = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            nl2Var.f = publisherAdViewOptions.getManualImpressionsEnabled();
            nl2Var.m = publisherAdViewOptions.zzjz();
        }
    }

    @Override // defpackage.bt3
    public final void J6(us3 us3Var) {
        this.i = us3Var;
    }

    @Override // defpackage.bt3
    public final void Q3(z80 z80Var) {
        this.h.a = z80Var;
    }

    @Override // defpackage.bt3
    public final void X0(zzaei zzaeiVar) {
        this.g.i = zzaeiVar;
    }

    @Override // defpackage.bt3
    public final void a1(AdManagerAdViewOptions adManagerAdViewOptions) {
        nl2 nl2Var = this.g;
        nl2Var.k = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            nl2Var.f = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
    }

    @Override // defpackage.bt3
    public final void i4(wt3 wt3Var) {
        this.g.c = wt3Var;
    }

    @Override // defpackage.bt3
    public final at3 o4() {
        gk1 gk1Var = this.h;
        Objects.requireNonNull(gk1Var);
        dk1 dk1Var = new dk1(gk1Var, null);
        nl2 nl2Var = this.g;
        ArrayList<String> arrayList = new ArrayList<>();
        if (dk1Var.c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (dk1Var.a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (dk1Var.b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (dk1Var.f.g > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (dk1Var.e != null) {
            arrayList.add(Integer.toString(7));
        }
        nl2Var.g = arrayList;
        nl2 nl2Var2 = this.g;
        ArrayList<String> arrayList2 = new ArrayList<>(dk1Var.f.g);
        int i = 0;
        while (true) {
            m4<String, g90> m4Var = dk1Var.f;
            if (i >= m4Var.g) {
                break;
            }
            arrayList2.add(m4Var.h(i));
            i++;
        }
        nl2Var2.h = arrayList2;
        nl2 nl2Var3 = this.g;
        if (nl2Var3.b == null) {
            nl2Var3.b = zzvt.C();
        }
        return new v52(this.e, this.f, this.g, dk1Var, this.i);
    }

    @Override // defpackage.bt3
    public final void u3(ed0 ed0Var) {
        this.h.e = ed0Var;
    }

    @Override // defpackage.bt3
    public final void w6(zzajy zzajyVar) {
        nl2 nl2Var = this.g;
        nl2Var.o = zzajyVar;
        nl2Var.e = new zzaaz(false, true, false);
    }

    @Override // defpackage.bt3
    public final void x1(u80 u80Var) {
        this.h.b = u80Var;
    }

    @Override // defpackage.bt3
    public final void z5(String str, g90 g90Var, a90 a90Var) {
        gk1 gk1Var = this.h;
        gk1Var.f.put(str, g90Var);
        gk1Var.g.put(str, a90Var);
    }
}
