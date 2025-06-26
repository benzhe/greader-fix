.class public final synthetic Lmz7;
.super Ljava/lang/Object;
.source "FailableIntUnaryOperator.java"


# direct methods
.method public static $default$andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lxx7;

    invoke-direct {v0, p0, p1}, Lxx7;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lyx7;

    invoke-direct {v0, p0, p1}, Lyx7;-><init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V

    return-object v0
.end method
