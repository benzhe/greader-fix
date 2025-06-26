.class public final Lf25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Lj25;


# direct methods
.method public constructor <init>(Lj25;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lf25;->f:Lj25;

    iput-object p2, p0, Lf25;->e:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lf25;->f:Lj25;

    .line 1
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    sget-object v1, Lew4;->G0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf25;->f:Lj25;

    iget-object v1, p0, Lf25;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v0

    invoke-virtual {v0}, Lds4;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf25;->e:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    invoke-static {v0}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v0

    invoke-virtual {v0}, Lds4;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lf25;->f:Lj25;

    invoke-virtual {v0}, Lj25;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 5
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf25;->f:Lj25;

    iget-object v1, p0, Lf25;->e:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0, v1}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    move-result-object v0

    invoke-virtual {v0}, Lvx4;->z()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method
