.class public final Ldy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic g:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Ldy4;->g:Lky4;

    iput-object p2, p0, Ldy4;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Ldy4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Ldy4;->g:Lky4;

    iget-object v1, p0, Ldy4;->e:Lcom/google/android/gms/measurement/internal/zzas;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    const-string v3, "_cmp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    .line 4
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    const-string v3, "_cis"

    .line 7
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "referrer broadcast"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "referrer API"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 10
    invoke-virtual {v0}, Lj25;->a()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->l:Low4;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event has been filtered "

    invoke-virtual {v0, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    .line 13
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    const-string v5, "_cmpx"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v1, v0

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Ldy4;->g:Lky4;

    .line 15
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 16
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Ldy4;->g:Lky4;

    .line 17
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 18
    iget-object v2, p0, Ldy4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    .line 19
    invoke-virtual {v0, v1, v2}, Lj25;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
