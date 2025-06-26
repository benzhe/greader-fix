.class public final Lj05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzkr;

.field public final synthetic h:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzkr;)V
    .locals 0

    iput-object p1, p0, Lj05;->h:Lh15;

    iput-object p2, p0, Lj05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p3, p0, Lj05;->f:Z

    iput-object p4, p0, Lj05;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lj05;->h:Lh15;

    .line 1
    iget-object v1, v0, Lh15;->d:Lhw4;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Discarding data. Failed to set user property"

    .line 5
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lj05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "null reference"

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lj05;->h:Lh15;

    iget-boolean v2, p0, Lj05;->f:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lj05;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 9
    :goto_0
    iget-object v3, p0, Lj05;->e:Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lh15;->x(Lhw4;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lj05;->h:Lh15;

    .line 11
    invoke-virtual {v0}, Lh15;->s()V

    return-void
.end method
