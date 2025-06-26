.class public final synthetic Lez7;
.super Ljava/lang/Object;
.source "FailableBiPredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrw7;

    invoke-direct {v0, p0, p1}, Lrw7;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lqw7;

    invoke-direct {v0, p0}, Lqw7;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "-TT;-TU;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableBiPredicate<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Luw7;

    invoke-direct {v0, p0, p1}, Luw7;-><init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V

    return-object v0
.end method
