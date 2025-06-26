.class public final Lbl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmp1;

.field public final b:Lio1;

.field public final c:Ld31;

.field public final d:Lek1;


# direct methods
.method public constructor <init>(Lmp1;Lio1;Ld31;Lek1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbl1;->a:Lmp1;

    .line 3
    iput-object p2, p0, Lbl1;->b:Lio1;

    .line 4
    iput-object p3, p0, Lbl1;->c:Ld31;

    .line 5
    iput-object p4, p0, Lbl1;->d:Lek1;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lix0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbl1;->a:Lmp1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->C()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    new-instance v1, Lal1;

    invoke-direct {v1, p0}, Lal1;-><init>(Lbl1;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 5
    new-instance v1, Ldl1;

    invoke-direct {v1, p0}, Ldl1;-><init>(Lbl1;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 6
    iget-object v1, p0, Lbl1;->b:Lio1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcl1;

    invoke-direct {v3, p0}, Lcl1;-><init>(Lbl1;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lio1;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;)V

    .line 7
    iget-object v1, p0, Lbl1;->b:Lio1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lfl1;

    invoke-direct {v3, p0}, Lfl1;-><init>(Lbl1;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lio1;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;)V

    .line 8
    iget-object v1, p0, Lbl1;->b:Lio1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lel1;

    invoke-direct {v3, p0}, Lel1;-><init>(Lbl1;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lio1;->c(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lkb0;)V

    .line 9
    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
