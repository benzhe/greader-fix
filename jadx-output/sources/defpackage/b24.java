package defpackage;

import android.database.ContentObserver;

/* loaded from: classes.dex */
public final class b24 extends ContentObserver {
    public b24() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        a24.e.set(true);
    }
}
