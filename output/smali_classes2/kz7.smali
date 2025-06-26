.class public final synthetic Lkz7;
.super Ljava/lang/Object;
.source "FailableIntConsumer.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lnx7;

    invoke-direct {v0, p0, p1}, Lnx7;-><init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V

    return-object v0
.end method
