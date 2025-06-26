.class public final synthetic Lhx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx7;->a:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iput-object p2, p0, Lhx7;->b:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Liz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsDouble(D)D
    .locals 2

    iget-object v0, p0, Lhx7;->a:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iget-object v1, p0, Lhx7;->b:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Liz7;->$default$compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    move-result-object p1

    return-object p1
.end method
