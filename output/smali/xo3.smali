.class public final synthetic Lxo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxs0;

.field public final f:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lxs0;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo3;->e:Lxs0;

    iput-object p2, p0, Lxo3;->f:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxo3;->e:Lxs0;

    iget-object v1, p0, Lxo3;->f:Ljava/util/concurrent/Future;

    .line 2
    invoke-virtual {v0}, Lxs0;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
