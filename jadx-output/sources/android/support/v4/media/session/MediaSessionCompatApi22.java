package android.support.v4.media.session;

import android.media.session.MediaSession;

/* loaded from: classes.dex */
public class MediaSessionCompatApi22 {
    private MediaSessionCompatApi22() {
    }

    public static void setRatingType(Object obj, int i) {
        ((MediaSession) obj).setRatingType(i);
    }
}
