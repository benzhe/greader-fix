package defpackage;

import android.os.Bundle;
import android.util.Log;
import defpackage.dy5;
import defpackage.ey5;
import defpackage.uy5;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class r56 {
    public static final Map<uy5.b, gz5> g;
    public static final Map<uy5.a, ly5> h;
    public final a a;
    public final pe5 b;
    public final z96 c;
    public final z86 d;
    public final bf5 e;
    public final v26 f;

    public interface a {
    }

    static {
        HashMap map = new HashMap();
        g = map;
        HashMap map2 = new HashMap();
        h = map2;
        map.put(uy5.b.UNSPECIFIED_RENDER_ERROR, gz5.UNSPECIFIED_RENDER_ERROR);
        map.put(uy5.b.IMAGE_FETCH_ERROR, gz5.IMAGE_FETCH_ERROR);
        map.put(uy5.b.IMAGE_DISPLAY_ERROR, gz5.IMAGE_DISPLAY_ERROR);
        map.put(uy5.b.IMAGE_UNSUPPORTED_FORMAT, gz5.IMAGE_UNSUPPORTED_FORMAT);
        map2.put(uy5.a.AUTO, ly5.AUTO);
        map2.put(uy5.a.CLICK, ly5.CLICK);
        map2.put(uy5.a.SWIPE, ly5.SWIPE);
        map2.put(uy5.a.UNKNOWN_DISMISS_TYPE, ly5.UNKNOWN_DISMISS_TYPE);
    }

    public r56(a aVar, bf5 bf5Var, pe5 pe5Var, z96 z96Var, z86 z86Var, v26 v26Var) {
        this.a = aVar;
        this.e = bf5Var;
        this.b = pe5Var;
        this.c = z96Var;
        this.d = z86Var;
        this.f = v26Var;
    }

    public final dy5.b a(j96 j96Var, String str) {
        dy5.b bVarJ = dy5.J();
        bVarJ.o();
        dy5.G((dy5) bVarJ.f, "19.1.3");
        pe5 pe5Var = this.b;
        pe5Var.a();
        String str2 = pe5Var.c.e;
        bVarJ.o();
        dy5.F((dy5) bVarJ.f, str2);
        String str3 = j96Var.b.a;
        bVarJ.o();
        dy5.H((dy5) bVarJ.f, str3);
        ey5.b bVarE = ey5.E();
        pe5 pe5Var2 = this.b;
        pe5Var2.a();
        String str4 = pe5Var2.c.b;
        bVarE.o();
        ey5.C((ey5) bVarE.f, str4);
        bVarE.o();
        ey5.D((ey5) bVarE.f, str);
        bVarJ.o();
        dy5.I((dy5) bVarJ.f, bVarE.l());
        long jA = this.d.a();
        bVarJ.o();
        dy5.C((dy5) bVarJ.f, jA);
        return bVarJ;
    }

    public final boolean b(b96 b96Var) {
        String str;
        return (b96Var == null || (str = b96Var.a) == null || str.isEmpty()) ? false : true;
    }

    public final void c(j96 j96Var, String str, boolean z) {
        f96 f96Var = j96Var.b;
        String str2 = f96Var.a;
        String str3 = f96Var.b;
        Bundle bundle = new Bundle();
        bundle.putString("_nmid", str2);
        bundle.putString("_nmn", str3);
        try {
            bundle.putInt("_ndt", (int) (this.d.a() / 1000));
        } catch (NumberFormatException e) {
            StringBuilder sbZ = jo.z("Error while parsing use_device_time in FIAM event: ");
            sbZ.append(e.getMessage());
            Log.w("FIAM.Headless", sbZ.toString());
        }
        n56.t1("Sending event=" + str + " params=" + bundle);
        bf5 bf5Var = this.e;
        if (bf5Var == null) {
            Log.w("FIAM.Headless", "Unable to log event: analytics library is missing");
            return;
        }
        bf5Var.W("fiam", str, bundle);
        if (z) {
            this.e.e("fiam", "_ln", "fiam:" + str2);
        }
    }
}
