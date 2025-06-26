package defpackage;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class c77 {
    public final ArrayList<String> a = new ArrayList<>();

    public c77 a(Object obj) {
        this.a.add(String.valueOf(obj));
        return this;
    }

    public c77 b(String str, Object obj) {
        this.a.add(str + "=" + obj);
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
