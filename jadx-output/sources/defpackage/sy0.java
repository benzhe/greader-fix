package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzauj;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class sy0 implements r11 {
    public static sy0 a;

    public static sy0 b(Context context, hg0 hg0Var, int i) {
        sy0 sy0VarZ = z(context, i);
        sy0VarZ.j().b.compareAndSet(null, hg0Var);
        return sy0VarZ;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x012a A[Catch: all -> 0x012e, TRY_LEAVE, TryCatch #2 {, blocks: (B:11:0x0020, B:13:0x0024, B:15:0x0038, B:17:0x003e, B:19:0x00b3, B:21:0x00c5, B:22:0x0101, B:25:0x010d, B:27:0x011d, B:29:0x0127, B:28:0x0122, B:30:0x012a), top: B:42:0x0020, inners: #1 }] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.sy0 z(android.content.Context r17, int r18) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sy0.z(android.content.Context, int):sy0");
    }

    @Override // defpackage.r11
    public final vz0 a(zzauj zzaujVar, int i) {
        return c(new of2(zzaujVar, i));
    }

    public abstract vz0 c(of2 of2Var);

    public abstract pp2 d();

    public abstract Executor e();

    public abstract ScheduledExecutorService f();

    public abstract Executor g();

    public abstract zv2 h();

    public abstract kc1 i();

    public abstract nq1 j();

    public abstract a11 k();

    public abstract c01 l();

    public abstract g01 m();

    public abstract zz0 n();

    public abstract uz0 o();

    public abstract a01 p();

    public abstract k01 q();

    public abstract l01 r();

    public abstract rz0 s();

    public abstract p01 t();

    public abstract n01 u();

    public abstract t01 v();

    public abstract l72 w();

    public abstract cz1 x();

    public abstract yl2<io1> y();
}
