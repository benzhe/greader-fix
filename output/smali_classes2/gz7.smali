.class public final synthetic Lgz7;
.super Ljava/lang/Object;
.source "FailableDoubleConsumer.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableDoubleConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lyw7;

    invoke-direct {v0, p0, p1}, Lyw7;-><init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V

    return-object v0
.end method
