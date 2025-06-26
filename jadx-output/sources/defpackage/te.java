package defpackage;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.service.media.MediaBrowserService;

/* loaded from: classes.dex */
public class te extends qe {
    public te(Context context, ue ueVar) {
        super(context, ueVar);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
        ((ue) this.e).a(str, new re<>(result));
    }
}
