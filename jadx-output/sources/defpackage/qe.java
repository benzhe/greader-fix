package defpackage;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

/* loaded from: classes.dex */
public class qe extends MediaBrowserService {
    public final se e;

    public qe(Context context, se seVar) {
        attachBaseContext(context);
        this.e = seVar;
    }

    @Override // android.service.media.MediaBrowserService
    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        if (this.e.d(str, i, bundle == null ? null : new Bundle(bundle)) == null) {
            return null;
        }
        throw null;
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        this.e.b(str, new re<>(result));
    }
}
