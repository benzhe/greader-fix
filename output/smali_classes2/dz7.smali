.class public final synthetic Ldz7;
.super Ljava/lang/Object;
.source "FailableBiFunction.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiFunction<",
            "TT;TU;TV;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lpw7;

    invoke-direct {v0, p0, p1}, Lpw7;-><init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method
