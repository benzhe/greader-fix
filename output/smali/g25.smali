.class public final Lg25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lh25;


# direct methods
.method public constructor <init>(Lh25;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lg25;->g:Lh25;

    iput-object p2, p0, Lg25;->e:Ljava/lang/String;

    iput-object p3, p0, Lg25;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lg25;->g:Lh25;

    iget-object v0, v0, Lh25;->a:Lj25;

    .line 1
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg25;->e:Ljava/lang/String;

    iget-object v4, p0, Lg25;->f:Landroid/os/Bundle;

    iget-object v0, p0, Lg25;->g:Lh25;

    iget-object v0, v0, Lh25;->a:Lj25;

    .line 4
    iget-object v0, v0, Lj25;->j:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v6

    const-string v3, "_err"

    const-string v5, "auto"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7
    invoke-virtual/range {v1 .. v10}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-object v1, p0, Lg25;->g:Lh25;

    iget-object v1, v1, Lh25;->a:Lj25;

    iget-object v2, p0, Lg25;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v0, v2}, Lj25;->W(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
