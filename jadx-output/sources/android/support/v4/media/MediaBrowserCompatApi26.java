package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompatApi21;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

/* loaded from: classes.dex */
public class MediaBrowserCompatApi26 {

    public interface SubscriptionCallback extends MediaBrowserCompatApi21.SubscriptionCallback {
        void onChildrenLoaded(String str, List<?> list, Bundle bundle);

        void onError(String str, Bundle bundle);
    }

    public static class SubscriptionCallbackProxy<T extends SubscriptionCallback> extends MediaBrowserCompatApi21.SubscriptionCallbackProxy<T> {
        public SubscriptionCallbackProxy(T t) {
            super(t);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((SubscriptionCallback) this.mSubscriptionCallback).onChildrenLoaded(str, list, bundle);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onError(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((SubscriptionCallback) this.mSubscriptionCallback).onError(str, bundle);
        }
    }

    private MediaBrowserCompatApi26() {
    }

    public static Object createSubscriptionCallback(SubscriptionCallback subscriptionCallback) {
        return new SubscriptionCallbackProxy(subscriptionCallback);
    }

    public static void subscribe(Object obj, String str, Bundle bundle, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, bundle, (MediaBrowser.SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).unsubscribe(str, (MediaBrowser.SubscriptionCallback) obj2);
    }
}
