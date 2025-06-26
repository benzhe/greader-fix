package defpackage;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class jh5 implements ih5, hh5 {
    public final lh5 a;
    public final Object b = new Object();
    public CountDownLatch c;

    public jh5(lh5 lh5Var, int i, TimeUnit timeUnit) {
        this.a = lh5Var;
    }

    @Override // defpackage.hh5
    public void a(String str, Bundle bundle) {
        synchronized (this.b) {
            ah5 ah5Var = ah5.a;
            ah5Var.b("Logging Crashlytics event to Firebase");
            this.c = new CountDownLatch(1);
            this.a.a.W("clx", str, bundle);
            ah5Var.b("Awaiting app exception callback from FA...");
            try {
                if (this.c.await(500, TimeUnit.MILLISECONDS)) {
                    ah5Var.b("App exception callback received from FA listener.");
                } else {
                    ah5Var.b("Timeout exceeded while awaiting app exception callback from FA listener.");
                }
            } catch (InterruptedException unused) {
                ah5.a.b("Interrupted while awaiting app exception callback from FA listener.");
            }
            this.c = null;
        }
    }

    @Override // defpackage.ih5
    public void onEvent(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.c;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
