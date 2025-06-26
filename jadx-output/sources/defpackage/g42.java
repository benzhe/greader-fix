package defpackage;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import defpackage.lb1;
import defpackage.vv2;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g42<AdT, AdapterT, ListenerT extends lb1> implements jz1<AdT> {
    public final lz1<AdapterT, ListenerT> a;
    public final sz1<AdT, AdapterT, ListenerT> b;
    public final zo2 c;
    public final zv2 d;

    public g42(zo2 zo2Var, zv2 zv2Var, lz1<AdapterT, ListenerT> lz1Var, sz1<AdT, AdapterT, ListenerT> sz1Var) {
        this.c = zo2Var;
        this.d = zv2Var;
        this.b = sz1Var;
        this.a = lz1Var;
    }

    public static String c(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) {
        return !sk2Var.s.isEmpty();
    }

    @Override // defpackage.jz1
    public final aw2<AdT> b(final hl2 hl2Var, final sk2 sk2Var) {
        final mz1<AdapterT, ListenerT> mz1VarA;
        Iterator<String> it = sk2Var.s.iterator();
        while (true) {
            if (!it.hasNext()) {
                mz1VarA = null;
                break;
            }
            try {
                mz1VarA = this.a.a(it.next(), sk2Var.u);
                break;
            } catch (pl2 unused) {
            }
        }
        if (mz1VarA == null) {
            return new vv2.a(new l22("unable to instantiate mediation adapter class"));
        }
        xs0 xs0Var = new xs0();
        mz1VarA.c.X4(new l42(this, mz1VarA, xs0Var));
        if (sk2Var.H) {
            Bundle bundle = hl2Var.a.a.d.q;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        oo2 oo2VarC = this.c.c(ap2.ADAPTER_LOAD_AD_SYN);
        io2 io2Var = new io2(this, hl2Var, sk2Var, mz1VarA) { // from class: j42
            public final g42 a;
            public final hl2 b;
            public final sk2 c;
            public final mz1 d;

            {
                this.a = this;
                this.b = hl2Var;
                this.c = sk2Var;
                this.d = mz1VarA;
            }

            @Override // defpackage.io2
            public final void run() throws pl2 {
                g42 g42Var = this.a;
                g42Var.b.b(this.b, this.c, this.d);
            }
        };
        qo2 qo2VarA = oo2VarC.a(new ro2(io2Var), this.d);
        qo2 qo2VarF = qo2VarA.f.b(ap2.ADAPTER_LOAD_AD_ACK, qo2VarA.e()).f(xs0Var);
        qo2 qo2VarB = qo2VarF.f.b(ap2.ADAPTER_WRAP_ADAPTER, qo2VarF.e());
        return qo2VarB.c(new uo2(new jo2(this, hl2Var, sk2Var, mz1VarA) { // from class: i42
            public final g42 a;
            public final hl2 b;
            public final sk2 c;
            public final mz1 d;

            {
                this.a = this;
                this.b = hl2Var;
                this.c = sk2Var;
                this.d = mz1VarA;
            }

            @Override // defpackage.jo2
            public final Object apply(Object obj) {
                g42 g42Var = this.a;
                return g42Var.b.a(this.b, this.c, this.d);
            }
        }), qo2VarB.f.a).e();
    }
}
