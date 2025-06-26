package com.noinnion.android.greader.client.rss.syndication.util;

import android.webkit.MimeTypeMap;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public class SyndTypeUtils {
    private static final String VALID_MIMETYPE = "audio/.*|video/.*|application/ogg";

    private SyndTypeUtils() {
    }

    public static boolean enclosureTypeValid(String str) {
        return str != null && str.matches(VALID_MIMETYPE);
    }

    public static String getValidMimeTypeFromUrl(String str) {
        String extension;
        String mimeTypeFromExtension;
        if (str == null || (extension = FilenameUtils.getExtension(str)) == null || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension)) == null || !enclosureTypeValid(mimeTypeFromExtension)) {
            return null;
        }
        return mimeTypeFromExtension;
    }
}
