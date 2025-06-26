package defpackage;

import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes.dex */
public final class jo1 implements kb0<Object> {
    public final a90 a;
    public final io1 b;
    public final xa3<co1> c;

    public jo1(dk1 dk1Var, wj1 wj1Var, io1 io1Var, xa3<co1> xa3Var) {
        this.a = dk1Var.a(wj1Var.c());
        this.b = io1Var;
        this.c = xa3Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.a.Y(this.c.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            is0.zzd(sb.toString(), e);
        }
    }
}
