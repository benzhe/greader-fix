package defpackage;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import defpackage.gp4;
import defpackage.lq4;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class gj4 implements Runnable {
    public final fj4 e;
    public final gp4.a f;
    public final oh4 g;

    public gj4(fj4 fj4Var, gp4.a aVar, oh4 oh4Var) {
        this.e = fj4Var;
        this.f = aVar;
        this.g = oh4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<String> list;
        fj4 fj4Var = this.e;
        gp4.a aVar = this.f;
        oh4 oh4Var = this.g;
        Objects.requireNonNull(fj4Var);
        String strQ = ((gp4) aVar.f).q().q();
        if ("NA".equals(strQ) || "".equals(strQ)) {
            strQ = "NA";
        }
        lq4.a aVarV = lq4.v();
        String str = fj4Var.a;
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.u((lq4) aVarV.f, str);
        String str2 = fj4Var.b;
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.x((lq4) aVarV.f, str2);
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.B((lq4) aVarV.f, strQ);
        synchronized (fj4.class) {
            list = fj4.h;
            if (list == null) {
                Configuration configuration = Resources.getSystem().getConfiguration();
                x8 x8Var = Build.VERSION.SDK_INT >= 24 ? new x8(new a9(configuration.getLocales())) : x8.a(configuration.locale);
                fj4.h = new ArrayList(x8Var.a.size());
                for (int i = 0; i < x8Var.a.size(); i++) {
                    Locale locale = x8Var.a.get(i);
                    List<String> list2 = fj4.h;
                    o00 o00Var = dh6.a;
                    list2.add(locale.toLanguageTag());
                }
                list = fj4.h;
            }
        }
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.t((lq4) aVarV.f, list);
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.w((lq4) aVarV.f);
        String strL = fj4Var.e.o() ? fj4Var.e.l() : v00.c.a("language-id");
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.z((lq4) aVarV.f, strL);
        String strL2 = fj4Var.f.o() ? fj4Var.f.l() : fj4Var.d.a();
        if (aVarV.g) {
            aVarV.f();
            aVarV.g = false;
        }
        lq4.C((lq4) aVarV.f, strL2);
        if (aVar.g) {
            aVar.f();
            aVar.g = false;
        }
        gp4.t((gp4) aVar.f, oh4Var);
        aVar.l(aVarV);
        fj4Var.c.a((gp4) ((pk4) aVar.j()));
    }
}
