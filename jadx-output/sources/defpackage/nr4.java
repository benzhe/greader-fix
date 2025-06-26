package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class nr4 implements mr4, IInterface {
    public final IBinder e;

    public nr4(IBinder iBinder) {
        this.e = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.e;
    }
}
