package defpackage;

import androidx.appcompat.app.AppCompatActivity;
import com.michaelflisar.gdprdialog.GDPRSetup;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class bw6 {
    public static final GDPRSetup a() {
        GDPRSetup gDPRSetup = new GDPRSetup(sl6.a, sl6.b, sl6.c);
        String strC = jb6.a().c("url_privacy_policy");
        im7.d(strC, "FirebaseRemoteConfig.get…g.UrlPrivacyPolicy.key())");
        if (!strC.startsWith("https://") && !strC.startsWith("http://")) {
            strC = jo.n("http://", strC);
        }
        gDPRSetup.e = strC;
        gDPRSetup.j = false;
        wl6[] wl6VarArr = wl6.i;
        wl6[] wl6VarArr2 = (wl6[]) Arrays.copyOf(wl6VarArr, wl6VarArr.length);
        if (wl6VarArr2 == null) {
            wl6VarArr2 = new wl6[0];
        }
        gDPRSetup.m = wl6VarArr2;
        gDPRSetup.u = 10000;
        gDPRSetup.v = 10000;
        gDPRSetup.n = true;
        gDPRSetup.o = true;
        gDPRSetup.q = true;
        gDPRSetup.l = true;
        im7.d(gDPRSetup, "GDPRSetup(\n\t\t\t\t\tGDPRDefi….withNoToolbarTheme(true)");
        return gDPRSetup;
    }

    public static final void b(AppCompatActivity appCompatActivity) {
        im7.e(appCompatActivity, "activity");
        GDPRSetup gDPRSetupA = a();
        pl6 pl6VarB = pl6.b();
        vl6 vl6Var = vl6.IN_EAA_OR_UNKNOWN;
        Objects.requireNonNull(pl6VarB);
        wb wbVarO = appCompatActivity.o();
        if (wbVarO.c(tl6.class.getName()) != null) {
            return;
        }
        try {
            try {
                if (wbVarO.e()) {
                    return;
                }
                pl6VarB.d(wbVarO, gDPRSetupA, vl6Var);
            } catch (IllegalStateException unused) {
            }
        } catch (NoSuchMethodError unused2) {
            pl6VarB.d(wbVarO, gDPRSetupA, vl6Var);
        }
    }
}
