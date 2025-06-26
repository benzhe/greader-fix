package defpackage;

import android.content.Context;
import com.noinnion.android.reader.common.subscription.Feed;

/* loaded from: classes2.dex */
public class ev6 extends vm6<Feed, String> {
    public ev6(Context context) {
        super(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004b A[Catch: Exception -> 0x007a, TryCatch #1 {Exception -> 0x007a, blocks: (B:4:0x0022, B:10:0x0041, B:14:0x004b, B:16:0x006b, B:18:0x0072, B:17:0x006f, B:11:0x0045, B:20:0x0076, B:21:0x0079, B:7:0x0036, B:9:0x003c), top: B:31:0x0022, outer: #2, inners: #0 }] */
    @Override // defpackage.vm6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String c(com.noinnion.android.reader.common.subscription.Feed r12) throws java.lang.Exception {
        /*
            r11 = this;
            com.noinnion.android.reader.common.subscription.Feed r12 = (com.noinnion.android.reader.common.subscription.Feed) r12
            android.content.Context r0 = r11.a
            r1 = 0
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L81
            ep6 r4 = defpackage.on6.i(r0)     // Catch: java.lang.Exception -> L81
            java.lang.String r7 = r12.title     // Catch: java.lang.Exception -> L81
            java.lang.String r8 = r12.url     // Catch: java.lang.Exception -> L81
            r9 = 0
            rn6 r5 = r4.m()     // Catch: java.lang.Exception -> L81
            r6 = 0
            r10 = 2
            r5.editSubscription(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L81
            r4.S(r2)     // Catch: java.lang.Exception -> L81
            r2 = 1
            defpackage.n56.H1(r0, r2)     // Catch: java.lang.Exception -> L81
            android.net.Uri r3 = defpackage.ip6.A     // Catch: java.lang.Exception -> L7a
            android.content.ContentResolver r4 = r0.getContentResolver()     // Catch: java.lang.Exception -> L7a
            android.net.Uri r5 = defpackage.ip6.A     // Catch: java.lang.Exception -> L7a
            r6 = 0
            r7 = 0
            r8 = 0
            java.lang.String r9 = "_id DESC limit 1"
            android.database.Cursor r3 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L7a
            if (r3 != 0) goto L36
            goto L48
        L36:
            boolean r4 = r3.moveToNext()     // Catch: java.lang.Throwable -> L75
            if (r4 == 0) goto L45
            ip6 r4 = new ip6     // Catch: java.lang.Throwable -> L75
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L75
            r3.close()     // Catch: java.lang.Exception -> L7a
            goto L49
        L45:
            r3.close()     // Catch: java.lang.Exception -> L7a
        L48:
            r4 = r1
        L49:
            if (r4 == 0) goto L7e
            long r5 = r4.e     // Catch: java.lang.Exception -> L7a
            java.lang.String r3 = "a"
            defpackage.im7.e(r0, r3)     // Catch: java.lang.Exception -> L7a
            android.content.Intent r3 = new android.content.Intent     // Catch: java.lang.Exception -> L7a
            java.lang.Class<com.noinnion.android.greader.service.SyncService> r7 = com.noinnion.android.greader.service.SyncService.class
            r3.<init>(r0, r7)     // Catch: java.lang.Exception -> L7a
            java.lang.String r7 = "manual_sync"
            r3.putExtra(r7, r2)     // Catch: java.lang.Exception -> L7a
            java.lang.String r2 = "subId"
            r3.putExtra(r2, r5)     // Catch: java.lang.Exception -> L7a
            java.lang.Object r2 = defpackage.u7.a     // Catch: java.lang.Exception -> L7a
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L7a
            r5 = 26
            if (r2 < r5) goto L6f
            r0.startForegroundService(r3)     // Catch: java.lang.Exception -> L7a
            goto L72
        L6f:
            r0.startService(r3)     // Catch: java.lang.Exception -> L7a
        L72:
            java.lang.String r1 = r4.f     // Catch: java.lang.Exception -> L7a
            goto L89
        L75:
            r2 = move-exception
            r3.close()     // Catch: java.lang.Exception -> L7a
            throw r2     // Catch: java.lang.Exception -> L7a
        L7a:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Exception -> L81
        L7e:
            java.lang.String r1 = r12.url     // Catch: java.lang.Exception -> L81
            goto L89
        L81:
            r12 = move-exception
            java.lang.String r12 = r12.getLocalizedMessage()
            defpackage.n56.X1(r0, r12)
        L89:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ev6.c(java.lang.Object):java.lang.Object");
    }
}
