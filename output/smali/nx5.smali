.class public final Lnx5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Lnx5;->a:Ljava/util/concurrent/Executor;

    .line 2
    sget-object v0, Lmx5;->e:Lmx5;

    sput-object v0, Lnx5;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Ltx5;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Ltx5;-><init>(ILjava/util/concurrent/Executor;)V

    sput-object v0, Lnx5;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
