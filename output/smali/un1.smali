.class public final Lun1;
.super Lcd0;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Li70;


# instance fields
.field public e:Landroid/view/View;

.field public f:Lsu3;

.field public g:Lkj1;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lkj1;Lwj1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcd0;-><init>()V

    .line 2
    invoke-virtual {p2}, Lwj1;->n()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lun1;->e:Landroid/view/View;

    .line 3
    invoke-virtual {p2}, Lwj1;->h()Lsu3;

    move-result-object v0

    iput-object v0, p0, Lun1;->f:Lsu3;

    .line 4
    iput-object p1, p0, Lun1;->g:Lkj1;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lun1;->h:Z

    .line 6
    iput-boolean p1, p0, Lun1;->i:Z

    .line 7
    invoke-virtual {p2}, Lwj1;->o()Lxw0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p2}, Lwj1;->o()Lxw0;

    move-result-object p1

    invoke-interface {p1, p0}, Lxw0;->H(Li70;)V

    :cond_0
    return-void
.end method

.method public static X6(Ldd0;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ldd0;->X2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 2
    invoke-static {p1, p0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final G4(Lx20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lwn1;

    invoke-direct {v0}, Lwn1;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v0}, Lun1;->W6(Lx20;Ldd0;)V

    return-void
.end method

.method public final W6(Lx20;Ldd0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lun1;->h:Z

    if-eqz v0, :cond_0

    const-string p1, "Instream ad can not be shown after destroy()."

    .line 3
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-static {p2, p1}, Lun1;->X6(Ldd0;I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lun1;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lun1;->f:Lsu3;

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lun1;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "Instream ad should not be used again."

    .line 7
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    .line 8
    invoke-static {p2, v1}, Lun1;->X6(Ldd0;I)V

    return-void

    .line 9
    :cond_2
    iput-boolean v1, p0, Lun1;->i:Z

    .line 10
    invoke-virtual {p0}, Lun1;->Y6()V

    .line 11
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    iget-object v0, p0, Lun1;->e:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzls()Lft0;

    iget-object p1, p0, Lun1;->e:Landroid/view/View;

    invoke-static {p1, p0}, Lft0;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzls()Lft0;

    iget-object p1, p0, Lun1;->e:Landroid/view/View;

    invoke-static {p1, p0}, Lft0;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 15
    invoke-virtual {p0}, Lun1;->Z6()V

    .line 16
    :try_start_0
    invoke-interface {p2}, Ldd0;->a4()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 17
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Instream internal error: "

    if-nez v0, :cond_4

    const-string v0, "can not get video view."

    goto :goto_1

    :cond_4
    const-string v0, "can not get video controller."

    .line 18
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 19
    :goto_2
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    invoke-static {p2, p1}, Lun1;->X6(Ldd0;I)V

    return-void
.end method

.method public final Y6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lun1;->e:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lun1;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final Z6()V
    .locals 5

    .line 1
    iget-object v0, p0, Lun1;->g:Lkj1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lun1;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lun1;->e:Landroid/view/View;

    .line 4
    invoke-static {v4}, Lkj1;->o(Landroid/view/View;)Z

    move-result v4

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lkj1;->g(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public final a0()Lt70;
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lun1;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 3
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lun1;->g:Lkj1;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lkj1;->z:Lrj1;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lrj1;->a()Lt70;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lun1;->Y6()V

    .line 3
    iget-object v0, p0, Lun1;->g:Lkj1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lkj1;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lun1;->g:Lkj1;

    .line 6
    iput-object v0, p0, Lun1;->e:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lun1;->f:Lsu3;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lun1;->h:Z

    return-void
.end method

.method public final getVideoController()Lsu3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lun1;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 3
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lun1;->f:Lsu3;

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lun1;->Z6()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lun1;->Z6()V

    return-void
.end method
