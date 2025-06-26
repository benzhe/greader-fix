.class public final Lux4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzaa;

.field public final synthetic f:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 0

    iput-object p1, p0, Lux4;->f:Lky4;

    iput-object p2, p0, Lux4;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lux4;->f:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lux4;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lux4;->f:Lky4;

    .line 4
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 5
    iget-object v1, p0, Lux4;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lj25;->G(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v1, v2}, Lj25;->t(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lux4;->f:Lky4;

    .line 10
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 11
    iget-object v1, p0, Lux4;->e:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Lj25;->G(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0, v1, v2}, Lj25;->s(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method
