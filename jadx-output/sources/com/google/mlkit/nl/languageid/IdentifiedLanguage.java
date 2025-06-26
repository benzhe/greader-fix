package com.google.mlkit.nl.languageid;

import com.google.android.apps.common.proguard.UsedByNative;
import defpackage.al4;
import defpackage.bk4;
import defpackage.c50;
import java.util.Arrays;

@UsedByNative("language_id_jni.cc")
/* loaded from: classes.dex */
public final class IdentifiedLanguage {
    public final String a;
    public final float b;

    @UsedByNative("language_id_jni.cc")
    public IdentifiedLanguage(String str, float f) {
        this.a = str;
        this.b = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdentifiedLanguage)) {
            return false;
        }
        IdentifiedLanguage identifiedLanguage = (IdentifiedLanguage) obj;
        return Float.compare(identifiedLanguage.b, this.b) == 0 && c50.J2(this.a, identifiedLanguage.a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }

    public final String toString() {
        al4 al4Var = new al4(IdentifiedLanguage.class.getSimpleName(), null);
        String str = this.a;
        bk4 bk4Var = new bk4(null);
        al4Var.c.c = bk4Var;
        al4Var.c = bk4Var;
        bk4Var.b = str;
        bk4Var.a = "languageTag";
        String strValueOf = String.valueOf(this.b);
        bk4 bk4Var2 = new bk4(null);
        al4Var.c.c = bk4Var2;
        al4Var.c = bk4Var2;
        bk4Var2.b = strValueOf;
        bk4Var2.a = "confidence";
        return al4Var.toString();
    }
}
