.class public final Lgy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzkr;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic g:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lgy4;->g:Lky4;

    iput-object p2, p0, Lgy4;->e:Lcom/google/android/gms/measurement/internal/zzkr;

    iput-object p3, p0, Lgy4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgy4;->g:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lgy4;->e:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgy4;->g:Lky4;

    .line 4
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 5
    iget-object v1, p0, Lgy4;->e:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v2, p0, Lgy4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    .line 6
    invoke-virtual {v0, v1, v2}, Lj25;->q(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgy4;->g:Lky4;

    .line 7
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 8
    iget-object v1, p0, Lgy4;->e:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v2, p0, Lgy4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    .line 9
    invoke-virtual {v0, v1, v2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
