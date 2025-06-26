.class public Lpc;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final e:Landroid/os/Handler;

.field public final f:Ljava/lang/Runnable;

.field public final g:Landroid/widget/AdapterView$OnItemClickListener;

.field public h:Landroid/widget/ListAdapter;

.field public i:Landroid/widget/ListView;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpc;->e:Landroid/os/Handler;

    .line 3
    new-instance v0, Lpc$a;

    invoke-direct {v0, p0}, Lpc$a;-><init>(Lpc;)V

    iput-object v0, p0, Lpc;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lpc$b;

    invoke-direct {v0, p0}, Lpc$b;-><init>(Lpc;)V

    iput-object v0, p0, Lpc;->g:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpc;->i:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpc;->i:Landroid/widget/ListView;

    goto :goto_1

    :cond_1
    const v1, 0xff0001

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lpc;->k:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const v1, 0x1020004

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpc;->j:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v1, 0xff0002

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpc;->l:Landroid/view/View;

    const v1, 0xff0003

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lpc;->m:Landroid/view/View;

    const v1, 0x102000a

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpc;->i:Landroid/widget/ListView;

    .line 15
    iget-object v1, p0, Lpc;->j:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lpc;->n:Z

    .line 18
    iget-object v0, p0, Lpc;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lpc;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object v0, p0, Lpc;->h:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lpc;->h:Landroid/widget/ListAdapter;

    .line 21
    invoke-virtual {p0, v0}, Lpc;->h(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v0, p0, Lpc;->l:Landroid/view/View;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v0}, Lpc;->i(ZZ)V

    .line 24
    :cond_7
    :goto_2
    iget-object v0, p0, Lpc;->e:Landroid/os/Handler;

    iget-object v1, p0, Lpc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 25
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public h(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lpc;->h:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lpc;->h:Landroid/widget/ListAdapter;

    .line 3
    iget-object v3, p0, Lpc;->i:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-boolean p1, p0, Lpc;->n:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v2, v1}, Lpc;->i(ZZ)V

    :cond_2
    return-void
.end method

.method public final i(ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lpc;->d()V

    .line 2
    iget-object v0, p0, Lpc;->l:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v1, p0, Lpc;->n:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lpc;->n:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 9
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 12
    :goto_0
    iget-object p1, p0, Lpc;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 18
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 20
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 21
    :goto_1
    iget-object p1, p0, Lpc;->l:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lpc;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpc;->e:Landroid/os/Handler;

    iget-object v1, p0, Lpc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpc;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lpc;->n:Z

    .line 4
    iput-object v0, p0, Lpc;->m:Landroid/view/View;

    iput-object v0, p0, Lpc;->l:Landroid/view/View;

    iput-object v0, p0, Lpc;->j:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lpc;->k:Landroid/widget/TextView;

    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lpc;->d()V

    return-void
.end method
