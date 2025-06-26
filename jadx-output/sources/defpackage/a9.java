package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class a9 implements z8 {
    public final LocaleList a;

    public a9(LocaleList localeList) {
        this.a = localeList;
    }

    @Override // defpackage.z8
    public Object a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return this.a.equals(((z8) obj).a());
    }

    @Override // defpackage.z8
    public Locale get(int i) {
        return this.a.get(i);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.z8
    public int size() {
        return this.a.size();
    }

    public String toString() {
        return this.a.toString();
    }
}
