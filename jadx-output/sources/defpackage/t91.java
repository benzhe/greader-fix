package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzvx;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class t91 extends sd3 implements ru3 {
    public final String e;
    public final String f;
    public final List<zzvx> g;

    public t91(sk2 sk2Var, String str, nz1 nz1Var) throws JSONException {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
        String string = null;
        this.f = sk2Var == null ? null : sk2Var.V;
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                string = sk2Var.u.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.e = string != null ? string : str;
        this.g = nz1Var.a;
    }

    public static ru3 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return iInterfaceQueryLocalInterface instanceof ru3 ? (ru3) iInterfaceQueryLocalInterface : new tu3(iBinder);
    }

    @Override // defpackage.ru3
    public final String P4() {
        return this.f;
    }

    @Override // defpackage.ru3
    public final List<zzvx> T3() {
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue()) {
            return this.g;
        }
        return null;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String str = this.e;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        if (i == 2) {
            String str2 = this.f;
            parcel2.writeNoException();
            parcel2.writeString(str2);
            return true;
        }
        if (i != 3) {
            return false;
        }
        List<zzvx> listT3 = T3();
        parcel2.writeNoException();
        parcel2.writeTypedList(listT3);
        return true;
    }

    @Override // defpackage.ru3
    public final String getMediationAdapterClassName() {
        return this.e;
    }
}
