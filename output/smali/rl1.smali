.class public final synthetic Lrl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# instance fields
.field public final a:Lpl1;

.field public final b:Landroid/view/WindowManager;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpl1;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrl1;->a:Lpl1;

    iput-object p2, p0, Lrl1;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lrl1;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object p2, p0, Lrl1;->a:Lpl1;

    iget-object v0, p0, Lrl1;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lrl1;->c:Landroid/view/View;

    check-cast p1, Lxw0;

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Hide native ad policy validator overlay."

    .line 2
    invoke-static {v2}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lxw0;->destroy()V

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 8
    iget-object v0, p2, Lpl1;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object p2, p2, Lpl1;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
