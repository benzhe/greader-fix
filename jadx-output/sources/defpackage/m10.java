package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import defpackage.n00;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class m10 implements ServiceConnection, o10 {
    public final Map<ServiceConnection, ServiceConnection> a = new HashMap();
    public int b = 2;
    public boolean c;
    public IBinder d;
    public final n00.a e;
    public ComponentName f;
    public final /* synthetic */ k10 g;

    public m10(k10 k10Var, n00.a aVar) {
        this.g = k10Var;
        this.e = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 3
            r9.b = r0
            k10 r0 = r9.g
            x10 r1 = r0.f
            android.content.Context r2 = r0.d
            n00$a r0 = r9.e
            java.lang.String r3 = r0.a
            r4 = 0
            if (r3 == 0) goto L88
            boolean r3 = r0.d
            if (r3 == 0) goto L78
            java.lang.String r3 = "ConnectionStatusConfig"
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r6 = r0.a
            java.lang.String r7 = "serviceActionBundleKey"
            r5.putString(r7, r6)
            android.content.ContentResolver r6 = r2.getContentResolver()     // Catch: java.lang.IllegalArgumentException -> L2f
            android.net.Uri r7 = n00.a.e     // Catch: java.lang.IllegalArgumentException -> L2f
            java.lang.String r8 = "serviceIntentCall"
            android.os.Bundle r5 = r6.call(r7, r8, r4, r5)     // Catch: java.lang.IllegalArgumentException -> L2f
            goto L4f
        L2f:
            r5 = move-exception
            java.lang.String r5 = java.lang.String.valueOf(r5)
            int r6 = r5.length()
            int r6 = r6 + 34
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = "Dynamic intent resolution failed: "
            r7.append(r6)
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            android.util.Log.w(r3, r5)
            r5 = r4
        L4f:
            if (r5 != 0) goto L52
            goto L5a
        L52:
            java.lang.String r4 = "serviceResponseIntentKey"
            android.os.Parcelable r4 = r5.getParcelable(r4)
            android.content.Intent r4 = (android.content.Intent) r4
        L5a:
            if (r4 != 0) goto L78
            java.lang.String r5 = "Dynamic lookup for intent failed for action: "
            java.lang.String r6 = r0.a
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r7 = r6.length()
            if (r7 == 0) goto L6f
            java.lang.String r5 = r5.concat(r6)
            goto L75
        L6f:
            java.lang.String r6 = new java.lang.String
            r6.<init>(r5)
            r5 = r6
        L75:
            android.util.Log.w(r3, r5)
        L78:
            if (r4 != 0) goto L92
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = r0.a
            r3.<init>(r4)
            java.lang.String r0 = r0.b
            android.content.Intent r0 = r3.setPackage(r0)
            goto L91
        L88:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            android.content.Intent r0 = r0.setComponent(r4)
        L91:
            r4 = r0
        L92:
            n00$a r0 = r9.e
            int r6 = r0.c
            r3 = r10
            r5 = r9
            boolean r10 = r1.d(r2, r3, r4, r5, r6)
            r9.c = r10
            if (r10 == 0) goto Lb5
            k10 r10 = r9.g
            android.os.Handler r10 = r10.e
            r0 = 1
            n00$a r1 = r9.e
            android.os.Message r10 = r10.obtainMessage(r0, r1)
            k10 r0 = r9.g
            android.os.Handler r1 = r0.e
            long r2 = r0.h
            r1.sendMessageDelayed(r10, r2)
            return
        Lb5:
            r10 = 2
            r9.b = r10
            k10 r10 = r9.g     // Catch: java.lang.IllegalArgumentException -> Lc1
            x10 r0 = r10.f     // Catch: java.lang.IllegalArgumentException -> Lc1
            android.content.Context r10 = r10.d     // Catch: java.lang.IllegalArgumentException -> Lc1
            r0.c(r10, r9)     // Catch: java.lang.IllegalArgumentException -> Lc1
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m10.a(java.lang.String):void");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.c) {
            this.g.e.removeMessages(1, this.e);
            this.d = iBinder;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.a.values().iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected(componentName, iBinder);
            }
            this.b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.c) {
            this.g.e.removeMessages(1, this.e);
            this.d = null;
            this.f = componentName;
            Iterator<ServiceConnection> it = this.a.values().iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected(componentName);
            }
            this.b = 2;
        }
    }
}
