package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import defpackage.ny;

/* loaded from: classes.dex */
public final class yx {
    public static final ny.g<s14> m;
    public static final ny.a<s14, Object> n;

    @Deprecated
    public static final ny<Object> o;
    public final Context a;
    public final String b;
    public final int c;
    public String d;
    public int e;
    public String f;
    public final boolean g;
    public g14 h;
    public final ay i;
    public final b20 j;
    public d k;
    public final b l;

    public class a {
        public int a;
        public String b;
        public String c;
        public g14 d;
        public final p14 e;
        public boolean f;

        /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(byte[] r7, defpackage.zx r8) {
            /*
                r5 = this;
                defpackage.yx.this = r6
                r5.<init>()
                int r8 = r6.e
                r5.a = r8
                java.lang.String r8 = r6.d
                r5.b = r8
                java.lang.String r8 = r6.f
                r5.c = r8
                g14 r8 = r6.h
                r5.d = r8
                p14 r8 = new p14
                r8.<init>()
                r5.e = r8
                r0 = 0
                r5.f = r0
                java.lang.String r1 = r6.f
                r5.c = r1
                android.content.Context r1 = r6.a
                android.os.UserManager r2 = defpackage.uv3.a
                int r2 = android.os.Build.VERSION.SDK_INT
                r3 = 1
                r4 = 24
                if (r2 < r4) goto L30
                r2 = 1
                goto L31
            L30:
                r2 = 0
            L31:
                if (r2 == 0) goto L67
                boolean r2 = defpackage.uv3.b
                if (r2 != 0) goto L64
                android.os.UserManager r2 = defpackage.uv3.a
                if (r2 != 0) goto L59
                java.lang.Class<uv3> r4 = defpackage.uv3.class
                monitor-enter(r4)
                android.os.UserManager r2 = defpackage.uv3.a     // Catch: java.lang.Throwable -> L56
                if (r2 != 0) goto L54
                java.lang.Class<android.os.UserManager> r2 = android.os.UserManager.class
                java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Throwable -> L56
                android.os.UserManager r1 = (android.os.UserManager) r1     // Catch: java.lang.Throwable -> L56
                defpackage.uv3.a = r1     // Catch: java.lang.Throwable -> L56
                if (r1 != 0) goto L53
                defpackage.uv3.b = r3     // Catch: java.lang.Throwable -> L56
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
                r2 = 1
                goto L64
            L53:
                r2 = r1
            L54:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
                goto L59
            L56:
                r6 = move-exception
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
                throw r6
            L59:
                boolean r2 = r2.isUserUnlocked()
                defpackage.uv3.b = r2
                if (r2 == 0) goto L64
                r1 = 0
                defpackage.uv3.a = r1
            L64:
                if (r2 != 0) goto L67
                r0 = 1
            L67:
                r8.w = r0
                b20 r0 = r6.j
                long r0 = r0.a()
                r8.g = r0
                b20 r6 = r6.j
                long r0 = r6.b()
                r8.h = r0
                long r0 = r8.g
                java.util.TimeZone r6 = java.util.TimeZone.getDefault()
                int r6 = r6.getOffset(r0)
                int r6 = r6 / 1000
                long r0 = (long) r6
                r8.q = r0
                if (r7 == 0) goto L8c
                r8.l = r7
            L8c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: yx.a.<init>(yx, byte[], zx):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0222  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 640
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: yx.a.a():void");
        }
    }

    public interface b {
    }

    public interface c {
        byte[] a();
    }

    public static class d {
    }

    static {
        ny.g<s14> gVar = new ny.g<>();
        m = gVar;
        zx zxVar = new zx();
        n = zxVar;
        o = new ny<>("ClearcutLogger.API", zxVar, gVar);
    }

    public yx(Context context, String str, String str2, boolean z, ay ayVar, b20 b20Var, b bVar) {
        g14 g14Var = g14.DEFAULT;
        this.e = -1;
        this.h = g14Var;
        this.a = context;
        this.b = context.getPackageName();
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.", e);
        }
        this.c = i;
        this.e = -1;
        this.d = str;
        this.f = null;
        this.g = z;
        this.i = ayVar;
        this.j = b20Var;
        this.k = new d();
        this.h = g14Var;
        this.l = bVar;
        if (z) {
            bi.c(true, "can't be anonymous with an upload account");
        }
    }

    public static yx a(Context context, String str) {
        return new yx(context, str, null, true, new hz3(context), d20.a, new x14(context));
    }
}
