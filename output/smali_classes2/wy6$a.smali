.class public Lwy6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwy6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lwy6;


# direct methods
.method public constructor <init>(Lwy6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwy6$a;->e:Lwy6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwy6$a;->e:Lwy6;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lwy6$a;->e:Lwy6;

    .line 3
    iget-object v2, v1, Lwy6;->o:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lwy6;->y()V

    .line 6
    iget-object v1, p0, Lwy6$a;->e:Lwy6;

    .line 7
    invoke-virtual {v1}, Lwy6;->x()V

    .line 8
    iget-object v1, p0, Lwy6$a;->e:Lwy6;

    .line 9
    invoke-virtual {v1}, Lwy6;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lwy6$a;->e:Lwy6;

    .line 11
    invoke-virtual {v1}, Lwy6;->q()V

    .line 12
    iget-object v1, p0, Lwy6$a;->e:Lwy6;

    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lwy6;->q:I

    .line 14
    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
