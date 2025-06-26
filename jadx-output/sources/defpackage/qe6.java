package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public class qe6<T> implements af6<T> {
    public final /* synthetic */ Type a;

    public qe6(ne6 ne6Var, Type type) {
        this.a = type;
    }

    @Override // defpackage.af6
    public T a() {
        Type type = this.a;
        if (!(type instanceof ParameterizedType)) {
            StringBuilder sbZ = jo.z("Invalid EnumSet type: ");
            sbZ.append(this.a.toString());
            throw new ud6(sbZ.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return (T) EnumSet.noneOf((Class) type2);
        }
        StringBuilder sbZ2 = jo.z("Invalid EnumSet type: ");
        sbZ2.append(this.a.toString());
        throw new ud6(sbZ2.toString());
    }
}
