package android.support.v4.media.session;

import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes.dex */
public class MediaControllerCompatApi23 {

    public static class TransportControls {
        private TransportControls() {
        }

        public static void playFromUri(Object obj, Uri uri, Bundle bundle) {
            ((MediaController.TransportControls) obj).playFromUri(uri, bundle);
        }
    }

    private MediaControllerCompatApi23() {
    }
}
