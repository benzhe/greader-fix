.class public Lym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxm;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lym;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Lym$a;

    invoke-direct {v0, p0}, Lym$a;-><init>(Lym;)V

    iput-object v0, p0, Lym;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lqm;

    invoke-direct {v0, p1}, Lqm;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lym;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
