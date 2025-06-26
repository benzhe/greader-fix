package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public class qv3 implements IInterface {
    public final IBinder e;
    public final String f;

    public qv3(IBinder iBinder, String str) {
        this.e = iBinder;
        this.f = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.e;
    }
}
