package org.apache.commons.text.lookup;

import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final class FunctionStringLookup<V> extends AbstractStringLookup {
    private final Function<String, V> function;

    private FunctionStringLookup(Function<String, V> function) {
        this.function = function;
    }

    public static <R> FunctionStringLookup<R> on(Function<String, R> function) {
        return new FunctionStringLookup<>(function);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        Function<String, V> function = this.function;
        if (function == null) {
            return null;
        }
        try {
            return Objects.toString(function.apply(str), null);
        } catch (IllegalArgumentException | NullPointerException | SecurityException unused) {
            return null;
        }
    }

    public String toString() {
        return super.toString() + " [function=" + this.function + "]";
    }

    public static <V> FunctionStringLookup<V> on(final Map<String, V> map) {
        map.getClass();
        return on(new Function() { // from class: yz7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return map.get((String) obj);
            }
        });
    }
}
