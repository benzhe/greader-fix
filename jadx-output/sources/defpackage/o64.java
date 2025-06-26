package defpackage;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class o64 extends ContentObserver {
    public o64() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        b74.h.incrementAndGet();
    }
}
