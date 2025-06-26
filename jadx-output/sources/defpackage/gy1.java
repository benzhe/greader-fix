package defpackage;

import android.content.Context;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.util.zzf;
import defpackage.eq3;

/* loaded from: classes.dex */
public final class gy1 {
    public static final SparseArray<eq3.b> h;
    public final Context a;
    public final g91 b;
    public final TelephonyManager c;
    public final dy1 d;
    public final xx1 e;
    public final zzf f;
    public vq3 g;

    static {
        SparseArray<eq3.b> sparseArray = new SparseArray<>();
        h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), eq3.b.CONNECTED);
        int iOrdinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        eq3.b bVar = eq3.b.CONNECTING;
        sparseArray.put(iOrdinal, bVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), bVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), bVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), eq3.b.DISCONNECTING);
        int iOrdinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        eq3.b bVar2 = eq3.b.DISCONNECTED;
        sparseArray.put(iOrdinal2, bVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), bVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), bVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), bVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), bVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), eq3.b.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), bVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), bVar);
    }

    public gy1(Context context, g91 g91Var, dy1 dy1Var, xx1 xx1Var, zzf zzfVar) {
        this.a = context;
        this.b = g91Var;
        this.d = dy1Var;
        this.e = xx1Var;
        this.c = (TelephonyManager) context.getSystemService("phone");
        this.f = zzfVar;
    }

    public static vq3 a(boolean z) {
        return z ? vq3.ENUM_TRUE : vq3.ENUM_FALSE;
    }
}
