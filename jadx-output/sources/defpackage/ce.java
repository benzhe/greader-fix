package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ce extends MediaBrowserServiceCompat.g<List<MediaBrowserCompat.MediaItem>> {
    public final /* synthetic */ MediaBrowserServiceCompat.a e;
    public final /* synthetic */ String f;
    public final /* synthetic */ Bundle g;
    public final /* synthetic */ Bundle h;
    public final /* synthetic */ MediaBrowserServiceCompat i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ce(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, MediaBrowserServiceCompat.a aVar, String str, Bundle bundle, Bundle bundle2) {
        super(obj);
        this.i = mediaBrowserServiceCompat;
        this.e = aVar;
        this.f = str;
        this.g = bundle;
        this.h = bundle2;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.g
    public void c(List<MediaBrowserCompat.MediaItem> list) {
        List<MediaBrowserCompat.MediaItem> listEmptyList = list;
        if (this.i.f.get(((MediaBrowserServiceCompat.j) this.e.b).a()) != this.e) {
            if (MediaBrowserServiceCompat.h) {
                StringBuilder sbZ = jo.z("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                sbZ.append(this.e.a);
                sbZ.append(" id=");
                sbZ.append(this.f);
                Log.d("MBServiceCompat", sbZ.toString());
                return;
            }
            return;
        }
        if ((this.d & 1) != 0) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = this.i;
            Bundle bundle = this.g;
            Objects.requireNonNull(mediaBrowserServiceCompat);
            if (listEmptyList == null) {
                listEmptyList = null;
            } else {
                int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
                int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                if (i != -1 || i2 != -1) {
                    int i3 = i2 * i;
                    int size = i3 + i2;
                    if (i < 0 || i2 < 1 || i3 >= listEmptyList.size()) {
                        listEmptyList = Collections.emptyList();
                    } else {
                        if (size > listEmptyList.size()) {
                            size = listEmptyList.size();
                        }
                        listEmptyList = listEmptyList.subList(i3, size);
                    }
                }
            }
        }
        try {
            ((MediaBrowserServiceCompat.j) this.e.b).b(this.f, listEmptyList, this.g, this.h);
        } catch (RemoteException unused) {
            StringBuilder sbZ2 = jo.z("Calling onLoadChildren() failed for id=");
            sbZ2.append(this.f);
            sbZ2.append(" package=");
            sbZ2.append(this.e.a);
            Log.w("MBServiceCompat", sbZ2.toString());
        }
    }
}
