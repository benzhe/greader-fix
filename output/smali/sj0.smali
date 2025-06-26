.class public final Lsj0;
.super Lyj0;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/Object;

.field public final l:Lxw0;

.field public final m:Landroid/app/Activity;

.field public n:Ljy0;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/LinearLayout;

.field public q:Lyp1;

.field public r:Landroid/widget/PopupWindow;

.field public s:Landroid/widget/RelativeLayout;

.field public t:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 2
    invoke-static {v2, v1}, Lbi;->o0(IZ)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lxw0;Lyp1;)V
    .locals 2

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lyj0;-><init>(Lxw0;Ljava/lang/String;)V

    const-string v0, "top-right"

    .line 2
    iput-object v0, p0, Lsj0;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsj0;->d:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsj0;->e:I

    .line 5
    iput v0, p0, Lsj0;->f:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lsj0;->g:I

    .line 7
    iput v0, p0, Lsj0;->h:I

    .line 8
    iput v0, p0, Lsj0;->i:I

    .line 9
    iput v1, p0, Lsj0;->j:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsj0;->k:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lsj0;->l:Lxw0;

    .line 12
    invoke-interface {p1}, Lxw0;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lsj0;->m:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lsj0;->q:Lyp1;

    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsj0;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lsj0;->r:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object v1, p0, Lsj0;->s:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lsj0;->l:Lxw0;

    invoke-interface {v2}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lsj0;->t:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lsj0;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lsj0;->t:Landroid/view/ViewGroup;

    iget-object v2, p0, Lsj0;->l:Lxw0;

    invoke-interface {v2}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lsj0;->l:Lxw0;

    iget-object v2, p0, Lsj0;->n:Ljy0;

    invoke-interface {v1, v2}, Lxw0;->J(Ljy0;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    .line 9
    invoke-virtual {p0, p1}, Lyj0;->e(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lsj0;->q:Lyp1;

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p1, Lyp1;->a:Lop1;

    .line 12
    iget-object p1, p1, Lop1;->b:Ldb1;

    .line 13
    sget-object v1, Lcb1;->a:Lzd1;

    invoke-virtual {p1, v1}, Lxd1;->D0(Lzd1;)V

    :cond_1
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lsj0;->r:Landroid/widget/PopupWindow;

    .line 15
    iput-object p1, p0, Lsj0;->s:Landroid/widget/RelativeLayout;

    .line 16
    iput-object p1, p0, Lsj0;->t:Landroid/view/ViewGroup;

    .line 17
    iput-object p1, p0, Lsj0;->p:Landroid/widget/LinearLayout;

    .line 18
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
