package defpackage;

/* loaded from: classes.dex */
public final class jf6 implements ee6 {
    public final ne6 e;

    public jf6(ne6 ne6Var) {
        this.e = ne6Var;
    }

    public de6<?> a(ne6 ne6Var, od6 od6Var, dg6<?> dg6Var, fe6 fe6Var) {
        de6<?> sf6Var;
        Object objA = ne6Var.a(new dg6(fe6Var.value())).a();
        if (objA instanceof de6) {
            sf6Var = (de6) objA;
        } else if (objA instanceof ee6) {
            sf6Var = ((ee6) objA).b(od6Var, dg6Var);
        } else {
            boolean z = objA instanceof ae6;
            if (!z && !(objA instanceof sd6)) {
                StringBuilder sbZ = jo.z("Invalid attempt to bind an instance of ");
                sbZ.append(objA.getClass().getName());
                sbZ.append(" as a @JsonAdapter for ");
                sbZ.append(dg6Var.toString());
                sbZ.append(". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                throw new IllegalArgumentException(sbZ.toString());
            }
            sf6Var = new sf6<>(z ? (ae6) objA : null, objA instanceof sd6 ? (sd6) objA : null, od6Var, dg6Var, null);
        }
        return (sf6Var == null || !fe6Var.nullSafe()) ? sf6Var : new ce6(sf6Var);
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        fe6 fe6Var = (fe6) dg6Var.a.getAnnotation(fe6.class);
        if (fe6Var == null) {
            return null;
        }
        return (de6<T>) a(this.e, od6Var, dg6Var, fe6Var);
    }
}
