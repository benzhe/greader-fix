package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.common.internal.SignInButtonConfig;
import defpackage.z20;

/* loaded from: classes.dex */
public final class x00 extends z20<u00> {
    public static final x00 c = new x00();

    public x00() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i, int i2) throws z20.a {
        x00 x00Var = c;
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2);
            return (View) y20.l0(x00Var.b(context).Z2(new y20(context), signInButtonConfig));
        } catch (Exception e) {
            throw new z20.a(jo.N(64, "Could not get button with size ", i, " and color ", i2), e);
        }
    }

    @Override // defpackage.z20
    public final u00 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return iInterfaceQueryLocalInterface instanceof u00 ? (u00) iInterfaceQueryLocalInterface : new d10(iBinder);
    }
}
