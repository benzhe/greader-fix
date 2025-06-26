.class public Lz47;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final e:Lx47;

.field public final f:Li47;

.field public final g:Z


# direct methods
.method public constructor <init>(Lx47;Li47;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lx47;->c(Lx47;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lx47;->c:Ljava/lang/Throwable;

    .line 3
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lz47;->e:Lx47;

    .line 5
    iput-object p2, p0, Lz47;->f:Li47;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lz47;->g:Z

    .line 7
    invoke-virtual {p0}, Lz47;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lz47;->g:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
