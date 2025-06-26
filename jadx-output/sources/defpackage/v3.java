package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import defpackage.n;

/* loaded from: classes.dex */
public abstract class v3 implements ServiceConnection {
    public Context a;

    public class a extends t3 {
        public a(v3 v3Var, n nVar, ComponentName componentName, Context context) {
            super(nVar, componentName, context);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        n c0024a;
        if (this.a == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        int i = n.a.e;
        if (iBinder == null) {
            c0024a = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            c0024a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof n)) ? new n.a.C0024a(iBinder) : (n) iInterfaceQueryLocalInterface;
        }
        a aVar = new a(this, c0024a, componentName, this.a);
        nb3 nb3Var = ((ob3) this).b.get();
        if (nb3Var != null) {
            nb3Var.b(aVar);
        }
    }
}
