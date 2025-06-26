.class public final synthetic Lnx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx7;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput-object p2, p0, Lnx7;->b:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lnx7;->a:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget-object v1, p0, Lnx7;->b:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    .line 1
    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->accept(I)V

    .line 2
    invoke-interface {v1, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->accept(I)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lkz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;

    move-result-object p1

    return-object p1
.end method
