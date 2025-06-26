package defpackage;

import java.util.List;

/* loaded from: classes2.dex */
public class vm7 {
    public static List a(Object obj) {
        if (obj instanceof wm7) {
            ClassCastException classCastException = new ClassCastException(jo.o(obj.getClass().getName(), " cannot be cast to ", "kotlin.collections.MutableList"));
            im7.i(classCastException, vm7.class.getName());
            throw classCastException;
        }
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            im7.i(e, vm7.class.getName());
            throw e;
        }
    }
}
