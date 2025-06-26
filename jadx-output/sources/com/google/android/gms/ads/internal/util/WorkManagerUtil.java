package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import defpackage.dm;
import defpackage.is0;
import defpackage.jm;
import defpackage.nk;
import defpackage.pj;
import defpackage.qj;
import defpackage.sj;
import defpackage.wj;
import defpackage.x20;
import defpackage.xj;
import defpackage.y20;
import defpackage.ym;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public class WorkManagerUtil extends zzbf {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(x20 x20Var) {
        Context context = (Context) y20.l0(x20Var);
        try {
            nk.c(context.getApplicationContext(), new pj(new pj.a()));
        } catch (IllegalStateException unused) {
        }
        try {
            nk nkVarB = nk.b(context);
            Objects.requireNonNull(nkVarB);
            ((ym) nkVarB.d).a.execute(new jm(nkVarB, "offline_ping_sender_work"));
            qj.a aVar = new qj.a();
            aVar.a = wj.CONNECTED;
            qj qjVar = new qj(aVar);
            xj.a aVar2 = new xj.a(OfflinePingSender.class);
            aVar2.b.j = qjVar;
            aVar2.c.add("offline_ping_sender_work");
            nkVarB.a(aVar2.a());
        } catch (IllegalStateException e) {
            is0.zzd("Failed to instantiate WorkManager.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(x20 x20Var, String str, String str2) throws Throwable {
        Context context = (Context) y20.l0(x20Var);
        try {
            nk.c(context.getApplicationContext(), new pj(new pj.a()));
        } catch (IllegalStateException unused) {
        }
        qj.a aVar = new qj.a();
        aVar.a = wj.CONNECTED;
        qj qjVar = new qj(aVar);
        HashMap map = new HashMap();
        map.put("uri", str);
        map.put("gws_query_id", str2);
        sj sjVar = new sj(map);
        sj.c(sjVar);
        xj.a aVar2 = new xj.a(OfflineNotificationPoster.class);
        dm dmVar = aVar2.b;
        dmVar.j = qjVar;
        dmVar.e = sjVar;
        aVar2.c.add("offline_notification_work");
        try {
            nk.b(context).a(aVar2.a());
            return true;
        } catch (IllegalStateException e) {
            is0.zzd("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
