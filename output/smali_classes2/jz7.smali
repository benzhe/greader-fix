.class public final synthetic Ljz7;
.super Ljava/lang/Object;
.source "FailableFunction.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TV;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Llx7;

    invoke-direct {v0, p0, p1}, Llx7;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method

.method public static $default$compose(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableFunction;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "-TV;+TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TV;TR;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lkx7;

    invoke-direct {v0, p0, p1}, Lkx7;-><init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V

    return-object v0
.end method
