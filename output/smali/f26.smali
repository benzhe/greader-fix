.class public Lf26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lye5;

.field public b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lye5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf26;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lf26;->a:Lye5;

    return-void
.end method
