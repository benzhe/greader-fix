.class public final synthetic Lqz7;
.super Ljava/lang/Object;
.source "FailablePredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lsy7;

    invoke-direct {v0, p0, p1}, Lsy7;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lty7;

    invoke-direct {v0, p0}, Lty7;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lry7;

    invoke-direct {v0, p0, p1}, Lry7;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method
