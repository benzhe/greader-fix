package defpackage;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public class ol5 {
    public final Context a;

    public ol5(Context context) {
        this.a = context;
    }

    public File a() {
        File file = new File(this.a.getFilesDir(), ".com.google.firebase.crashlytics");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        ah5.a.f("Couldn't create file");
        return null;
    }
}
