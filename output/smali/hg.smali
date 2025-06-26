.class public abstract Lhg;
.super Log;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Log;"
    }
.end annotation


# direct methods
.method public constructor <init>(Llg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Log;-><init>(Llg;)V

    return-void
.end method


# virtual methods
.method public abstract d(Leh;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Log;->a()Leh;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lhg;->d(Leh;Ljava/lang/Object;)V

    .line 3
    iget-object p1, v0, Leh;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Log;->c:Leh;

    if-ne v0, p1, :cond_0

    .line 5
    iget-object p1, p0, Log;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0, v0}, Log;->c(Leh;)V

    throw p1
.end method
