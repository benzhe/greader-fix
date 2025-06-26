.class public final Lhy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ln25;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lhy4;->f:Lky4;

    iput-object p2, p0, Lhy4;->e:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lhy4;->f:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lhy4;->f:Lky4;

    .line 3
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 4
    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v1, p0, Lhy4;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgs4;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
