package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class is2 implements ws2 {
    public static volatile xb3 x;
    public MotionEvent e;
    public double n;
    public double o;
    public double p;
    public float q;
    public float r;
    public float s;
    public float t;
    public DisplayMetrics w;
    public LinkedList<MotionEvent> f = new LinkedList<>();
    public long g = 0;
    public long h = 0;
    public long i = 0;
    public long j = 0;
    public long k = 0;
    public long l = 0;
    public long m = 0;
    public boolean u = false;
    public boolean v = false;

    public is2(Context context) {
        try {
            if (((Boolean) os3.j.f.a(y40.F1)).booleanValue()) {
                h62.c();
            } else {
                vt2.p(x);
            }
            this.w = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c A[PHI: r1 r6
      0x011c: PHI (r1v8 int) = (r1v2 int), (r1v2 int), (r1v11 int), (r1v12 int) binds: [B:48:0x00ee, B:49:0x00f0, B:46:0x00eb, B:40:0x00e2] A[DONT_GENERATE, DONT_INLINE]
      0x011c: PHI (r6v7 gl1$b) = (r6v4 gl1$b), (r6v4 gl1$b), (r6v12 gl1$b), (r6v12 gl1$b) binds: [B:48:0x00ee, B:49:0x00f0, B:46:0x00eb, B:40:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016e A[Catch: Exception -> 0x0175, TRY_LEAVE, TryCatch #5 {Exception -> 0x0175, blocks: (B:77:0x015d, B:80:0x016e), top: B:105:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(android.content.Context r24, java.lang.String r25, int r26, android.view.View r27, android.app.Activity r28) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.is2.a(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity):java.lang.String");
    }

    public final void b() {
        this.k = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.l = 0L;
        this.m = 0L;
        if (this.f.size() > 0) {
            Iterator<MotionEvent> it = this.f.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f.clear();
        } else {
            MotionEvent motionEvent = this.e;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.e = null;
    }

    @Override // defpackage.ws2
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // defpackage.ws2
    public abstract String zza(Context context, String str, View view, Activity activity);
}
