package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.internal.ads.zzvt;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class bl1 {
    public final mp1 a;
    public final io1 b;
    public final d31 c;
    public final ek1 d;

    public bl1(mp1 mp1Var, io1 io1Var, d31 d31Var, ek1 ek1Var) {
        this.a = mp1Var;
        this.b = io1Var;
        this.c = d31Var;
        this.d = ek1Var;
    }

    public final View a() throws ix0 {
        xw0 xw0VarA = this.a.a(zzvt.C(), null, null);
        xw0VarA.getView().setVisibility(8);
        xw0VarA.o("/sendMessageToSdk", new kb0(this) { // from class: al1
            public final bl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                this.a.b.b("sendMessageToNativeJs", map);
            }
        });
        xw0VarA.o("/adMuted", new kb0(this) { // from class: dl1
            public final bl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                this.a.d.l();
            }
        });
        this.b.c(new WeakReference(xw0VarA), "/loadHtml", new kb0(this) { // from class: cl1
            public final bl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, final Map map) {
                final bl1 bl1Var = this.a;
                xw0 xw0Var = (xw0) obj;
                ((ww0) xw0Var.I()).k = new gy0(bl1Var, map) { // from class: nl1
                    public final bl1 a;
                    public final Map b;

                    {
                        this.a = bl1Var;
                        this.b = map;
                    }

                    @Override // defpackage.gy0
                    public final void a(boolean z) {
                        bl1 bl1Var2 = this.a;
                        Map map2 = this.b;
                        Objects.requireNonNull(bl1Var2);
                        HashMap map3 = new HashMap();
                        map3.put("messageType", "htmlLoaded");
                        map3.put("id", (String) map2.get("id"));
                        bl1Var2.b.b("sendMessageToNativeJs", map3);
                    }
                };
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    xw0Var.loadData(str, "text/html", "UTF-8");
                } else {
                    xw0Var.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.b.c(new WeakReference(xw0VarA), "/showOverlay", new kb0(this) { // from class: fl1
            public final bl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                bl1 bl1Var = this.a;
                Objects.requireNonNull(bl1Var);
                is0.zzey("Showing native ads overlay.");
                ((xw0) obj).getView().setVisibility(0);
                bl1Var.c.j = true;
            }
        });
        this.b.c(new WeakReference(xw0VarA), "/hideOverlay", new kb0(this) { // from class: el1
            public final bl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                bl1 bl1Var = this.a;
                Objects.requireNonNull(bl1Var);
                is0.zzey("Hiding native ads overlay.");
                ((xw0) obj).getView().setVisibility(8);
                bl1Var.c.j = false;
            }
        });
        return xw0VarA.getView();
    }
}
