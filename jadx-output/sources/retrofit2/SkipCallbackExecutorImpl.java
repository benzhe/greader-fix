package retrofit2;

import defpackage.jo;
import java.lang.annotation.Annotation;

/* loaded from: classes2.dex */
public final class SkipCallbackExecutorImpl implements SkipCallbackExecutor {
    private static final SkipCallbackExecutor INSTANCE = new SkipCallbackExecutorImpl();

    public static Annotation[] ensurePresent(Annotation[] annotationArr) {
        if (Utils.isAnnotationPresent(annotationArr, SkipCallbackExecutor.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = INSTANCE;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends Annotation> annotationType() {
        return SkipCallbackExecutor.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        return obj instanceof SkipCallbackExecutor;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder sbZ = jo.z("@");
        sbZ.append(SkipCallbackExecutor.class.getName());
        sbZ.append("()");
        return sbZ.toString();
    }
}
