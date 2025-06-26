package defpackage;

import android.content.ContentResolver;
import android.provider.Settings;

/* loaded from: classes.dex */
public class f95 {
    public float a(ContentResolver contentResolver) {
        return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
    }
}
