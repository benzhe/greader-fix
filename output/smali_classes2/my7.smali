.class public final synthetic Lmy7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy7;->a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iput-object p2, p0, Lmy7;->b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lpz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public final applyAsLong(J)J
    .locals 2

    iget-object v0, p0, Lmy7;->a:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iget-object v1, p0, Lmy7;->b:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .locals 0

    invoke-static {p0, p1}, Lpz7;->$default$compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object p1

    return-object p1
.end method
