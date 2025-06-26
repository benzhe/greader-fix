package defpackage;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class wf2 implements Callable {
    public static final Callable e = new wf2();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        HashMap map = new HashMap();
        String str = (String) os3.j.f.a(y40.C);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) os3.j.f.a(y40.D)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    map.put(str2, zzbx.zzer(str2));
                }
            }
        }
        return new vf2(map);
    }
}
