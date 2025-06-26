.class public final synthetic Lpw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableBiFunction;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw7;->a:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iput-object p2, p0, Lpw7;->b:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .locals 0

    invoke-static {p0, p1}, Ldz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/function/FailableBiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpw7;->a:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iget-object v1, p0, Lpw7;->b:Lorg/apache/commons/lang3/function/FailableFunction;

    .line 1
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/lang3/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
