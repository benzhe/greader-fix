package defpackage;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class yw1 implements rv2<ParcelFileDescriptor> {
    public final /* synthetic */ lm0 a;

    public yw1(lm0 lm0Var) {
        this.a = lm0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        try {
            this.a.g3(zzaq.zzc(th));
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.a.A0(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }
}
