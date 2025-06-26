package defpackage;

/* loaded from: classes2.dex */
public final class nm7 implements dm7 {
    public final Class<?> e;

    public nm7(Class<?> cls, String str) {
        im7.e(cls, "jClass");
        im7.e(str, "moduleName");
        this.e = cls;
    }

    @Override // defpackage.dm7
    public Class<?> b() {
        return this.e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof nm7) && im7.a(this.e, ((nm7) obj).e);
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    public String toString() {
        return this.e.toString() + " (Kotlin reflection is not available)";
    }
}
