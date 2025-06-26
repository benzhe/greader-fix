package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class bw0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ long h;
    public final /* synthetic */ long i;
    public final /* synthetic */ long j;
    public final /* synthetic */ long k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ zv0 o;

    public bw0(zv0 zv0Var, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.o = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = j;
        this.h = j2;
        this.i = j3;
        this.j = j4;
        this.k = j5;
        this.l = z;
        this.m = i;
        this.n = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.e);
        map.put("cachedSrc", this.f);
        map.put("bufferedDuration", Long.toString(this.g));
        map.put("totalDuration", Long.toString(this.h));
        if (((Boolean) os3.j.f.a(y40.l1)).booleanValue()) {
            map.put("qoeLoadedBytes", Long.toString(this.i));
            map.put("qoeCachedBytes", Long.toString(this.j));
            map.put("totalBytes", Long.toString(this.k));
            map.put("reportTime", Long.toString(zzr.zzlc().a()));
        }
        map.put("cacheReady", this.l ? "1" : "0");
        map.put("playerCount", Integer.toString(this.m));
        map.put("playerPreparedCount", Integer.toString(this.n));
        zv0.j(this.o, "onPrecacheEvent", map);
    }
}
