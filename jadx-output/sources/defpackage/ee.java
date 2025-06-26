package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;

/* loaded from: classes.dex */
public class ee extends MediaBrowserServiceCompat.g<List<MediaBrowserCompat.MediaItem>> {
    public final /* synthetic */ ResultReceiver e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.g
    public void c(List<MediaBrowserCompat.MediaItem> list) {
        List<MediaBrowserCompat.MediaItem> list2 = list;
        if ((this.d & 4) != 0 || list2 == null) {
            this.e.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArray("search_results", (Parcelable[]) list2.toArray(new MediaBrowserCompat.MediaItem[0]));
        this.e.send(0, bundle);
    }
}
