package defpackage;

import com.google.android.gms.ads.MobileAds;
import com.noinnion.android.greader.ReaderApp;

/* loaded from: classes2.dex */
public final class fn6 extends Thread {
    public final /* synthetic */ ReaderApp e;

    public fn6(ReaderApp readerApp) {
        this.e = readerApp;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        MobileAds.initialize(this.e);
    }
}
