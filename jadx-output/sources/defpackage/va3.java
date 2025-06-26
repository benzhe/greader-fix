package defpackage;

/* loaded from: classes.dex */
public abstract class va3 {
    public static va3 b(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new sa3(cls.getSimpleName()) : new ua3(cls.getSimpleName());
    }

    public abstract void a(String str);
}
