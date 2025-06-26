package defpackage;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

/* loaded from: classes.dex */
public class de extends MediaBrowserServiceCompat.g<MediaBrowserCompat.MediaItem> {
    public final /* synthetic */ ResultReceiver e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.g
    public void c(MediaBrowserCompat.MediaItem mediaItem) {
        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
        if ((this.d & 2) != 0) {
            this.e.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", mediaItem2);
        this.e.send(0, bundle);
    }
}
