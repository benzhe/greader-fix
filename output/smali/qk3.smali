.class public final Lqk3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lrk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrk3<",
            "+",
            "Lpi3;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lel3;->a:I

    .line 3
    new-instance v0, Lgl3;

    invoke-direct {v0, p1}, Lgl3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lqk3;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqk3;->b:Lrk3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqk3;->c:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lqk3;->b:Lrk3;

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lrk3;->g:I

    .line 4
    iget-object v2, v0, Lrk3;->i:Ljava/io/IOException;

    if-eqz v2, :cond_1

    iget v0, v0, Lrk3;->j:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    throw v0
.end method
