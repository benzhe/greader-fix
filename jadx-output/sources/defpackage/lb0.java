package defpackage;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class lb0 implements kb0<xw0> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kb0
    public final /* synthetic */ void a(xw0 xw0Var, Map map) {
        xw0 xw0Var2 = xw0Var;
        WindowManager windowManager = (WindowManager) xw0Var2.getContext().getSystemService("window");
        zzr.zzkv();
        DisplayMetrics displayMetricsZza = zzj.zza(windowManager);
        int i = displayMetricsZza.widthPixels;
        int i2 = displayMetricsZza.heightPixels;
        int[] iArr = new int[2];
        HashMap map2 = new HashMap();
        ((View) xw0Var2).getLocationInWindow(iArr);
        map2.put("xInPixels", Integer.valueOf(iArr[0]));
        map2.put("yInPixels", Integer.valueOf(iArr[1]));
        map2.put("windowWidthInPixels", Integer.valueOf(i));
        map2.put("windowHeightInPixels", Integer.valueOf(i2));
        xw0Var2.x("locationReady", map2);
        is0.zzez("GET LOCATION COMPILED");
    }
}
