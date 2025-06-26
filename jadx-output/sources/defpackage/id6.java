package defpackage;

import java.lang.reflect.Field;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class id6 implements jd6 {
    public static final id6 e;
    public static final id6 f;
    public static final id6 g;
    public static final id6 h;
    public static final id6 i;
    public static final id6 j;
    public static final /* synthetic */ id6[] k;

    public enum a extends id6 {
        public a(String str, int i) {
            super(str, i, null);
        }

        @Override // defpackage.jd6
        public String i(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        e = aVar;
        id6 id6Var = new id6("UPPER_CAMEL_CASE", 1) { // from class: id6.b
            @Override // defpackage.jd6
            public String i(Field field) {
                return id6.l(field.getName());
            }
        };
        f = id6Var;
        id6 id6Var2 = new id6("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: id6.c
            @Override // defpackage.jd6
            public String i(Field field) {
                return id6.l(id6.k(field.getName(), StringUtils.SPACE));
            }
        };
        g = id6Var2;
        id6 id6Var3 = new id6("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: id6.d
            @Override // defpackage.jd6
            public String i(Field field) {
                return id6.k(field.getName(), "_").toLowerCase(Locale.ENGLISH);
            }
        };
        h = id6Var3;
        id6 id6Var4 = new id6("LOWER_CASE_WITH_DASHES", 4) { // from class: id6.e
            @Override // defpackage.jd6
            public String i(Field field) {
                return id6.k(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        };
        i = id6Var4;
        id6 id6Var5 = new id6("LOWER_CASE_WITH_DOTS", 5) { // from class: id6.f
            @Override // defpackage.jd6
            public String i(Field field) {
                return id6.k(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        };
        j = id6Var5;
        k = new id6[]{aVar, id6Var, id6Var2, id6Var3, id6Var4, id6Var5};
    }

    public id6(String str, int i2, a aVar) {
    }

    public static String k(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String l(String str) {
        int length = str.length() - 1;
        int i2 = 0;
        while (!Character.isLetter(str.charAt(i2)) && i2 < length) {
            i2++;
        }
        char cCharAt = str.charAt(i2);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        if (i2 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i2) + upperCase + str.substring(i2 + 1);
    }

    public static id6 valueOf(String str) {
        return (id6) Enum.valueOf(id6.class, str);
    }

    public static id6[] values() {
        return (id6[]) k.clone();
    }
}
