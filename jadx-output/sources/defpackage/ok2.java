package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes.dex */
public final class ok2 extends AdMetadataListener {
    public final /* synthetic */ lt3 a;
    public final /* synthetic */ nk2 b;

    public ok2(nk2 nk2Var, lt3 lt3Var) {
        this.b = nk2Var;
        this.a = lt3Var;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.b.i != null) {
            try {
                this.a.onAdMetadataChanged();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
