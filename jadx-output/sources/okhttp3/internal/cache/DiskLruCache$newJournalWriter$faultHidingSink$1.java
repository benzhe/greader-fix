package okhttp3.internal.cache;

import defpackage.im7;
import defpackage.jm7;
import defpackage.jo;
import defpackage.pl7;
import defpackage.yj7;
import java.io.IOException;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class DiskLruCache$newJournalWriter$faultHidingSink$1 extends jm7 implements pl7<IOException, yj7> {
    public final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$newJournalWriter$faultHidingSink$1(DiskLruCache diskLruCache) {
        super(1);
        this.this$0 = diskLruCache;
    }

    @Override // defpackage.pl7
    public /* bridge */ /* synthetic */ yj7 invoke(IOException iOException) {
        invoke2(iOException);
        return yj7.a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(IOException iOException) {
        im7.e(iOException, "it");
        DiskLruCache diskLruCache = this.this$0;
        if (!Util.assertionsEnabled || Thread.holdsLock(diskLruCache)) {
            this.this$0.hasJournalErrors = true;
            return;
        }
        StringBuilder sbZ = jo.z("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        im7.d(threadCurrentThread, "Thread.currentThread()");
        sbZ.append(threadCurrentThread.getName());
        sbZ.append(" MUST hold lock on ");
        sbZ.append(diskLruCache);
        throw new AssertionError(sbZ.toString());
    }
}
