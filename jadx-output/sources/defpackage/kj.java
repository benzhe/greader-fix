package defpackage;

import java.lang.reflect.InvocationTargetException;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes.dex */
public class kj {
    public static final lj a;

    static {
        lj hjVar;
        try {
            hjVar = new mj((WebViewProviderFactoryBoundaryInterface) g08.a(WebViewProviderFactoryBoundaryInterface.class, bi.C()));
        } catch (ClassNotFoundException unused) {
            hjVar = new hj();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
        a = hjVar;
    }
}
