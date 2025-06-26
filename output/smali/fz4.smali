.class public final Lfz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfz4;->h:Lsz4;

    iput-object p2, p0, Lfz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lfz4;->f:Ljava/lang/String;

    iput-object p4, p0, Lfz4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lfz4;->h:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    iget-object v3, p0, Lfz4;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lfz4;->f:Ljava/lang/String;

    iget-object v5, p0, Lfz4;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lyv4;->d()V

    .line 3
    invoke-virtual {v0}, Lww4;->f()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v6

    new-instance v7, Ly05;

    move-object v1, v7

    move-object v2, v0

    .line 5
    invoke-direct/range {v1 .. v6}, Ly05;-><init>(Lh15;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {v0, v7}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method
