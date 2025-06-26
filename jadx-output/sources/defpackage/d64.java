package defpackage;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class d64 extends ContentObserver {
    public d64() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        e64.e.set(true);
    }
}
