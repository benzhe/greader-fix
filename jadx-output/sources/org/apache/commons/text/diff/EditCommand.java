package org.apache.commons.text.diff;

/* loaded from: classes2.dex */
public abstract class EditCommand<T> {
    private final T object;

    public EditCommand(T t) {
        this.object = t;
    }

    public abstract void accept(CommandVisitor<T> commandVisitor);

    public T getObject() {
        return this.object;
    }
}
