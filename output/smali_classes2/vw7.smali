.class public final synthetic Lvw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final synthetic b:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvw7;->a:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lvw7;->b:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lvw7;->a:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object v1, p0, Lvw7;->b:Lorg/apache/commons/lang3/function/FailableConsumer;

    .line 1
    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-interface {v1, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;
    .locals 0

    invoke-static {p0, p1}, Lfz7;->$default$andThen(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object p1

    return-object p1
.end method
