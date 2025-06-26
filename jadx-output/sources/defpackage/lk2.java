package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes.dex */
public final class lk2 extends AdMetadataListener {
    public final /* synthetic */ lu3 a;
    public final /* synthetic */ ik2 b;

    public lk2(ik2 ik2Var, lu3 lu3Var) {
        this.b = ik2Var;
        this.a = lu3Var;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.b.k != null) {
            try {
                this.a.onAdMetadataChanged();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
