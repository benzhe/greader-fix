package defpackage;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes.dex */
public final class oq extends AdMetadataListener {
    public final /* synthetic */ AbstractAdViewAdapter a;

    public oq(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        if (this.a.zzms == null || this.a.zzmt == null) {
            return;
        }
        this.a.zzmt.zzb(this.a.zzms.getAdMetadata());
    }
}
