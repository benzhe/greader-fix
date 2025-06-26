package defpackage;

import android.net.Uri;
import android.provider.BaseColumns;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class jp6 implements Serializable, BaseColumns {
    public static final Uri e = Uri.parse("content://com.noinnion.android.greader.reader.provider/tag2item");
    public static final String[] f = {"_id"};
    public static final String[][] g = {new String[]{"_id"}, new String[]{"tag_uid"}, new String[]{"item_uid"}};
}
