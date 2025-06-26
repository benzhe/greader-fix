package defpackage;

import android.os.Environment;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class k40 implements Callable<Boolean> {
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
