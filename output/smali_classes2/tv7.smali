.class public final synthetic Ltv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/commons/lang3/function/FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv7;->e:Lorg/apache/commons/lang3/function/FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltv7;->e:Lorg/apache/commons/lang3/function/FailableRunnable;

    .line 1
    invoke-static {v0}, Lorg/apache/commons/lang3/function/Failable;->run(Lorg/apache/commons/lang3/function/FailableRunnable;)V

    return-void
.end method
