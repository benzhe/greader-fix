package org.apache.commons.lang3.function;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.commons.lang3.function.Failable;
import org.apache.commons.lang3.function.FailableConsumer;
import org.apache.commons.lang3.stream.Streams;

/* loaded from: classes2.dex */
public class Failable {
    private Failable() {
    }

    public static <T, U, E extends Throwable> void accept(final FailableBiConsumer<T, U, E> failableBiConsumer, final T t, final U u) {
        run(new FailableRunnable() { // from class: kw7
            @Override // org.apache.commons.lang3.function.FailableRunnable
            public final void run() throws Throwable {
                failableBiConsumer.accept(t, u);
            }
        });
    }

    public static <T, U, R, E extends Throwable> R apply(final FailableBiFunction<T, U, R, E> failableBiFunction, final T t, final U u) {
        return (R) get(new FailableSupplier() { // from class: ew7
            @Override // org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                return failableBiFunction.apply(t, u);
            }
        });
    }

    public static <E extends Throwable> double applyAsDouble(final FailableDoubleBinaryOperator<E> failableDoubleBinaryOperator, final double d, final double d2) {
        return getAsDouble(new FailableDoubleSupplier() { // from class: dw7
            @Override // org.apache.commons.lang3.function.FailableDoubleSupplier
            public final double getAsDouble() {
                return failableDoubleBinaryOperator.applyAsDouble(d, d2);
            }
        });
    }

    public static <T, U> BiConsumer<T, U> asBiConsumer(final FailableBiConsumer<T, U, ?> failableBiConsumer) {
        return new BiConsumer() { // from class: fw7
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Failable.accept(failableBiConsumer, obj, obj2);
            }
        };
    }

    public static <T, U, R> BiFunction<T, U, R> asBiFunction(final FailableBiFunction<T, U, R, ?> failableBiFunction) {
        return new BiFunction() { // from class: yv7
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Failable.apply(failableBiFunction, obj, obj2);
            }
        };
    }

    public static <T, U> BiPredicate<T, U> asBiPredicate(final FailableBiPredicate<T, U, ?> failableBiPredicate) {
        return new BiPredicate() { // from class: iw7
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return Failable.test(failableBiPredicate, obj, obj2);
            }
        };
    }

    public static <V> Callable<V> asCallable(final FailableCallable<V, ?> failableCallable) {
        return new Callable() { // from class: xv7
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Failable.call(failableCallable);
            }
        };
    }

    public static <T> Consumer<T> asConsumer(final FailableConsumer<T, ?> failableConsumer) {
        return new Consumer() { // from class: aw7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Failable.accept((FailableConsumer<Object, E>) failableConsumer, obj);
            }
        };
    }

    public static <T, R> Function<T, R> asFunction(final FailableFunction<T, R, ?> failableFunction) {
        return new Function() { // from class: cw7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Failable.apply(failableFunction, obj);
            }
        };
    }

    public static <T> Predicate<T> asPredicate(final FailablePredicate<T, ?> failablePredicate) {
        return new Predicate() { // from class: vv7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Failable.test(failablePredicate, obj);
            }
        };
    }

    public static Runnable asRunnable(final FailableRunnable<?> failableRunnable) {
        return new Runnable() { // from class: tv7
            @Override // java.lang.Runnable
            public final void run() {
                Failable.run(failableRunnable);
            }
        };
    }

    public static <T> Supplier<T> asSupplier(final FailableSupplier<T, ?> failableSupplier) {
        return new Supplier() { // from class: gw7
            @Override // java.util.function.Supplier
            public final Object get() {
                return Failable.get(failableSupplier);
            }
        };
    }

    public static <V, E extends Throwable> V call(final FailableCallable<V, E> failableCallable) {
        failableCallable.getClass();
        return (V) get(new FailableSupplier() { // from class: bz7
            @Override // org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                return failableCallable.call();
            }
        });
    }

    public static <T, E extends Throwable> T get(FailableSupplier<T, E> failableSupplier) {
        try {
            return failableSupplier.get();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static <E extends Throwable> boolean getAsBoolean(FailableBooleanSupplier<E> failableBooleanSupplier) {
        try {
            return failableBooleanSupplier.getAsBoolean();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static <E extends Throwable> double getAsDouble(FailableDoubleSupplier<E> failableDoubleSupplier) {
        try {
            return failableDoubleSupplier.getAsDouble();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static <E extends Throwable> int getAsInt(FailableIntSupplier<E> failableIntSupplier) {
        try {
            return failableIntSupplier.getAsInt();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static <E extends Throwable> long getAsLong(FailableLongSupplier<E> failableLongSupplier) {
        try {
            return failableLongSupplier.getAsLong();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static RuntimeException rethrow(Throwable th) {
        Objects.requireNonNull(th, "throwable");
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        if (th instanceof IOException) {
            throw new UncheckedIOException((IOException) th);
        }
        throw new UndeclaredThrowableException(th);
    }

    public static <E extends Throwable> void run(FailableRunnable<E> failableRunnable) {
        try {
            failableRunnable.run();
        } catch (Throwable th) {
            throw rethrow(th);
        }
    }

    public static <E> Streams.FailableStream<E> stream(Collection<E> collection) {
        return new Streams.FailableStream<>(collection.stream());
    }

    public static <T, U, E extends Throwable> boolean test(final FailableBiPredicate<T, U, E> failableBiPredicate, final T t, final U u) {
        return getAsBoolean(new FailableBooleanSupplier() { // from class: wv7
            @Override // org.apache.commons.lang3.function.FailableBooleanSupplier
            public final boolean getAsBoolean() {
                return failableBiPredicate.test(t, u);
            }
        });
    }

    @SafeVarargs
    public static void tryWithResources(FailableRunnable<? extends Throwable> failableRunnable, FailableConsumer<Throwable, ? extends Throwable> failableConsumer, FailableRunnable<? extends Throwable>... failableRunnableArr) {
        if (failableConsumer == null) {
            failableConsumer = new FailableConsumer() { // from class: sv7
                @Override // org.apache.commons.lang3.function.FailableConsumer
                public final void accept(Object obj) {
                    Failable.rethrow((Throwable) obj);
                }

                @Override // org.apache.commons.lang3.function.FailableConsumer
                public /* synthetic */ FailableConsumer andThen(FailableConsumer failableConsumer2) {
                    return fz7.$default$andThen(this, failableConsumer2);
                }
            };
        }
        if (failableRunnableArr != null) {
            for (FailableRunnable<? extends Throwable> failableRunnable2 : failableRunnableArr) {
                Objects.requireNonNull(failableRunnable2, "runnable");
            }
        }
        Throwable th = null;
        try {
            failableRunnable.run();
        } catch (Throwable th2) {
            th = th2;
        }
        if (failableRunnableArr != null) {
            for (FailableRunnable<? extends Throwable> failableRunnable3 : failableRunnableArr) {
                try {
                    failableRunnable3.run();
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    }
                }
            }
        }
        if (th != null) {
            try {
                failableConsumer.accept(th);
            } catch (Throwable th4) {
                throw rethrow(th4);
            }
        }
    }

    public static <T, E extends Throwable> void accept(final FailableConsumer<T, E> failableConsumer, final T t) {
        run(new FailableRunnable() { // from class: uv7
            @Override // org.apache.commons.lang3.function.FailableRunnable
            public final void run() throws Throwable {
                failableConsumer.accept(t);
            }
        });
    }

    public static <T, R, E extends Throwable> R apply(final FailableFunction<T, R, E> failableFunction, final T t) {
        return (R) get(new FailableSupplier() { // from class: hw7
            @Override // org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                return failableFunction.apply(t);
            }
        });
    }

    public static <T> Streams.FailableStream<T> stream(Stream<T> stream) {
        return new Streams.FailableStream<>(stream);
    }

    public static <T, E extends Throwable> boolean test(final FailablePredicate<T, E> failablePredicate, final T t) {
        return getAsBoolean(new FailableBooleanSupplier() { // from class: jw7
            @Override // org.apache.commons.lang3.function.FailableBooleanSupplier
            public final boolean getAsBoolean() {
                return failablePredicate.test(t);
            }
        });
    }

    public static <E extends Throwable> void accept(final FailableDoubleConsumer<E> failableDoubleConsumer, final double d) {
        run(new FailableRunnable() { // from class: lw7
            @Override // org.apache.commons.lang3.function.FailableRunnable
            public final void run() throws Throwable {
                failableDoubleConsumer.accept(d);
            }
        });
    }

    public static <E extends Throwable> void accept(final FailableIntConsumer<E> failableIntConsumer, final int i) {
        run(new FailableRunnable() { // from class: bw7
            @Override // org.apache.commons.lang3.function.FailableRunnable
            public final void run() throws Throwable {
                failableIntConsumer.accept(i);
            }
        });
    }

    public static <E extends Throwable> void accept(final FailableLongConsumer<E> failableLongConsumer, final long j) {
        run(new FailableRunnable() { // from class: zv7
            @Override // org.apache.commons.lang3.function.FailableRunnable
            public final void run() throws Throwable {
                failableLongConsumer.accept(j);
            }
        });
    }

    @SafeVarargs
    public static void tryWithResources(FailableRunnable<? extends Throwable> failableRunnable, FailableRunnable<? extends Throwable>... failableRunnableArr) {
        tryWithResources(failableRunnable, null, failableRunnableArr);
    }
}
