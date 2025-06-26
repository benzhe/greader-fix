package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface x20 extends IInterface {

    public static abstract class a extends c24 implements x20 {

        /* renamed from: x20$a$a, reason: collision with other inner class name */
        public static class C0056a extends d24 implements x20 {
            public C0056a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static x20 g0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return iInterfaceQueryLocalInterface instanceof x20 ? (x20) iInterfaceQueryLocalInterface : new C0056a(iBinder);
        }
    }
}
