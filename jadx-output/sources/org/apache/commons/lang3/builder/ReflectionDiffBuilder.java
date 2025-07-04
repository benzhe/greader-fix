package org.apache.commons.lang3.builder;

import defpackage.jo;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.reflect.FieldUtils;

/* loaded from: classes2.dex */
public class ReflectionDiffBuilder<T> implements Builder<DiffResult<T>> {
    private final DiffBuilder<T> diffBuilder;
    private final Object left;
    private final Object right;

    public ReflectionDiffBuilder(T t, T t2, ToStringStyle toStringStyle) {
        this.left = t;
        this.right = t2;
        this.diffBuilder = new DiffBuilder<>(t, t2, toStringStyle);
    }

    private boolean accept(Field field) {
        if (field.getName().indexOf(36) == -1 && !Modifier.isTransient(field.getModifiers())) {
            return !Modifier.isStatic(field.getModifiers());
        }
        return false;
    }

    private void appendFields(Class<?> cls) {
        for (Field field : FieldUtils.getAllFields(cls)) {
            if (accept(field)) {
                try {
                    this.diffBuilder.append(field.getName(), FieldUtils.readField(field, this.left, true), FieldUtils.readField(field, this.right, true));
                } catch (IllegalAccessException e) {
                    StringBuilder sbZ = jo.z("Unexpected IllegalAccessException: ");
                    sbZ.append(e.getMessage());
                    throw new InternalError(sbZ.toString());
                }
            }
        }
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public DiffResult<T> build() {
        if (this.left.equals(this.right)) {
            return this.diffBuilder.build();
        }
        appendFields(this.left.getClass());
        return this.diffBuilder.build();
    }
}
