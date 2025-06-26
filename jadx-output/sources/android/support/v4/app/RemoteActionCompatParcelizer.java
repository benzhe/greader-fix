package android.support.v4.app;

import androidx.core.app.RemoteActionCompat;
import defpackage.ui;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class RemoteActionCompatParcelizer extends androidx.core.app.RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(ui uiVar) {
        return androidx.core.app.RemoteActionCompatParcelizer.read(uiVar);
    }

    public static void write(RemoteActionCompat remoteActionCompat, ui uiVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        androidx.core.app.RemoteActionCompatParcelizer.write(remoteActionCompat, uiVar);
    }
}
