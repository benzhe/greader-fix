package defpackage;

import java.io.File;
import java.util.Map;

/* loaded from: classes.dex */
public interface xl5 {

    public enum a {
        JAVA,
        NATIVE
    }

    Map<String, String> a();

    String b();

    File c();

    File[] d();

    String e();

    a getType();

    void remove();
}
