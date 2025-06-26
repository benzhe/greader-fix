package defpackage;

import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class sd {

    public interface a<D> {
        void f(wd<D> wdVar, D d);

        wd<D> g(int i, Bundle bundle);

        void k(wd<D> wdVar);
    }

    public static <T extends dd & rd> sd b(T t) {
        return new td(t, t.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> wd<D> c(int i, Bundle bundle, a<D> aVar);
}
