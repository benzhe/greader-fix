package defpackage;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class fe extends MediaBrowserServiceCompat.g<Bundle> {
    public final /* synthetic */ ResultReceiver e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fe(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.g
    public void b(Bundle bundle) {
        this.e.send(-1, bundle);
    }

    @Override // androidx.media.MediaBrowserServiceCompat.g
    public void c(Bundle bundle) {
        this.e.send(0, bundle);
    }
}
