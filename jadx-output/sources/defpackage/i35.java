package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.zah;
import com.google.android.gms.signin.internal.zaj;
import defpackage.i00;
import defpackage.qy;

/* loaded from: classes.dex */
public class i35 extends m00<n35> implements u35 {
    public final boolean F;
    public final j00 G;
    public final Bundle H;
    public Integer I;

    public i35(Context context, Looper looper, j00 j00Var, qy.a aVar, qy.b bVar) {
        h35 h35Var = j00Var.g;
        Integer num = j00Var.h;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", j00Var.a);
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        if (h35Var != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        }
        super(context, looper, 44, j00Var, aVar, bVar);
        this.F = true;
        this.G = j00Var;
        this.H = bundle;
        this.I = j00Var.h;
    }

    @Override // defpackage.u35
    public final void a(l35 l35Var) {
        bi.j(l35Var, "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.G.a;
            if (account == null) {
                account = new Account(i00.DEFAULT_ACCOUNT, "com.google");
            }
            ((n35) getService()).b3(new zah(new ResolveAccountRequest(account, this.I.intValue(), i00.DEFAULT_ACCOUNT.equals(account.name) ? wx.a(getContext()).b() : null)), l35Var);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                tz tzVar = (tz) l35Var;
                tzVar.f.post(new vz(tzVar, new zaj()));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // defpackage.i00
    public /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof n35 ? (n35) iInterfaceQueryLocalInterface : new o35(iBinder);
    }

    @Override // defpackage.i00
    public Bundle c() {
        if (!getContext().getPackageName().equals(this.G.e)) {
            this.H.putString("com.google.android.gms.signin.internal.realClientPackageName", this.G.e);
        }
        return this.H;
    }

    @Override // defpackage.u35
    public final void connect() {
        connect(new i00.d());
    }

    @Override // defpackage.i00
    public String e() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // defpackage.i00
    public String f() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // defpackage.m00, defpackage.i00, ny.f
    public int getMinApkVersion() {
        return 12451000;
    }

    @Override // defpackage.i00, ny.f
    public boolean requiresSignIn() {
        return this.F;
    }
}
