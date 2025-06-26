.class public final synthetic Lyx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx7;->a:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iput-object p2, p0, Lyx7;->b:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lmz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Lyx7;->a:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iget-object v1, p0, Lyx7;->b:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    .line 1
    invoke-interface {v1, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lmz7;->$default$compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object p1

    return-object p1
.end method
