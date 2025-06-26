package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class aw0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ long i;
    public final /* synthetic */ long j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ zv0 n;

    public aw0(zv0 zv0Var, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.n = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = i;
        this.h = i2;
        this.i = j;
        this.j = j2;
        this.k = z;
        this.l = i3;
        this.m = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.e);
        map.put("cachedSrc", this.f);
        map.put("bytesLoaded", Integer.toString(this.g));
        map.put("totalBytes", Integer.toString(this.h));
        map.put("bufferedDuration", Long.toString(this.i));
        map.put("totalDuration", Long.toString(this.j));
        map.put("cacheReady", this.k ? "1" : "0");
        map.put("playerCount", Integer.toString(this.l));
        map.put("playerPreparedCount", Integer.toString(this.m));
        zv0.j(this.n, "onPrecacheEvent", map);
    }
}
