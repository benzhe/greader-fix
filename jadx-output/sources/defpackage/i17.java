package defpackage;

/* loaded from: classes2.dex */
public enum i17 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");

    public final String e;

    i17(String str) {
        this.e = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.e;
    }
}
