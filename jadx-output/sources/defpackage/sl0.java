package defpackage;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzatj;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public final class sl0 {
    public final View a;
    public final Map<String, WeakReference<View>> b;
    public final zq0 c;

    public sl0(tl0 tl0Var) {
        View view = tl0Var.a;
        this.a = view;
        Map<String, WeakReference<View>> map = tl0Var.b;
        this.b = map;
        zq0 zq0VarA = ql0.a(view.getContext());
        this.c = zq0VarA;
        if (zq0VarA == null || map == null || map.isEmpty()) {
            return;
        }
        try {
            zq0VarA.Z1(new zzatj(new y20(view), new y20(map)));
        } catch (RemoteException unused) {
            is0.zzex("Failed to call remote method.");
        }
    }
}
