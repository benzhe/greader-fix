package defpackage;

import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zt0 {
    public long b;
    public final long a = TimeUnit.MILLISECONDS.toNanos(((Long) os3.j.f.a(y40.w)).longValue());
    public boolean c = true;

    public final void a(SurfaceTexture surfaceTexture, rt0 rt0Var) {
        if (rt0Var == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.c || Math.abs(timestamp - this.b) >= this.a) {
            this.c = false;
            this.b = timestamp;
            zzj.zzegq.post(new cu0(rt0Var));
        }
    }
}
