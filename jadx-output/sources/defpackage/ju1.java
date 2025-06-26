package defpackage;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ju1 implements cb3<aw2<String>> {
    public final mb3<zo2> a;
    public final mb3<Context> b;

    public ju1(mb3<zo2> mb3Var, mb3<Context> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        zo2 zo2Var = this.a.get();
        final CookieManager cookieManagerZzbi = zzr.zzkx().zzbi(this.b.get());
        oo2 oo2VarC = zo2Var.c(ap2.WEBVIEW_COOKIE);
        qo2 qo2VarA = oo2VarC.a(new Callable(cookieManagerZzbi) { // from class: gu1
            public final CookieManager e;

            {
                this.e = cookieManagerZzbi;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = this.e;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) os3.j.f.a(y40.x0));
            }
        }, oo2VarC.b.a).a(1L, TimeUnit.SECONDS);
        final jo2 jo2Var = iu1.a;
        return qo2VarA.d(Exception.class, new cv2(jo2Var) { // from class: wo2
            public final jo2 a;

            {
                this.a = jo2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                return vt2.j(this.a.apply((Throwable) obj));
            }
        }).e();
    }
}
