package org.jsoup.helper;

/* loaded from: classes2.dex */
public final class Validate {
    private Validate() {
    }

    public static void fail(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void isFalse(boolean z) {
        if (z) {
            throw new IllegalArgumentException("Must be false");
        }
    }

    public static void isTrue(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Must be true");
        }
    }

    public static void noNullElements(Object[] objArr) {
        noNullElements(objArr, "Array must not contain any null objects");
    }

    public static void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    public static void notNull(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object must not be null");
        }
    }

    public static void wtf(String str) {
        throw new IllegalStateException(str);
    }

    public static void isFalse(boolean z, String str) {
        if (z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void isTrue(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void noNullElements(Object[] objArr, String str) {
        for (Object obj : objArr) {
            if (obj == null) {
                throw new IllegalArgumentException(str);
            }
        }
    }

    public static void notNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void notEmpty(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }
}
