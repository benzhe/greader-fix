.class public final synthetic Ls41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led1;


# instance fields
.field public final e:Lkc1;


# direct methods
.method public constructor <init>(Lkc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls41;->e:Lkc1;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls41;->e:Lkc1;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Lkc1;->j:Z

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lkc1;->H0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
