.class public final Lcy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic f:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcy4;->f:Lky4;

    iput-object p2, p0, Lcy4;->e:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcy4;->f:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Lcy4;->f:Lky4;

    .line 3
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 4
    iget-object v1, p0, Lcy4;->e:Lcom/google/android/gms/measurement/internal/zzp;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, v0, Lj25;->j:Lrx4;

    .line 7
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/4 v3, 0x0

    .line 8
    sget-object v4, Lew4;->G0:Ldw4;

    invoke-virtual {v2, v3, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lj25;->j:Lrx4;

    .line 9
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lox4;->d()V

    .line 11
    invoke-virtual {v0}, Lj25;->S()V

    .line 12
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    invoke-static {v2}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v2

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v3

    iget-object v4, v0, Lj25;->j:Lrx4;

    .line 15
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 16
    iget-object v4, v4, Lqw4;->n:Low4;

    .line 17
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 18
    invoke-virtual {v4, v6, v5, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lj25;->T(Ljava/lang/String;Lds4;)V

    .line 20
    invoke-virtual {v2, v3}, Lds4;->f(Lds4;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Lj25;->n(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method
