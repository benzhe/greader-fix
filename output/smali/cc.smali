.class public abstract Lcc;
.super Lxi;
.source "SourceFile"


# instance fields
.field public final b:Lwb;

.field public final c:I

.field public d:Ldc;

.field public e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lwb;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lxi;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcc;->d:Ldc;

    .line 3
    iput-object v0, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    .line 4
    iput-object p1, p0, Lcc;->b:Lwb;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcc;->c:I

    return-void
.end method

.method public static l(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object p1, p0, Lcc;->d:Ldc;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcc;->b:Lwb;

    check-cast p1, Lxb;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p2, Lqb;

    invoke-direct {p2, p1}, Lqb;-><init>(Lxb;)V

    .line 6
    iput-object p2, p0, Lcc;->d:Ldc;

    .line 7
    :cond_0
    iget-object p1, p0, Lcc;->d:Ldc;

    invoke-virtual {p1, p3}, Ldc;->e(Landroidx/fragment/app/Fragment;)Ldc;

    .line 8
    iget-object p1, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcc;->d:Ldc;

    if-eqz p1, :cond_1

    .line 2
    check-cast p1, Lqb;

    .line 3
    iget-boolean v0, p1, Ldc;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Ldc;->i:Z

    .line 5
    iget-object v0, p1, Lqb;->r:Lxb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lxb;->V(Lxb$h;Z)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcc;->d:Ldc;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcc;->d:Ldc;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcc;->b:Lwb;

    check-cast v0, Lxb;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lqb;

    invoke-direct {v1, v0}, Lqb;-><init>(Lxb;)V

    .line 5
    iput-object v1, p0, Lcc;->d:Ldc;

    :cond_0
    int-to-long v0, p2

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcc;->l(IJ)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcc;->b:Lwb;

    invoke-virtual {v3, v2}, Lwb;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lcc;->d:Ldc;

    .line 9
    new-instance p2, Ldc$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v2}, Ldc$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Ldc;->b(Ldc$a;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p2}, Lcc;->k(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 11
    iget-object p2, p0, Lcc;->d:Ldc;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcc;->l(IJ)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2, v4, v2, p1, v3}, Ldc;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 16
    iget p2, p0, Lcc;->c:I

    if-ne p2, v3, :cond_2

    .line 17
    iget-object p1, p0, Lcc;->d:Ldc;

    sget-object p2, Lad$b;->h:Lad$b;

    invoke-virtual {p1, v2, p2}, Ldc;->h(Landroidx/fragment/app/Fragment;Lad$b;)Ldc;

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public f(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public h()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object p1, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 4
    iget p1, p0, Lcc;->c:I

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcc;->d:Ldc;

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcc;->b:Lwb;

    check-cast p1, Lxb;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lqb;

    invoke-direct {v0, p1}, Lqb;-><init>(Lxb;)V

    .line 9
    iput-object v0, p0, Lcc;->d:Ldc;

    .line 10
    :cond_0
    iget-object p1, p0, Lcc;->d:Ldc;

    iget-object v0, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    sget-object v1, Lad$b;->h:Lad$b;

    invoke-virtual {p1, v0, v1}, Ldc;->h(Landroidx/fragment/app/Fragment;Lad$b;)Ldc;

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 13
    iget p1, p0, Lcc;->c:I

    if-ne p1, p2, :cond_4

    .line 14
    iget-object p1, p0, Lcc;->d:Ldc;

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcc;->b:Lwb;

    check-cast p1, Lxb;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Lqb;

    invoke-direct {p2, p1}, Lqb;-><init>(Lxb;)V

    .line 18
    iput-object p2, p0, Lcc;->d:Ldc;

    .line 19
    :cond_3
    iget-object p1, p0, Lcc;->d:Ldc;

    sget-object p2, Lad$b;->i:Lad$b;

    invoke-virtual {p1, p3, p2}, Ldc;->h(Landroidx/fragment/app/Fragment;Lad$b;)Ldc;

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 21
    :goto_1
    iput-object p3, p0, Lcc;->e:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public j(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k(I)Landroidx/fragment/app/Fragment;
.end method
