package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public class fj6 implements zj6 {
    public static final fj6 a = new fj6();

    @Override // defpackage.zj6
    public yj6 a(Class<?> cls) {
        if (!gj6.class.isAssignableFrom(cls)) {
            StringBuilder sbZ = jo.z("Unsupported message type: ");
            sbZ.append(cls.getName());
            throw new IllegalArgumentException(sbZ.toString());
        }
        try {
            return (yj6) gj6.s(cls.asSubclass(gj6.class)).r(gj6.f.BUILD_MESSAGE_INFO, null, null);
        } catch (Exception e) {
            StringBuilder sbZ2 = jo.z("Unable to get message info for ");
            sbZ2.append(cls.getName());
            throw new RuntimeException(sbZ2.toString(), e);
        }
    }

    @Override // defpackage.zj6
    public boolean b(Class<?> cls) {
        return gj6.class.isAssignableFrom(cls);
    }
}
