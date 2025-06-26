.class public final synthetic Llz7;
.super Ljava/lang/Object;
.source "FailableIntPredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx7;

    invoke-direct {v0, p0, p1}, Lrx7;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lux7;

    invoke-direct {v0, p0}, Lux7;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lsx7;

    invoke-direct {v0, p0, p1}, Lsx7;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method
