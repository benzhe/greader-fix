package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class hb2 implements qd2<eb2> {
    public final zv2 a;
    public final ViewGroup b;
    public final Context c;
    public final Set<String> d;

    public hb2(zv2 zv2Var, ViewGroup viewGroup, Context context, Set<String> set) {
        this.a = zv2Var;
        this.d = set;
        this.b = viewGroup;
        this.c = context;
    }

    @Override // defpackage.qd2
    public final aw2<eb2> a() {
        return this.a.y(new Callable(this) { // from class: gb2
            public final hb2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                hb2 hb2Var = this.e;
                Objects.requireNonNull(hb2Var);
                if (((Boolean) os3.j.f.a(y40.y3)).booleanValue() && hb2Var.b != null && hb2Var.d.contains("banner")) {
                    return new eb2(Boolean.valueOf(hb2Var.b.isHardwareAccelerated()));
                }
                Boolean boolValueOf = null;
                if (((Boolean) os3.j.f.a(y40.z3)).booleanValue() && hb2Var.d.contains("native")) {
                    Context context = hb2Var.c;
                    if (context instanceof Activity) {
                        Activity activity = (Activity) context;
                        Window window = activity.getWindow();
                        if (window == null || (window.getAttributes().flags & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) == 0) {
                            try {
                                boolValueOf = Boolean.valueOf((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0);
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        } else {
                            boolValueOf = Boolean.TRUE;
                        }
                        return new eb2(boolValueOf);
                    }
                }
                return new eb2(null);
            }
        });
    }
}
