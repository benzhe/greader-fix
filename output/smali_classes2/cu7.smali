.class public final synthetic Lcu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/Functions$FailableRunnable;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/Functions$FailableConsumer;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu7;->a:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    iput-object p2, p0, Lcu7;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcu7;->a:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    iget-object v1, p0, Lcu7;->b:Ljava/lang/Object;

    .line 1
    invoke-interface {v0, v1}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
