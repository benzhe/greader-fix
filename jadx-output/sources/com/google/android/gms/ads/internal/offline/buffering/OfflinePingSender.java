package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import defpackage.eg0;
import defpackage.jk0;
import defpackage.os3;

/* loaded from: classes.dex */
public class OfflinePingSender extends Worker {
    public final jk0 j;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.j = os3.j.b.b(context, new eg0());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        try {
            this.j.d3();
            return new ListenableWorker.a.c();
        } catch (RemoteException unused) {
            return new ListenableWorker.a.C0002a();
        }
    }
}
