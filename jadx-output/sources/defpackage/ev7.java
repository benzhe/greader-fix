package defpackage;

import java.lang.reflect.Field;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class ev7 implements Function {
    public static final /* synthetic */ ev7 a = new ev7();

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((Field) obj).getName();
    }
}
