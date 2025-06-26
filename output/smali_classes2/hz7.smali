.class public final synthetic Lhz7;
.super Ljava/lang/Object;
.source "FailableDoublePredicate.java"


# direct methods
.method public static $default$and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcx7;

    invoke-direct {v0, p0, p1}, Lcx7;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public static $default$negate(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lbx7;

    invoke-direct {v0, p0}, Lbx7;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method

.method public static $default$or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoublePredicate<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lax7;

    invoke-direct {v0, p0, p1}, Lax7;-><init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V

    return-object v0
.end method
